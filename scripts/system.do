onerror {resume}
quietly virtual function -install /system_tb/DUT/CPU/DP/BP -env /system_tb/DUT/CPU/DP { &{/system_tb/DUT/CPU/DP/BP/target_add, /system_tb/DUT/CPU/DP/BP/BTB, /system_tb/DUT/CPU/DP/BP/bpif/br }} bp
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/DUT/CPUCLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/halt
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/ihit
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/imemREN
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/imemload
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/imemaddr
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dhit
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemREN
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemWEN
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/flushed
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemload
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemstore
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemaddr
add wave -noupdate -expand -group dCache /system_tb/DUT/CPU/CM/DCACHE/laststate
add wave -noupdate -expand -group dCache /system_tb/DUT/CPU/CM/DCACHE/state
add wave -noupdate -expand -group dCache /system_tb/DUT/CPU/CM/DCACHE/nextstate
add wave -noupdate -expand -group dCache -radix unsigned /system_tb/DUT/CPU/CM/DCACHE/counter
add wave -noupdate -expand -group dCache /system_tb/DUT/CPU/CM/DCACHE/counter_EN
add wave -noupdate -expand -group Icache /system_tb/DUT/CPU/CM/ICACHE/state
add wave -noupdate -expand -group Icache /system_tb/DUT/CPU/CM/ICACHE/nextstate
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1679547167 ps} 0}
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
WaveRestoreZoom {1679363642 ps} {1681654546 ps}
