onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iwait
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dwait
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dWEN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iload
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dload
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/dstore
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/iaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/daddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccwait
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccinv
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccwrite
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/cctrans
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ccsnoopaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramWEN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramstate
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramstore
add wave -noupdate -group ccif /system_tb/DUT/CPU/ccif/ramload
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/state
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/next_state
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/master
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/next_master
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/slave
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/fifo_empty
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/fifo_full
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/fifo_wen
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/fifo_ren
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/fifo_out
add wave -noupdate -expand -group coh /system_tb/DUT/CPU/CC/COC/fifo_in
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/dcache_addr
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/dcache_data
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/snoopy_addr
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/cctrans
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/ccwrite
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/cache_dWEN
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/cache_dREN
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/ccinv
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/ccwait
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/cache_dwait
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/cache_dload
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/daddr
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/dstore
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/dload
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/dWEN
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/dREN
add wave -noupdate -group bus /system_tb/DUT/CPU/CC/COC/bus_if/dwait
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/halt
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/ihit
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/imemREN
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/imemload
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/imemaddr
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/dhit
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/datomic
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/dmemREN
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/dmemWEN
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/flushed
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/dmemload
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/dmemstore
add wave -noupdate -group dpif1 /system_tb/DUT/CPU/DP1/dpif/dmemaddr
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/halt
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/ihit
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/imemREN
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/imemload
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/imemaddr
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/dhit
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/datomic
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/dmemREN
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/dmemWEN
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/flushed
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/dmemload
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/dmemstore
add wave -noupdate -group dpic0 /system_tb/DUT/CPU/dcif0/dmemaddr
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/CLK
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/nRST
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_in
add wave -noupdate -expand -group FIFO -expand /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_out
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_WEN
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_REN
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_empty
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_full
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/can_push
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/can_pop
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/counter
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/next_counter
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/rd_ptr
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/wr_ptr
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/next_rd_ptr
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/next_wr_ptr
add wave -noupdate -expand -group FIFO -expand /system_tb/DUT/CPU/CC/COC/FIFO/memory
add wave -noupdate -expand -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/memory_next
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/CLK
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/nRST
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/ifid
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/idex
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/exmem
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/mem
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/j_inst
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/i_inst
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/r_inst
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_en
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/negative
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/overflow
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/zero
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/halt
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_next
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/out
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/portb_mux_out
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/forward_a
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/forward_b
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/memadd_forward
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_src
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_plus4
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_branch
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_reg
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_jump
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/ifid_en
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/idex_en
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/exmem_en
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/mem_en
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/ifid_flush
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/idex_flush
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/exmem_flush
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/oneState_flush
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/threeStates_flush
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/predict_fail
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/RWD_out
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/IntoMem
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/IntoLUI
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/br
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/signedExt
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/zeroExt
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/shamtExt
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/luiExt
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/branchExt
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/jumpExt
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/pc_temp
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/PC_out
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/extended_imm
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/CLK
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/nRST
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/ifid
add wave -noupdate -group dp1 -expand /system_tb/DUT/CPU/DP1/idex
add wave -noupdate -group dp1 -expand /system_tb/DUT/CPU/DP1/exmem
add wave -noupdate -group dp1 -expand /system_tb/DUT/CPU/DP1/mem
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/j_inst
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/i_inst
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/r_inst
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_en
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/negative
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/overflow
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/zero
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/halt
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_next
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/out
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/portb_mux_out
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/forward_a
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/forward_b
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/memadd_forward
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_src
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_plus4
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_branch
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_reg
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_jump
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/ifid_en
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/idex_en
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/exmem_en
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/mem_en
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/ifid_flush
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/idex_flush
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/exmem_flush
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/oneState_flush
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/threeStates_flush
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/predict_fail
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/RWD_out
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/IntoMem
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/IntoLUI
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/br
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/signedExt
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/zeroExt
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/shamtExt
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/luiExt
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/branchExt
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/jumpExt
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/pc_temp
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/PC_out
add wave -noupdate -group dp1 /system_tb/DUT/CPU/DP1/extended_imm
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/laststate
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/state
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/nextstate
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/returnstate
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/dmemaddr
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/last_dmemaddr
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/snoopaddr
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/atomic_faild
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/address_lock
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/snoopy_set
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/next_snoopy_set
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/go_snoopy
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/last_address
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/last_replace_block
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/flush_cnt
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/flush_cnt_en
add wave -noupdate -group dcache0 -expand /system_tb/DUT/CPU/DCACHE0/dcache
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/dcache_next
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/datomic_reply
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/WB_buffer_data
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/WB_buffer_addr
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/WB_addr
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/WB_data
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/WB
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/write_done
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/hit0
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/hit1
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/replace_block
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/dirty
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/valid
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/latch
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/empty
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/inv
add wave -noupdate -group dcache0 /system_tb/DUT/CPU/DCACHE0/write_pass
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/laststate
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/state
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/nextstate
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/returnstate
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/dmemaddr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/last_dmemaddr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/snoopaddr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/atomic_faild
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/address_lock
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/snoopy_set
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/next_snoopy_set
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/go_snoopy
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/last_address
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/last_replace_block
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/flush_cnt
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/flush_cnt_en
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/dcache
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/dcache_next
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/datomic_reply
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/WB_buffer_data
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/WB_buffer_addr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/WB_addr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/WB_data
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/WB
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/write_done
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/hit0
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/hit1
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/replace_block
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/dirty
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/valid
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/latch
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/empty
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/inv
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/DCACHE1/write_pass
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {363860274 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 175
configure wave -valuecolwidth 171
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
WaveRestoreZoom {363480576 ps} {363826336 ps}
