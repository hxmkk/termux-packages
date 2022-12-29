TERMUX_PKG_MAINTAINER="@termux"

TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="X.org void input driver"
TERMUX_PKG_VERSION=1.4.2
TERMUX_PKG_LICENSE=custom
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/driver/xf86-input-void-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=f0d04260b144ae8e6d791252836f972b0930ed7ee5d9daaeb268667807b78cb1
TERMUX_PKG_DEPENDS="xorg-server"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
    export LDFLAGS="${LDFLAGS} -lXFree86"
}
