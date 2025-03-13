export ANDROID_HOME=.........AndroidSDK
export NDK_VERSION=26.3.11579264
export HOST_TAG=linux-x86_64

export TARGET=aarch64-linux-android
export ANDROID_NDK_HOME="$ANDROID_HOME/ndk/$NDK_VERSION"
export TOOLCHAIN="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/$HOST_TAG"
export API=33
export AR="$TOOLCHAIN/bin/llvm-ar"
export CC="$TOOLCHAIN/bin/$TARGET$API-clang"
export AS="$TOOLCHAIN/bin/$TARGET$API-clang"
export CXX="$TOOLCHAIN/bin/$TARGET$API-clang++"
export LD="$TOOLCHAIN/bin/ld"
export RANLIB="$TOOLCHAIN/bin/llvm-ranlib"
export STRIP="$TOOLCHAIN/bin/llvm-strip"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$TOOLCHAIN/bin"
export CMAKE_TOOLCHAIN_FILE_aarch64_linux_android="$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake"

export CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android33-clang"
export RUSTFLAGS="-C link-arg=-fuse-ld=lld -C link-arg=-lc++_shared"
export ANDROID_ABI=arm64-v8a


echo "$ANDROID_HOME"
echo "$ANDROID_NDK_HOME"

cargo build --target aarch64-linux-android --release  --verbose
