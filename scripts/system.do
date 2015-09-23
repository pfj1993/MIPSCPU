onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate /system_tb/syif/tbCTRL
add wave -noupdate /system_tb/syif/halt
add wave -noupdate /system_tb/syif/WEN
add wave -noupdate /system_tb/syif/REN
add wave -noupdate /system_tb/syif/addr
add wave -noupdate /system_tb/syif/store
add wave -noupdate /system_tb/syif/load
add wave -noupdate /system_tb/DUT/CPU/DP/negative
add wave -noupdate /system_tb/DUT/CPU/DP/overflow
add wave -noupdate /system_tb/DUT/CPU/DP/zero
add wave -noupdate /system_tb/DUT/CPU/DP/dmemREN
add wave -noupdate /system_tb/DUT/CPU/DP/dmemWEN
add wave -noupdate /system_tb/DUT/CPU/DP/imemREN
add wave -noupdate /system_tb/DUT/CPU/DP/halt
add wave -noupdate /system_tb/DUT/CPU/DP/PC_next
add wave -noupdate /system_tb/DUT/CPU/DP/PC
add wave -noupdate /system_tb/DUT/CPU/DP/out
add wave -noupdate /system_tb/DUT/CPU/DP/portb_mux_out
add wave -noupdate /system_tb/DUT/CPU/DP/ifid
add wave -noupdate /system_tb/DUT/CPU/DP/idex
add wave -noupdate /system_tb/DUT/CPU/DP/exmem
add wave -noupdate /system_tb/DUT/CPU/DP/mem
add wave -noupdate /system_tb/DUT/CPU/DP/ifid_en
add wave -noupdate /system_tb/DUT/CPU/DP/idex_en
add wave -noupdate /system_tb/DUT/CPU/DP/exmem_en
add wave -noupdate /system_tb/DUT/CPU/DP/mem_en
add wave -noupdate /system_tb/DUT/CPU/DP/RWD_out
add wave -noupdate /system_tb/DUT/CPU/DP/j_inst
add wave -noupdate /system_tb/DUT/CPU/DP/i_inst
add wave -noupdate /system_tb/DUT/CPU/DP/r_inst
add wave -noupdate /system_tb/DUT/CPU/DP/signedExt
add wave -noupdate /system_tb/DUT/CPU/DP/zeroExt
add wave -noupdate /system_tb/DUT/CPU/DP/jumpExt
add wave -noupdate /system_tb/DUT/CPU/DP/shamtExt
add wave -noupdate /system_tb/DUT/CPU/DP/luiExt
add wave -noupdate /system_tb/DUT/CPU/DP/PC_plus4
add wave -noupdate /system_tb/DUT/CPU/DP/PC_branch
add wave -noupdate /system_tb/DUT/CPU/DP/PC_reg
add wave -noupdate /system_tb/DUT/CPU/DP/PC_jump
add wave -noupdate /system_tb/DUT/CPU/DP/halt_reg
add wave -noupdate /system_tb/DUT/CPU/DP/IntoLUI
add wave -noupdate /system_tb/DUT/CPU/DP/IntoMem
add wave -noupdate /system_tb/DUT/CPU/DP/extended_imm
add wave -noupdate /system_tb/DUT/CPU/DP/PC_out
add wave -noupdate /system_tb/DUT/CPU/DP/RF/register
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16943 ps} 0}
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
WaveRestoreZoom {0 ps} {226117 ps}
