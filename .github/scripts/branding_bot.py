#!/usr/bin/env python3
"""NasTech Branding Bot — auto-fix Termux branding in nastech-ai/NasUX-Packages."""
import os
import re

ROOT    = os.getcwd()
OUTPUT  = os.environ.get("GITHUB_OUTPUT", "/dev/null")
SUMMARY = os.environ.get("GITHUB_STEP_SUMMARY", "/dev/null")

# Paths to scan (GitHub meta + sample only).
# Build-system internals (TERMUX_PKG_*, build-package.sh, scripts/build/)
# are intentionally excluded — they are the build-system convention.
SCAN_DIRS = [".github", "sample"]
SCAN_EXTS = {".yml", ".yaml", ".sh", ".md", ".py", ".txt"}

EXCLUDE_SUBSTRINGS = [
    "scripts/build/", "scripts/properties", "build-package.sh",
    "build-all.sh", "scripts/generate-", "scripts/lint-",
    "scripts/setup-", "scripts/buildorder", "scripts/check-",
    "scripts/run-docker", "scripts/update-", "scripts/free-space",
    "scripts/list-", "branding_bot.py",   # don't fix the bot itself
]

# Auto-fix rules: (regex_pattern, replacement_string, human_label)
FIXES = [
    (
        r"github\.repository\s*==\s*['\"]termux/termux-packages['\"]",
        "github.repository == 'nastech-ai/NasUX-Packages'",
        "repo guard condition",
    ),
    (r"Termux Github Actions", "NasTech Bot",                        "bot git name"),
    (r"contact@termux\.dev",   "nastech-bot@users.noreply.github.com","bot git email"),
    (r"secrets\.TERMUXBOT2_TOKEN", "secrets.NASTECH_BOT_TOKEN",      "bot secret name"),
    (r"https://termux\.dev/donate",
     "https://github.com/sponsors/nastech-ai",                        "funding URL"),
    (
        r"Bootstrap archives for Termux application",
        "Bootstrap archives for NasUX application",
        "bootstrap release title",
    ),
    (r"ghcr\.io/termux/package-builder",
     "ghcr.io/nastech-ai/nasux-package-builder",                      "GHCR image name"),
    (r"tag termux/package-builder",
     "tag nastech-ai/nasux-package-builder",                           "Docker tag command"),
    (
        r"users/termux/packages/container/package-builder",
        "users/nastech-ai/packages/container/nasux-package-builder",
        "GHCR API path",
    ),
    (
        'TERMUX_PKG_MAINTAINER="@termux"',
        'TERMUX_PKG_MAINTAINER="@nastech-ai"',
        "sample maintainer",
    ),
]

# Violations that need manual review — cannot safely auto-fix
MANUAL_PATTERNS = [
    (r"@termux\.dev",                                    "Termux email domain"),
    (r"termux\.dev(?!/donate)",                          "termux.dev URL"),
    (r"discord\.gg/HXpF69X",                            "Termux Discord invite"),
    (r"t\.me/termux",                                    "Termux Telegram"),
    (r"github\.com/termux/termux-packages/discussions",  "Termux discussions link"),
    (r"--assignee\s+['\"]?thunder-coding['\"]?",         "Termux assignee"),
    (r"username:\s*grimler",                             "Termux Docker Hub username"),
]


def should_skip(path: str) -> bool:
    rel = os.path.relpath(path, ROOT)
    return any(s in rel for s in EXCLUDE_SUBSTRINGS)


fixes_log: list[str]      = []
violations_log: list[str] = []


def scan_and_fix(path: str) -> None:
    if should_skip(path):
        return
    _, ext = os.path.splitext(path)
    if ext not in SCAN_EXTS:
        return
    try:
        with open(path, "r", encoding="utf-8", errors="replace") as fh:
            original = fh.read()
    except Exception:
        return

    content = original
    rel = os.path.relpath(path, ROOT)

    for pattern, replacement, label in FIXES:
        new, n = re.subn(pattern, replacement, content)
        if n:
            content = new
            fixes_log.append("  [{}] {}  ({}x)".format(label, rel, n))
            print("  fix: {} -- {}".format(label, rel))

    if content != original:
        with open(path, "w", encoding="utf-8") as fh:
            fh.write(content)

    for pattern, label in MANUAL_PATTERNS:
        hits = re.findall(pattern, content)
        if hits:
            violations_log.append(
                "- **{}** in `{}` ({} match(es))".format(label, rel, len(hits))
            )


for scan_dir in SCAN_DIRS:
    full = os.path.join(ROOT, scan_dir)
    if os.path.isfile(full):
        scan_and_fix(full)
    elif os.path.isdir(full):
        for dirpath, dirs, files in os.walk(full):
            dirs[:] = [d for d in dirs if d != ".git"]
            for fname in files:
                scan_and_fix(os.path.join(dirpath, fname))

print("Result: {} auto-fix(es), {} manual violation(s)".format(
    len(fixes_log), len(violations_log)
))

# Write outputs for GitHub Actions step conditionals
with open(OUTPUT, "a") as fh:
    fh.write("fixes_count={}\n".format(len(fixes_log)))
    fh.write("violations_count={}\n".format(len(violations_log)))

# Write violations report
with open("/tmp/violations.md", "w") as fh:
    if violations_log:
        fh.write("## Branding Violations - Manual Review Required\n\n")
        fh.write(
            "The NasTech Branding Bot found references that could not be auto-fixed.\n\n"
        )
        for v in violations_log:
            fh.write(v + "\n")
        fh.write("\n---\n*NasTech Branding Bot - nastech-ai/NasUX-Packages*\n")
    else:
        fh.write("No manual violations found.\n")

# Write step summary
with open(SUMMARY, "a") as fh:
    fh.write("## NasTech Branding Bot\n\n")
    fh.write("| | |\n|---|---|\n")
    fh.write("| Repo | `nastech-ai/NasUX-Packages` |\n")
    fh.write("| Auto-fixes applied | **{}** |\n".format(len(fixes_log)))
    fh.write("| Manual violations  | **{}** |\n".format(len(violations_log)))
    if fixes_log:
        fh.write("\n### Auto-fixes\n```\n")
        fh.write("\n".join(fixes_log))
        fh.write("\n```\n")
    if violations_log:
        fh.write("\n### Manual violations\n")
        for v in violations_log:
            fh.write(v + "\n")
