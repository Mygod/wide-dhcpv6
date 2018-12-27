BINUTILS_CHROMIUM_VERSION=release-R48-7647.B
BINUTILS_VERSION=binutils-2.25
GMP_VERSION=gmp-6.1.2
MPFR_VERSION=mpfr-3.1.5
MPC_VERSION=mpc-1.0.3
ISL_VERSION=isl-0.18
CLOOG_VERSION=cloog-0.18.4
GCC_VERSION=gcc-4.9.4
GLIBC_VERSION=glibc-2.23
LINUX_VERSION=linux-3.18
CROS_HOST=x86_64-linux-gnu
CROS_KERNEL_ARCH=arm
CROS_PKG_ARCH=armv7l
CROS_TARGET=armv7l-cros-linux-gnueabihf
CROS_CROSS_GCC_OPT="--with-arch=armv7-a --with-tune=cortex-a15 --with-fpu=neon --with-float=hard"
CROS_CROSS_LIBC_OPT="libc_cv_forced_unwind=yes"
CROS_NATIVE_GCC_OPT="--with-arch=armv7-a --with-tune=cortex-a15 --with-fpu=neon --with-float=hard"
CROS_NATIVE_LIBC_OPT=""
CROS_HOST_PREFIX=/opt/cross
CROS_HOST_DEST=/dist
CROS_TARGET_PREFIX=/usr/local
CROS_TARGET_LIB="${CROS_TARGET_PREFIX}/lib"
CROS_NATIVE_LDFLAGS="-L${CROS_HOST_PREFIX}/${CROS_TARGET}${CROS_TARGET_LIB} -Wl,-rpath,${CROS_TARGET_LIB}"
CROS_CORES=${NPROCS:-8}
cd /work
./configure --prefix=${CROS_TARGET_PREFIX} --build=${CROS_HOST} --host=${CROS_TARGET} ac_cv_func_setpgrp_void=no && make EXTRA_CFLAGS=-D_GNU_SOURCE
