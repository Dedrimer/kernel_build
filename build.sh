export PATH=clang/bin:${PATH}
export KBUILD_BUILD_USER="zclkkk"
export KBUILD_BUILD_HOST="Server"
args="                  ARCH=arm64 \
                        O=../out \
                        CC=clang \
                        AR=llvm-ar \
                        NM=llvm-nm \
                        OBJCOPY=llvm-objcopy \
                        OBJDUMP=llvm-objdump \
                        STRIP=llvm-strip \
                        LD=ld.lld \
                        CLANG_TRIPLE=aarch64-linux-gnu- \
                        CROSS_COMPILE=aarch64-linux-gnu- \
                        CROSS_COMPILE_ARM32=arm-linux-gnueabi- "
cd msm-4.14
make ${args} ${BOARD}_defconfig
make -j64 ${args}
