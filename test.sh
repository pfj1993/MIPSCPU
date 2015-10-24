#! /bin/bash
if [[ $1 == '-s' ]];then
    asm $2
    sim -t > /dev/null
    make system.sim
    diff memsim.hex memcpu.hex
else
    asm $1
    sim -t > /dev/null
    make system.wav
fi
exit 0