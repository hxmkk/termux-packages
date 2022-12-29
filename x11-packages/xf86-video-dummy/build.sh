TERMUX_PKG_MAINTAINER="@termux"

TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="X.org dummy video driver"
TERMUX_PKG_VERSION=0.4.0
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/driver/xf86-video-dummy-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=bbecddd599d6fbf0e2a40aa4a5baabaa2ea9690521ffc8e9a3c26e1172498197
TERMUX_PKG_DEPENDS="xorg-server"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
    export LDFLAGS="${LDFLAGS} -lXFree86"
}
