TERMUX_ANDROID_BUILD_TOOLS_VERSION=29.0.2
TERMUX_NDK_VERSION_NUM=21
TERMUX_NDK_REVISION=""
TERMUX_NDK_VERSION=$TERMUX_NDK_VERSION_NUM$TERMUX_NDK_REVISION

test -f "$HOME/.termuxrc" && . "$HOME/.termuxrc"

: "${ANDROID_HOME:="${HOME}/lib/android-sdk"}"
: "${NDK:="${HOME}/lib/android-ndk"}"
