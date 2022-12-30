TERMUX_PKG_MAINTAINER="@termux"

TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="X.org dummy video driver"
TERMUX_PKG_VERSION=0.4.0
TERMUX_PKG_LICENSE=custom
TERMUX_PKG_LICENSE_FILE=COPYING
TERMUX_PKG_VERSION=0.5.0
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/driver/xf86-video-fbdev-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=dcc3d85f378022180e437a9ec00a59b6cb7680ff79c40394d695060af2374699
TERMUX_PKG_DEPENDS="xorg-server, libpciaccess"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-pciaccess"

TERMUX_PKG_BLACKLISTED_ARCHES="i686"

termux_step_pre_configure() {
    export LDFLAGS="${LDFLAGS} -L${TERMUX_PREFIX}/lib/xorg/modules -lfb"
    export CFLAGS="${CFLAGS} -DXSERVER_LIBPCIACCESS"
}
