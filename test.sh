#! /bin/bash
if [[ $1 == '-s' ]];then
    asm $2
    sim -t > /dev/null
    make system.sim
else
    asm $1
    sim -t > /dev/null
    make system.wav
    diff memsim.hex memcpu.hex
fi
exit 0