#! /bin/bash
asm $1
sim -t $1 > /dev/null
make system.wav
exit 0