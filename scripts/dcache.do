onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dcache_tb/CLK
add wave -noupdate /dcache_tb/nRST
add wave -noupdate /dcache_tb/PROG/dcif/halt
add wave -noupdate /dcache_tb/PROG/dcif/ihit
add wave -noupdate /dcache_tb/PROG/dcif/imemREN
add wave -noupdate /dcache_tb/PROG/dcif/imemload
add wave -noupdate /dcache_tb/PROG/dcif/imemaddr
add wave -noupdate /dcache_tb/PROG/dcif/dhit
add wave -noupdate /dcache_tb/PROG/dcif/datomic
add wave -noupdate /dcache_tb/PROG/dcif/dmemREN
add wave -noupdate /dcache_tb/PROG/dcif/dmemWEN
add wave -noupdate /dcache_tb/PROG/dcif/flushed
add wave -noupdate /dcache_tb/PROG/dcif/dmemload
add wave -noupdate /dcache_tb/PROG/dcif/dmemstore
add wave -noupdate /dcache_tb/PROG/dcif/dmemaddr
add wave -noupdate /dcache_tb/PROG/ccif/dwait
add wave -noupdate /dcache_tb/PROG/ccif/dREN
add wave -noupdate /dcache_tb/PROG/ccif/dWEN
add wave -noupdate /dcache_tb/PROG/ccif/dload
add wave -noupdate /dcache_tb/PROG/ccif/dstore
add wave -noupdate /dcache_tb/PROG/ccif/daddr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {173 ns} 0}
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
WaveRestoreZoom {0 ns} {1 us}
