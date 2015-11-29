onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /system_tb/CLK
add wave -noupdate /system_tb/nRST
add wave -noupdate -group ccif -expand /system_tb/DUT/CPU/CM0/ccif/iwait
add wave -noupdate -group ccif -expand /system_tb/DUT/CPU/CM0/ccif/dwait
add wave -noupdate -group ccif -expand /system_tb/DUT/CPU/CM0/ccif/iREN
add wave -noupdate -group ccif -expand /system_tb/DUT/CPU/CM0/ccif/dREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/dWEN
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/iload
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/dload
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/dstore
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/iaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/daddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ccwait
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ccinv
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ccwrite
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/cctrans
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ccsnoopaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ramWEN
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ramREN
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ramstate
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ramaddr
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ramstore
add wave -noupdate -group ccif /system_tb/DUT/CPU/CM0/ccif/ramload
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/state
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/next_state
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/master
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/next_master
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/slave
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/fifo_empty
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/fifo_full
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/fifo_wen
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/fifo_ren
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/fifo_out
add wave -noupdate -group coh /system_tb/DUT/CPU/CC/COC/fifo_in
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
add wave -noupdate -expand -group dcache0 -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/LM/addr
add wave -noupdate -expand -group dcache0 -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/LM/valid
add wave -noupdate -expand -group dcache0 -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/lmif/addr_cpu
add wave -noupdate -expand -group dcache0 -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/lmif/addr_bus
add wave -noupdate -expand -group dcache0 -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/lmif/write_valid
add wave -noupdate -expand -group dcache0 -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/lmif/update
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/laststate
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/state
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/nextstate
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/dmemaddr
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/last_dmemaddr
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/snoopaddr
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/address_lock
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/snoopy_set
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/next_snoopy_set
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/last_address
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/last_replace_block
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/flush_cnt
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/flush_cnt_en
add wave -noupdate -expand -group dcache0 -expand -subitemconfig {{/system_tb/DUT/CPU/CM0/DCACHE/dcache[1]} -expand {/system_tb/DUT/CPU/CM0/DCACHE/dcache[1].block} -expand {/system_tb/DUT/CPU/CM0/DCACHE/dcache[1].block[0]} -expand {/system_tb/DUT/CPU/CM0/DCACHE/dcache[0]} -expand {/system_tb/DUT/CPU/CM0/DCACHE/dcache[0].block} -expand {/system_tb/DUT/CPU/CM0/DCACHE/dcache[0].block[0]} -expand} /system_tb/DUT/CPU/CM0/DCACHE/dcache
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/dcache_next
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/datomic_reply
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/WB_buffer_data
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/WB_buffer_addr
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/WB_addr
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/WB_data
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/WB
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/atomic_faild
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/write_done
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/hit0
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/hit1
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/replace_block
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/dirty
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/valid
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/latch
add wave -noupdate -expand -group dcache0 /system_tb/DUT/CPU/CM0/DCACHE/empty
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/CPUID
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/BAD
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/CLK
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/nRST
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/laststate
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/state
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/nextstate
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/dmemaddr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/last_dmemaddr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/snoopaddr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/address_lock
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/snoopy_set
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/next_snoopy_set
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/last_address
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/last_replace_block
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/flush_cnt
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/flush_cnt_en
add wave -noupdate -group dcache1 -expand -subitemconfig {{/system_tb/DUT/CPU/CM1/DCACHE/dcache[2]} -expand} /system_tb/DUT/CPU/CM1/DCACHE/dcache
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/dcache_next
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/datomic_reply
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/WB_buffer_data
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/WB_buffer_addr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/WB_addr
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/WB_data
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/WB
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/write_done
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/hit0
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/hit1
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/replace_block
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/dirty
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/valid
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/latch
add wave -noupdate -group dcache1 /system_tb/DUT/CPU/CM1/DCACHE/empty
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/halt
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/ihit
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/imemREN
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/imemload
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/imemaddr
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/dhit
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/datomic
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/dmemREN
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/dmemWEN
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/flushed
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/dmemload
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/dmemstore
add wave -noupdate -expand -group dpic0 /system_tb/DUT/CPU/CM0/dcif/dmemaddr
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
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/CLK
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/nRST
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_in
add wave -noupdate -group FIFO -expand /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_out
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_WEN
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_REN
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_empty
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/FIFO_full
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/can_push
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/can_pop
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/counter
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/next_counter
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/rd_ptr
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/wr_ptr
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/next_rd_ptr
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/next_wr_ptr
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/memory
add wave -noupdate -group FIFO /system_tb/DUT/CPU/CC/COC/FIFO/memory_next
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/CLK
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/nRST
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/ifid
add wave -noupdate -group dp0 /system_tb/DUT/CPU/DP0/idex
add wave -noupdate -group dp0 -expand /system_tb/DUT/CPU/DP0/exmem
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1390926 ps} 0}
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
WaveRestoreZoom {1200822 ps} {1546582 ps}
