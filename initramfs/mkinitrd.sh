#!/bin/bash

cd work/initramfs
find . | cpio -H newc -o > ../initramfs.cpio
cd ..
cat initramfs.cpio | gzip > initramfs.igz
