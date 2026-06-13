NASUX_PKG_HOMEPAGE=https://github.com/nasux/nasux-x11
NASUX_PKG_DESCRIPTION="NasUX X11 add-on."
NASUX_PKG_LICENSE="GPL-3.0"
NASUX_PKG_MAINTAINER="Twaik Yont @twaik"
NASUX_PKG_VERSION="1.03.01"
TERMUX_PKG_REVISION=5
NASUX_PKG_SRCURL=https://github.com/nasux/nasux-x11/archive/25c8dbc3e8cbf08c9dd233b29adbe1e3a1df52f4.tar.gz
NASUX_PKG_SHA256=8626aab0900d208f2ca484b5053ae5b952eff55537a4424042a35d6e935c8c04
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_PLATFORM_INDEPENDENT=true
NASUX_PKG_BUILD_IN_SRC=true
NASUX_PKG_DEPENDS="xkeyboard-config"
# We provide a nasux-x11-xfce4 service script, so let's suggest xfce4
TERMUX_PKG_SUGGESTS="xfce4"
TERMUX_PKG_BREAKS="nasux-x11"
TERMUX_PKG_REPLACES="nasux-x11"
TERMUX_PKG_PROVIDES="nasux-x11"

termux_step_make() {
	:
}

termux_step_make_install() {
	# Downloading full JDK to compile 7kb apk seems excessive, let's download a prebuilt.
	local LOADER_URL="https://github.com/nasux/nasux-x11/releases/download/nightly/nasux-x11-nightly-1.03.01-0-any.pkg.tar.xz"
	install -t "$TERMUX_PREFIX/bin" -m 755 nasux-x11 nasux-x11-preference
	mkdir -p "$TERMUX_PREFIX/libexec/nasux-x11"
	wget -qO- "$LOADER_URL" | tar -OJxf - --wildcards "*loader.apk" > "$TERMUX_PREFIX/libexec/nasux-x11/loader.apk"
}

termux_step_post_make_install() {
	# Setup nasux-services scripts
	mkdir -p "$TERMUX_PREFIX/var/service/tx11/log"
	ln -sf "$TERMUX_PREFIX/share/nasux-services/svlogger" "$TERMUX_PREFIX/var/service/tx11/log/run"
	sed -e "s%@TERMUX_PREFIX@%$TERMUX_PREFIX%g" \
		-e "s%@TERMUX_HOME@%$TERMUX_ANDROID_HOME%g" \
		"$TERMUX_PKG_BUILDER_DIR/sv/tx11.run.in" > "$TERMUX_PREFIX/var/service/tx11/run"
	chmod 700 "$TERMUX_PREFIX/var/service/tx11/run"
	touch "$TERMUX_PREFIX/var/service/tx11/down"

	mkdir -p "$TERMUX_PREFIX/var/service/tx11-xfce4/log"
	ln -sf "$TERMUX_PREFIX/share/nasux-services/svlogger" "$TERMUX_PREFIX/var/service/tx11-xfce4/log/run"
	sed "s%@TERMUX_PREFIX@%$TERMUX_PREFIX%g" \
		"$TERMUX_PKG_BUILDER_DIR/sv/tx11-xfce4.run.in" > "$TERMUX_PREFIX/var/service/tx11-xfce4/run"
	chmod 700 "$TERMUX_PREFIX/var/service/tx11-xfce4/run"
	touch "$TERMUX_PREFIX/var/service/tx11-xfce4/down"
}

termux_step_create_debscripts() {
	cat <<- EOF > postinst
		#!${TERMUX_PREFIX}/bin/sh
		chmod -w $TERMUX_PREFIX/libexec/nasux-x11/loader.apk
	EOF

	if [[ "$TERMUX_PACKAGE_FORMAT" == "pacman" ]]; then
		echo "post_install" > postupg
	fi
}
