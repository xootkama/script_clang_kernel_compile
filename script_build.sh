#!/usr/bin/bash 

if [[ -d "out" ]]
then 
cd out && make clean && make distclean && make mrproper && cd  ..
else 
  mkdir -p out
  fi
  
  make O=out ARCH=arm64 RMX1901_defconfig

PATH="/media/theglitchh/hercules/mystuff/tools/proton-clang/bin:$PATH" \
 
  make                O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
                      -j8
                      
                      