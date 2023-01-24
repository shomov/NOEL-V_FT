# Lattice Radiant Noel-V
# Create a new project


prj_create -name noelvmp -dev LIFCL-40-7BG400C

prj_add_source -work grlib ./../../../lib/grlib/stdlib/version.vhd
prj_add_source -work grlib ./../../../lib/grlib/stdlib/config_types.vhd
prj_add_source -work grlib ./../grlib_config.vhd
prj_add_source -work grlib ./../../../lib/grlib/stdlib/stdlib.vhd
prj_add_source -work grlib ./../../../lib/grlib/stdlib/stdio.vhd
prj_disable_source ./../../../lib/grlib/stdlib/stdio.vhd
prj_add_source -work grlib ./../../../lib/grlib/stdlib/testlib.vhd
prj_disable_source ./../../../lib/grlib/stdlib/testlib.vhd
prj_add_source -work grlib ./../../../lib/grlib/util/util.vhd
prj_disable_source ./../../../lib/grlib/util/util.vhd
prj_add_source -work grlib ./../../../lib/grlib/sparc/sparc.vhd
prj_add_source -work grlib ./../../../lib/grlib/sparc/sparc_disas.vhd
prj_disable_source ./../../../lib/grlib/sparc/sparc_disas.vhd
prj_add_source -work grlib ./../../../lib/grlib/sparc/cpu_disas.vhd
prj_disable_source ./../../../lib/grlib/sparc/cpu_disas.vhd
prj_add_source -work grlib ./../../../lib/grlib/riscv/riscv.vhd
prj_add_source -work grlib ./../../../lib/grlib/riscv/riscv_disas.vhd
prj_disable_source ./../../../lib/grlib/riscv/riscv_disas.vhd
prj_add_source -work grlib ./../../../lib/grlib/riscv/cpu_disas.vhd
prj_disable_source ./../../../lib/grlib/riscv/cpu_disas.vhd
prj_add_source -work grlib ./../../../lib/grlib/modgen/multlib.vhd
prj_add_source -work grlib ./../../../lib/grlib/modgen/leaves.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/amba.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/devices.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/defmst.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/apbctrl.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/apbctrlx.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/apbctrlsp.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/apbctrldp.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/apbctrl3p.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/apbctrl4p.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/ahbctrl.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/dma2ahb_pkg.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/dma2ahb.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/ahbmst.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/ahblitm2ahbm.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/dma2ahb_tp.vhd
prj_disable_source ./../../../lib/grlib/amba/dma2ahb_tp.vhd
prj_add_source -work grlib ./../../../lib/grlib/amba/amba_tp.vhd
prj_disable_source ./../../../lib/grlib/amba/amba_tp.vhd
prj_add_source -work grlib ./../../../lib/grlib/dftlib/dftlib.vhd
prj_add_source -work grlib ./../../../lib/grlib/dftlib/trstmux.vhd
prj_add_source -work grlib ./../../../lib/grlib/dftlib/synciotest.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/generic_bm_pkg.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/ahb_be.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/axi4_be.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/bmahbmst.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/bm_fre.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/bm_me_rc.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/bm_me_wc.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/fifo_control_rc.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/fifo_control_wc.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/generic_bm_ahb.vhd
prj_add_source -work grlib ./../../../lib/grlib/generic_bm/generic_bm_axi.vhd
prj_add_source -work techmap ./../../../lib/techmap/gencomp/gencomp.vhd
prj_add_source -work techmap ./../../../lib/techmap/gencomp/netcomp.vhd
prj_add_source -work techmap ./../../../lib/techmap/alltech/allclkgen.vhd
prj_add_source -work techmap ./../../../lib/techmap/alltech/allddr.vhd
prj_add_source -work techmap ./../../../lib/techmap/alltech/allmem.vhd
prj_add_source -work techmap ./../../../lib/techmap/alltech/allmul.vhd
prj_add_source -work techmap ./../../../lib/techmap/alltech/allpads.vhd
prj_add_source -work techmap ./../../../lib/techmap/alltech/alltap.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/memory_inferred.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/ddr_inferred.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/mul_inferred.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/ddr_phy_inferred.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/ddrphy_datapath.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/fifo_inferred.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/sim_pll.vhd
prj_disable_source ./../../../lib/techmap/inferred/sim_pll.vhd
prj_add_source -work techmap ./../../../lib/techmap/inferred/lpddr2_phy_inferred.vhd
prj_disable_source ./../../../lib/techmap/inferred/lpddr2_phy_inferred.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/techbuf.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/clkgen.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/clkmux.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/clkinv.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/clkand.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/grgates.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/ddr_ireg.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/ddr_oreg.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/clkpad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/clkpad_ds.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/inpad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/inpad_ds.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/iodpad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/iopad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/iopad_ds.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/lvds_combo.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/odpad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/outpad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/outpad_ds.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/toutpad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/toutpad_ds.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/skew_outpad.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/ddrphy.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram64.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram_2p.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram_dp.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncfifo_2p.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/regfile_3p.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/tap.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/nandtree.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/grlfpw_net.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/grfpw_net.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/leon3_net.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/leon4_net.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/mul_61x61.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/cpu_disas_net.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/ringosc.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/grpci2_phy_net.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/system_monitor.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/inpad_ddr.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/outpad_ddr.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/iopad_ddr.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram128bw.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram256bw.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram128.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram156bw.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/techmult.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/spictrl_net.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/scanreg.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncrambw.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncram_2pbw.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/sdram_phy.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/syncreg.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/serdes.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/iopad_tm.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/toutpad_tm.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/memrwcol.vhd
prj_add_source -work techmap ./../../../lib/techmap/maps/cdcbus.vhd
prj_add_source -work eth ./../../../lib/eth/comp/ethcomp.vhd
prj_add_source -work eth ./../../../lib/eth/core/greth_pkg.vhd
prj_add_source -work eth ./../../../lib/eth/core/eth_rstgen.vhd
prj_add_source -work eth ./../../../lib/eth/core/eth_edcl_ahb_mst.vhd
prj_add_source -work eth ./../../../lib/eth/core/eth_ahb_mst.vhd
prj_add_source -work eth ./../../../lib/eth/core/greth_tx.vhd
prj_add_source -work eth ./../../../lib/eth/core/greth_rx.vhd
prj_add_source -work eth ./../../../lib/eth/core/grethc.vhd
prj_add_source -work eth ./../../../lib/eth/wrapper/greth_gen.vhd
prj_add_source -work opencores ./../../../lib/opencores/can/cancomp.vhd
prj_add_source -work opencores ./../../../lib/opencores/can/can_top.vhd
prj_add_source -work opencores ./../../../lib/opencores/i2c/i2c_master_bit_ctrl.vhd
prj_add_source -work opencores ./../../../lib/opencores/i2c/i2c_master_byte_ctrl.vhd
prj_add_source -work opencores ./../../../lib/opencores/i2c/i2coc.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/arith/arith.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/arith/mul32.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/arith/div32.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/memctrl/memctrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/memctrl/sdctrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/memctrl/sdctrl64.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/memctrl/sdmctrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/memctrl/srctrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmuconfig.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmuiface.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/libmmu.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmutlbcam.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmulrue.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmulru.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmutlb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmutw.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/srmmu/mmu.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3/leon3.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3/grfpushwx.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/tbufmem.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/tbufmem_2p.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/dsu3x.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/dsu3.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/dsu3_mb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/libfpu.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/libiu.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/libcache.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/libleon3.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/regfile_3p_l3.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/mmu_acache.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/mmu_icache.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/mmu_dcache.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/cachemem.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/mmu_cache.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/grfpwx.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/grlfpwx.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/iu3.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/proc3.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/grfpwxsh.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/leon3x.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/leon3cg.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/leon3s.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/leon3sh.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/l3stat.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon3v3/cmvalidbits.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/leon4/leon4.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/l2cache/pkg/l2cache.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/can/can.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/can/can_mod.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/can/can_oc.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/can/can_mc.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/can/canmux.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/can/can_rd.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/axi.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/ahbm2axi.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/ahbm2axi3.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/ahbm2axi4.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/axinullslv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/ahb2axib.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/ahb2axi3b.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/ahb2axi4b.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/axi/ahb2axi_l.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/misc.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/rstgen.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/gptimer.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbram.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbdpram.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbtrace_mmb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbtrace_mb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbtrace.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/grgpio.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbstat.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/logan.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/apbps2.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/charrom_package.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/charrom.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/apbvga.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/svgactrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/grsysmon.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/gracectrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/grgpreg.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahb_mst_iface.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/grgprbank.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/grversion.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/apb3cdc.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbsmux.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/ahbmmux.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/misc/grtachom.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/net/net.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/uart/uart.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/uart/libdcom.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/uart/apbuart.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/uart/dcom.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/uart/dcom_uart.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/uart/ahbuart.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/sim.vhd
prj_disable_source ./../../../lib/gaisler/sim/sim.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/sram.vhd
prj_disable_source ./../../../lib/gaisler/sim/sram.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/sram16.vhd
prj_disable_source ./../../../lib/gaisler/sim/sram16.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/phy.vhd
prj_disable_source ./../../../lib/gaisler/sim/phy.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/ser_phy.vhd
prj_disable_source ./../../../lib/gaisler/sim/ser_phy.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/ahbrep.vhd
prj_disable_source ./../../../lib/gaisler/sim/ahbrep.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/delay_wire.vhd
prj_disable_source ./../../../lib/gaisler/sim/delay_wire.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/pwm_check.vhd
prj_disable_source ./../../../lib/gaisler/sim/pwm_check.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/ramback.vhd
prj_disable_source ./../../../lib/gaisler/sim/ramback.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/slavecheck_slv.vhd
prj_disable_source ./../../../lib/gaisler/sim/slavecheck_slv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/ddrram.vhd
prj_disable_source ./../../../lib/gaisler/sim/ddrram.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/ddr2ram.vhd
prj_disable_source ./../../../lib/gaisler/sim/ddr2ram.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/ddr3ram.vhd
prj_disable_source ./../../../lib/gaisler/sim/ddr3ram.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/sdrtestmod.vhd
prj_disable_source ./../../../lib/gaisler/sim/sdrtestmod.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/ahbram_sim.vhd
prj_disable_source ./../../../lib/gaisler/sim/ahbram_sim.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/aximem.vhd
prj_disable_source ./../../../lib/gaisler/sim/aximem.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/axirep.vhd
prj_disable_source ./../../../lib/gaisler/sim/axirep.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/axixmem.vhd
prj_disable_source ./../../../lib/gaisler/sim/axixmem.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/sramtestmod.vhd
prj_disable_source ./../../../lib/gaisler/sim/sramtestmod.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/uartprint.vhd
prj_disable_source ./../../../lib/gaisler/sim/uartprint.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/dfi_phy_sim.vhd
prj_disable_source ./../../../lib/gaisler/sim/dfi_phy_sim.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/sim/dfi_phy_sim_fr.vhd
prj_disable_source ./../../../lib/gaisler/sim/dfi_phy_sim_fr.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/jtag.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/libjtagcom.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/jtagcom.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/bscanregs.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/bscanregsbd.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/jtagcom2.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/ahbjtag.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/ahbjtag_bsd.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/jtagcomrv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/ahbjtagrv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/jtagtst.vhd
prj_disable_source ./../../../lib/gaisler/jtag/jtagtst.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/jtag/jtag_rv.vhd
prj_disable_source ./../../../lib/gaisler/jtag/jtag_rv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/ethernet_mac.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/greth.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/greth_mb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/greth_gbit.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/greths.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/greth_gbit_mb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/greths_mb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/grethm.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/grethm_mb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/rgmii.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/rgmii_kc705.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/rgmii_series7.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/rgmii_series6.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/comma_detect.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/elastic_buffer.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/gmii_to_mii.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/greth/adapters/word_aligner.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2c.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2cmst.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2cmst_gen.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2cslv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2c2ahbx.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2c2ahb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2c2ahb_apb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2c2ahb_gen.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/i2c/i2c2ahb_apb_gen.vhd
# read_verilog -library gaisler ./../../../lib/gaisler/i2c/i2c_slave_model.v
prj_disable_source ./../../../lib/gaisler/i2c/i2c_slave_model.v
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spi.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spimctrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spictrlx.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spictrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spi2ahbx.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spi2ahb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spi2ahb_apb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/spi/spi_flash.vhd
prj_disable_source ./../../../lib/gaisler/spi/spi_flash.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/grdmac2_pkg.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/grdmac2_apb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/mem2buf.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/buf2mem.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/grdmac2_ctrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/grdmac2.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/grdmac2_ahb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/grdmac2_acc.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/grdmac2/grdmac2_axi.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/subsys/subsys.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/subsys/leon_dsu_stat_base.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/plic/plic.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/plic/grplic.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/plic/plic_encoder.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/plic/plic_gateway.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/plic/plic_target.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/plic/grplic_ahb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/l2c_lite/l2c_lite.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/l2c_lite/l2c_lite_mem.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/l2c_lite/l2c_lite_ctrl.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/l2c_lite/l2c_lite_ahb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/l2c_lite/l2c_lite_axi.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/pkg_32/../pkg/noelv_cfg_32.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/pkg_32/../pkg/noelv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/pkg_32/../pkg/noelv_cpu_cfg.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/clint/clint.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/clint/clint_ahb.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/utilnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/noelvint.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/nvsupport.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/mmuconfig.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/bhtnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/btbnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/btbdmnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/rasnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/tbufmemnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/fputilnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/cachememnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/mul64.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/div64.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/regfile64sramnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/regfile64dffnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/progbuf.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/alunv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/rvvi.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/iunv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/itracenv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/cpucorenv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/rvdmx.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/rvdm.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/cctrlnv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/mulfp.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/core/nanofpunv.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/subsys/noelvcpu.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/subsys/dummy_pnp.vhd
prj_add_source -work gaisler ./../../../lib/gaisler/noelv/subsys/noelvsys.vhd
prj_add_source -work work ./../../../lib/work/debug/debug.vhd
prj_disable_source ./../../../lib/work/debug/debug.vhd
prj_add_source -work work ./../../../lib/work/debug/grtestmod.vhd
prj_disable_source ./../../../lib/work/debug/grtestmod.vhd
prj_add_source -work work ./../../../lib/work/debug/cpu_disas.vhd
prj_disable_source ./../../../lib/work/debug/cpu_disas.vhd
prj_add_source -work work ./../config.vhd
prj_add_source -work work ./../cfg/config_local.vhd
prj_add_source -work work ./../rtl/core/rev.vhd
prj_add_source -work work ./../rtl/core/cfgmap.vhd
prj_add_source -work work ./../rtl/core/noelvcore.vhd
prj_add_source -work work ./../rtl/ahbrom.vhd
prj_add_source -work work ./../rtl/ahbrom64.vhd
prj_add_source -work work ./../rtl/ahbrom128.vhd
prj_add_source -work work ./../rtl/noelvmp.vhd
prj_add_source -work work ./../tb/testbench.vhd
prj_disable_source ./../tb/testbench.vhd

prj_save
