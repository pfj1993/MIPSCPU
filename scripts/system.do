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
add wave -noupdate /system_tb/DUT/CPU/DP/negative
add wave -noupdate /system_tb/DUT/CPU/DP/overflow
add wave -noupdate /system_tb/DUT/CPU/DP/zero
add wave -noupdate /system_tb/DUT/CPU/DP/dmemREN
add wave -noupdate /system_tb/DUT/CPU/DP/dmemWEN
add wave -noupdate /system_tb/DUT/CPU/DP/imemREN
add wave -noupdate /system_tb/DUT/CPU/DP/halt
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/iwait
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/dwait
add wave -noupdate -expand /system_tb/DUT/CPU/CC/ccif/iREN
add wave -noupdate -expand /system_tb/DUT/CPU/CC/ccif/dREN
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/dWEN
add wave -noupdate /system_tb/syif/load
add wave -noupdate -expand /system_tb/DUT/CPU/CC/ccif/iload
add wave -noupdate /system_tb/DUT/CPU/DP/dpif/imemload
add wave -noupdate -expand /system_tb/DUT/CPU/CC/ccif/dload
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/dstore
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/iaddr
add wave -noupdate -expand /system_tb/DUT/CPU/CC/ccif/daddr
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ccwait
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ccinv
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ccwrite
add wave -noupdate /system_tb/DUT/CPU/DP/dpif/ihit
add wave -noupdate /system_tb/DUT/CPU/DP/dpif/dhit
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/cctrans
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ccsnoopaddr
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ramWEN
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ramREN
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ramstate
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ramaddr
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ramstore
add wave -noupdate /system_tb/DUT/CPU/CC/ccif/ramload
add wave -noupdate /system_tb/DUT/CPU/DP/PC_next
add wave -noupdate /system_tb/DUT/CPU/DP/PC
add wave -noupdate /system_tb/DUT/CPU/DP/out
add wave -noupdate /system_tb/DUT/CPU/DP/portb_mux_out
add wave -noupdate /system_tb/DUT/CPU/DP/ifid
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/opcode
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/funct
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/PC_src
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/Ext_src
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/LUI_src
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/portb_src
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/RegDst
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/ALU_op
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/MemWrite
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/MemRead
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/MemtoReg
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/check_over
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/mem_halt
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/PC_EN
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/bra
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/WEN
add wave -noupdate /system_tb/DUT/CPU/DP/CLK
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/wsel
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rsel1
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rsel2
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/wdat
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rdat1
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/rdat2
add wave -noupdate /system_tb/DUT/CPU/DP/cuif/rw_flag
add wave -noupdate /system_tb/DUT/CPU/DP/i_inst
add wave -noupdate /system_tb/DUT/CPU/DP/idex
add wave -noupdate /system_tb/DUT/CPU/DP/exmem
add wave -noupdate -expand /system_tb/DUT/CPU/DP/mem
add wave -noupdate /system_tb/DUT/CPU/DP/ifid_en
add wave -noupdate /system_tb/DUT/CPU/DP/idex_en
add wave -noupdate /system_tb/DUT/CPU/DP/exmem_en
add wave -noupdate /system_tb/DUT/CPU/DP/mem_en
add wave -noupdate /system_tb/DUT/CPU/DP/RWD_out
add wave -noupdate /system_tb/DUT/CPU/DP/j_inst
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
add wave -noupdate -expand /system_tb/DUT/CPU/DP/RF/register
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/a
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/b
add wave -noupdate /system_tb/DUT/CPU/DP/rfif/wsel
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/aluop
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/negative
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/overflow
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/zero
add wave -noupdate /system_tb/DUT/CPU/DP/ALU/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {160135 ps} 0}
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
WaveRestoreZoom {143469 ps} {235711 ps}
