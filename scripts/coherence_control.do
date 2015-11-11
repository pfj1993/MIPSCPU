onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /coherence_control_tb/CLK
add wave -noupdate /coherence_control_tb/nRST
add wave -noupdate -expand -group ccif -expand /coherence_control_tb/CC/ccif/iwait
add wave -noupdate -expand -group ccif -expand /coherence_control_tb/CC/ccif/dwait
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/iREN
add wave -noupdate -expand -group ccif -expand /coherence_control_tb/CC/ccif/dREN
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/dWEN
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/iload
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/dload
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/dstore
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/iaddr
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/daddr
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ccwait
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ccinv
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ccwrite
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/cctrans
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ccsnoopaddr
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ramWEN
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ramREN
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ramstate
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ramaddr
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ramstore
add wave -noupdate -expand -group ccif /coherence_control_tb/CC/ccif/ramload
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/nRST
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/CLK
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/state
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/next_state
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/master
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/next_master
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/slave
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/fifo_empty
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/fifo_full
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/fifo_wen
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/fifo_ren
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/fifo_out
add wave -noupdate -expand -group coc /coherence_control_tb/CC/COC/fifo_in
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/dcache_addr
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/dcache_data
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/snoopy_addr
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/cctrans
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/ccwrite
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/cache_dWEN
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/cache_dREN
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/ccinv
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/ccwait
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/cache_dwait
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/cache_dload
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/daddr
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/dstore
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/dload
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/dWEN
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/dREN
add wave -noupdate -expand -group bus /coherence_control_tb/CC/bus_if/dwait
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ns} 0}
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
WaveRestoreZoom {0 ns} {105 ns}
