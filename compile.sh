export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=arm-linux-androideabi-
export PATH=$PATH:~/android/ndk/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin

make -j8

cp boot.img.bak boot.img
abootimg -u boot.img -k arch/arm/boot/zImage -c "bootsize=6064128"
