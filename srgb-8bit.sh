#!/bin/bash

identify -format '%f %[depth]-bit %[colorspace]\n' *.png | grep '16-bit\|Gray' | cut -d' ' -f1 | xargs -i convert {} -depth 8 -colorspace srgb -define png:color-type=6 -define png:bit-depth=8 {}

exit 0

