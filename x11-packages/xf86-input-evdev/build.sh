TERMUX_PKG_MAINTAINER="@termux"

TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="X.org evdev input driver"
TERMUX_PKG_VERSION=2.10.6
TERMUX_PKG_LICENSE=custom
TERMUX_PKG_LICENSE_FILE=COPYING
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/driver/xf86-input-evdev-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=8726073e81861bc7b2321e76272cbdbd33c7e1a121535a9827977265b9033ec0
TERMUX_PKG_DEPENDS="libevdev, mtdev, xorg-server"

TERMUX_PKG_BLACKLISTED_ARCHES="i686"

termux_step_pre_configure() {
    autoreconf -if
}
