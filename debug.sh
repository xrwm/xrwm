aapt=/nix/store/1nimmygdrwck2wplchmrc7i685yj2r59-android-sdk-env/share/android-sdk/build-tools/29.0.3/aapt
jarsigner=/nix/store/b1pyz8g6qmm983frhpd2q3i6jzj2n6ri-openjdk-11.0.12+7/lib/openjdk/bin/jarsigner

rm -rf lib/arm64-v8a
mkdir -p lib/arm64-v8a

cd lib/arm64-v8a

cp -f ../../src/oculus/vr-api/Libs/Android/arm64-v8a/Debug/libvrapi.so libvrapi.so

cp -f $(pkg-config --variable=libdir wayland-server)/libwayland-server.so.0 libwayland-server.so
sudo patchelf --set-soname libwayland-server.so libwayland-server.so
# sudo patchelf --remove-rpath libwayland-server.so
# sudo patchelf --remove-needed ld-linux-aarch64.so.1 libwayland-server.so
sudo patchelf --replace-needed ld-linux-aarch64.so.1 /system/bin/linker64 libwayland-server.so
sudo patchelf --replace-needed libffi.so.8 libffi.so libwayland-server.so
sudo patchelf --replace-needed libc.so.6 libc.so libwayland-server.so

cp -f $(pkg-config --variable=libdir libffi)/libffi.so.8.1.0 libffi.so
sudo patchelf --set-soname libffi.so libffi.so
# sudo patchelf --remove-rpath libffi.so
# sudo patchelf --remove-needed ld-linux-aarch64.so.1 libffi.so
sudo patchelf --replace-needed ld-linux-aarch64.so.1 /system/bin/linker64 libffi.so
sudo patchelf --replace-needed libc.so.6 libc.so libffi.so

cd ../..

# -f cp $(pkg-config --variable=libdir pixman-1)/libpixman-1.so.0.38.4 lib/arm64-v8a/libpixman-1.so.0.38.4
# -f cp $(pkg-config --variable=libdir wlroots)/libwlroots.so.10 lib/arm64-v8a/libwlroots.so.10
# -f cp $(pkg-config --variable=libdir xkbcommon)/libxkbcommon.so.0 lib/arm64-v8a/libxkbcommon.so.0
# -f cp /nix/store/k4klfav0z0a09b711cqzbrcg6hyp94p8-android-sdk-env/share/android-sdk/ndk/21.4.7075529/platforms/android-29/arch-arm64/usr/lib/libc.so lib/arm64-v8a/libc.so.6
# -f cp $AARCH_LIBC/libc.so.6 lib/arm64-v8a/libc.so.6
$aapt add -v xrwm.apk lib/arm64-v8a/*

$jarsigner -sigalg SHA1withRSA -digestalg SHA1 -verbose -keystore .build_config/android.keystore -storepass password xrwm.apk default
