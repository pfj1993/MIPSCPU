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
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/datomic
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemREN
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemWEN
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/flushed
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemload
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemstore
add wave -noupdate -expand -group {New Group} /system_tb/DUT/CPU/CM/DCACHE/dcif/dmemaddr
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/laststate
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/state
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/nextstate
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/dmemaddr
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/counter
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/counter_EN
add wave -noupdate /system_tb/DUT/CPU/DP/j_inst
add wave -noupdate /system_tb/DUT/CPU/DP/i_inst
add wave -noupdate /system_tb/DUT/CPU/DP/r_inst
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/flush_cnt
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/flush_cnt_en
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/flush_skip
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/dcache
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/dcache_next
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/hit0
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/hit1
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/valid0
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/valid1
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/replace_block
add wave -noupdate /system_tb/DUT/CPU/CM/DCACHE/dirty
add wave -noupdate -expand /system_tb/DUT/CPU/ccif/iwait
add wave -noupdate -expand /system_tb/DUT/CPU/ccif/dwait
add wave -noupdate /system_tb/DUT/CPU/ccif/iREN
add wave -noupdate /system_tb/DUT/CPU/ccif/dREN
add wave -noupdate /system_tb/DUT/CPU/ccif/dWEN
add wave -noupdate /system_tb/DUT/CPU/ccif/iload
add wave -noupdate /system_tb/DUT/CPU/ccif/dload
add wave -noupdate /system_tb/DUT/CPU/ccif/dstore
add wave -noupdate /system_tb/DUT/CPU/ccif/iaddr
add wave -noupdate /system_tb/DUT/CPU/ccif/daddr
add wave -noupdate /system_tb/DUT/CPU/ccif/ramWEN
add wave -noupdate /system_tb/DUT/CPU/ccif/ramREN
add wave -noupdate /system_tb/DUT/CPU/ccif/ramstate
add wave -noupdate /system_tb/DUT/CPU/ccif/ramaddr
add wave -noupdate /system_tb/DUT/CPU/ccif/ramstore
add wave -noupdate /system_tb/DUT/CPU/ccif/ramload
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5872283821 ps} 0}
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
WaveRestoreZoom {0 ps} {2290904 ps}
