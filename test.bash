#! /bin/bash
make clean
asm $1
sim -t > /dev/null
make system.wav
exit 0