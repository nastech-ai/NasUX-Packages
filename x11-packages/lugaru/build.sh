NASUX_PKG_HOMEPAGE=https://osslugaru.gitlab.io
NASUX_PKG_DESCRIPTION="Lugaru HD, free and open source ninja rabbit fighting game"
NASUX_PKG_LICENSE="GPL-2.0"
NASUX_PKG_MAINTAINER="@IntinteDAO"
NASUX_PKG_VERSION="1.2"
NASUX_PKG_SRCURL=https://gitlab.com/osslugaru/lugaru/-/archive/${NASUX_PKG_VERSION}/lugaru-${NASUX_PKG_VERSION}.tar.bz2
NASUX_PKG_SHA256=b165ff8948f634fc788dc29b9269746340a290fc2101d843e270190a49c2ef00
NASUX_PKG_DEPENDS="glu, lugaru-data, openal-soft, sdl2 | sdl2-compat"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_GROUPS="games"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DSYSTEM_INSTALL=ON
-DCMAKE_POLICY_VERSION_MINIMUM=3.5
"

termux_step_pre_configure() {
	export LDFLAGS+=" -Wl,--no-as-needed,-lOpenSLES,--as-needed"
}
