TERMUX_PKG_HOMEPAGE=https://github.com/noncombatant/robotfindskitten
TERMUX_PKG_DESCRIPTION="A very fun adventure game for robots and humans"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
_COMMIT=58155f8d3459e30ad393e2d7c23ad0c8eeb96df2
TERMUX_PKG_VERSION=2022.05.21
TERMUX_PKG_SRCURL=git+https://github.com/noncombatant/robotfindskitten
TERMUX_PKG_GIT_BRANCH=master
TERMUX_PKG_DEPENDS="ncurses"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="-e"
TERMUX_PKG_GROUPS="games"

termux_step_post_get_source() {
	git fetch --unshallow
	git checkout $_COMMIT

	local version="$(git log -1 --format=%cs | sed 's/-/./g')"
	if [ "$version" != "$TERMUX_PKG_VERSION" ]; then
		echo -n "ERROR: The specified version \"$TERMUX_PKG_VERSION\""
		echo " is different from what is expected to be: \"$version\""
		return 1
	fi
}

termux_step_pre_configure() {
	LDFLAGS+=" -lncursesw"
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin robotfindskitten
}
