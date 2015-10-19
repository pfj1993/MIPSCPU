onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /icache_tb/CLK
add wave -noupdate /icache_tb/nRST
add wave -noupdate /icache_tb/PROG/dcif/halt
add wave -noupdate /icache_tb/PROG/dcif/ihit
add wave -noupdate /icache_tb/PROG/#ublk#502948#53/testnum
add wave -noupdate /icache_tb/PROG/dcif/imemREN
add wave -noupdate /icache_tb/PROG/dcif/imemload
add wave -noupdate /icache_tb/PROG/dcif/imemaddr
add wave -noupdate /icache_tb/PROG/dcif/dhit
add wave -noupdate -expand /icache_tb/PROG/ccif/iwait
add wave -noupdate /icache_tb/PROG/ccif/dwait
add wave -noupdate /icache_tb/PROG/ccif/iREN
add wave -noupdate /icache_tb/PROG/ccif/dREN
add wave -noupdate /icache_tb/PROG/ccif/dWEN
add wave -noupdate /icache_tb/PROG/ccif/iload
add wave -noupdate /icache_tb/PROG/ccif/dload
add wave -noupdate /icache_tb/PROG/ccif/dstore
add wave -noupdate -expand /icache_tb/PROG/ccif/iaddr
add wave -noupdate /icache_tb/PROG/ccif/daddr
add wave -noupdate /icache_tb/PROG/ccif/ramWEN
add wave -noupdate /icache_tb/PROG/ccif/ramREN
add wave -noupdate /icache_tb/PROG/ccif/ramstate
add wave -noupdate /icache_tb/PROG/ccif/ramaddr
add wave -noupdate /icache_tb/PROG/ccif/ramstore
add wave -noupdate /icache_tb/PROG/ccif/ramload
add wave -noupdate /icache_tb/DUT/CLK
add wave -noupdate /icache_tb/DUT/nRST
add wave -noupdate /icache_tb/DUT/icache
add wave -noupdate /icache_tb/DUT/icache_next
add wave -noupdate /icache_tb/DUT/target
add wave -noupdate /icache_tb/DUT/state
add wave -noupdate /icache_tb/DUT/nextstate
add wave -noupdate /icache_tb/DUT/imemaddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {53989 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {152250 ps}
