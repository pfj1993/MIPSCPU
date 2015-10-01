onerror {resume}
quietly virtual function -install /system_tb/DUT/CPU/DP/BP -env /system_tb/DUT/CPU/DP { &{/system_tb/DUT/CPU/DP/BP/target_add, /system_tb/DUT/CPU/DP/BP/BTB, /system_tb/DUT/CPU/DP/BP/bpif/br }} bp
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate /system_tb/DUT/CPU/DP/dpif/dhit
add wave -noupdate /system_tb/DUT/CPU/DP/dpif/ihit
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bp
add wave -noupdate /system_tb/DUT/CPU/DP/br
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bpif/index_O
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bpif/index_I
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bpif/index_update
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bpif/br_taken
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bpif/br_target_O
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bpif/br_target_I
add wave -noupdate /system_tb/DUT/CPU/DP/BP/bpif/predict
add wave -noupdate /system_tb/DUT/CPU/DP/PC
add wave -noupdate /system_tb/DUT/CPU/DP/ifid
add wave -noupdate /system_tb/DUT/CPU/DP/idex
add wave -noupdate /system_tb/DUT/CPU/DP/exmem
add wave -noupdate /system_tb/DUT/CPU/DP/mem
add wave -noupdate /system_tb/DUT/CPU/DP/j_inst
add wave -noupdate /system_tb/DUT/CPU/DP/i_inst
add wave -noupdate /system_tb/DUT/CPU/DP/r_inst
add wave -noupdate /system_tb/DUT/CPU/DP/branchExt
add wave -noupdate /system_tb/DUT/CPU/DP/PC_src
add wave -noupdate /system_tb/DUT/CPU/DP/PC_next
add wave -noupdate /system_tb/DUT/CPU/DP/predict_fail
add wave -noupdate /system_tb/DUT/CPU/DP/huif/forwarda_src
add wave -noupdate /system_tb/DUT/CPU/DP/huif/forwardb_src
add wave -noupdate /system_tb/DUT/CPU/DP/huif/stall
add wave -noupdate /system_tb/DUT/CPU/DP/huif/memadd_forward
add wave -noupdate /system_tb/DUT/CPU/DP/RF/register
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/a
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/b
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/aluop
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1273957 ps} 0}
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
WaveRestoreZoom {1230241 ps} {1330265 ps}
