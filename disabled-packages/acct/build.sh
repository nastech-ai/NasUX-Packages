# Not making sense on NasUX which is essentially a single-user environment.
NASUX_PKG_HOMEPAGE=https://savannah.gnu.org/projects/acct/
NASUX_PKG_DESCRIPTION="GNU Accounting Utilities"
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="@nastech-ai"
NASUX_PKG_VERSION=6.6.4
NASUX_PKG_SRCURL=https://ftp.gnu.org/gnu/acct/acct-${NASUX_PKG_VERSION}.tar.gz
NASUX_PKG_SHA256=4c15bf2b58b16378bcc83f70e77d4d40ab0b194acf2ebeefdb507f151faa663f

termux_step_pre_configure() {
	autoreconf -fi
}

termux_step_post_massage() {
	mkdir -p ./var/account
}
