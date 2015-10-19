onerror {resume}
quietly virtual function -install /system_tb/DUT/CPU/DP/BP -env /system_tb/DUT/CPU/DP { &{/system_tb/DUT/CPU/DP/BP/target_add, /system_tb/DUT/CPU/DP/BP/BTB, /system_tb/DUT/CPU/DP/BP/bpif/br }} bp
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/DUT/CPUCLK
add wave -noupdate /system_tb/nRST
add wave -noupdate /system_tb/DUT/CPU/DP/dpif/dhit
add wave -noupdate /system_tb/DUT/CPU/DP/dpif/ihit
add wave -noupdate /system_tb/DUT/CPU/DP/ifid
add wave -noupdate {/system_tb/DUT/CPU/ccif/iwait[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/dwait[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/iREN[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/dREN[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/dWEN[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/iload[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/dload[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/dstore[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/iaddr[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/daddr[0]}
add wave -noupdate {/system_tb/DUT/CPU/ccif/ccwait[0]}
add wave -noupdate /system_tb/DUT/CPU/ccif/ramWEN
add wave -noupdate /system_tb/DUT/CPU/ccif/ramREN
add wave -noupdate /system_tb/DUT/CPU/ccif/ramaddr
add wave -noupdate /system_tb/DUT/CPU/ccif/ramstore
add wave -noupdate /system_tb/DUT/CPU/ccif/ramload
add wave -noupdate /system_tb/DUT/CPU/CM/ICACHE/CLK
add wave -noupdate /system_tb/DUT/CPU/CM/ICACHE/nRST
add wave -noupdate /system_tb/DUT/CPU/CM/ICACHE/icache
add wave -noupdate /system_tb/DUT/CPU/CM/ICACHE/target
add wave -noupdate /system_tb/DUT/CPU/CM/ICACHE/state
add wave -noupdate /system_tb/DUT/CPU/CM/ICACHE/nextstate
add wave -noupdate /system_tb/DUT/CPU/CM/ICACHE/imemaddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {60000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 162
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {150 ps} {63150 ps}
