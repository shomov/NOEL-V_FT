## part 1: new lib
vlib work
vmap work work

vlib gaisler
vlib grlib
vlib techmap
vlib opencores
vlib gaisler
vlib eth
vlib shomov


vcom -quiet -work grlib ./../../lib/grlib/stdlib/version.vhd
# vcom -quiet -work grlib ./../../lib/grlib/stdlib/config_types.vhd
# vcom -quiet -work grlib ./../../designs/noelv-ft-sh/grlib_config.vhd
vcom -quiet -work grlib ./../../lib/grlib/stdlib/stdlib.vhd
# vcom -quiet -work grlib ./../../lib/grlib/stdlib/stdio.vhd
# vcom -quiet -work grlib ./../../lib/grlib/stdlib/testlib.vhd
# vcom -quiet -work grlib ./../../lib/grlib/util/util.vhd
# vcom -quiet -work grlib ./../../lib/grlib/sparc/sparc.vhd
# vcom -quiet -work grlib ./../../lib/grlib/sparc/sparc_disas.vhd
# vcom -quiet -work grlib ./../../lib/grlib/sparc/cpu_disas.vhd
# vcom -quiet -work grlib ./../../lib/grlib/riscv/riscv.vhd
# vcom -quiet -work grlib ./../../lib/grlib/riscv/riscv_disas.vhd
# vcom -quiet -work grlib ./../../lib/grlib/riscv/cpu_disas.vhd
# vcom -quiet -work grlib ./../../lib/grlib/modgen/multlib.vhd
# vcom -quiet -work grlib ./../../lib/grlib/modgen/leaves.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/amba.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/devices.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/defmst.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/apbctrl.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/apbctrlx.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/apbctrlsp.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/apbctrldp.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/apbctrl3p.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/apbctrl4p.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/ahbctrl.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/dma2ahb_pkg.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/dma2ahb.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/ahbmst.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/ahblitm2ahbm.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/dma2ahb_tp.vhd
# vcom -quiet -work grlib ./../../lib/grlib/amba/amba_tp.vhd
# vcom -quiet -work grlib ./../../lib/grlib/dftlib/dftlib.vhd
# vcom -quiet -work grlib ./../../lib/grlib/dftlib/trstmux.vhd
# vcom -quiet -work grlib ./../../lib/grlib/dftlib/synciotest.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/generic_bm_pkg.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/ahb_be.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/axi4_be.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/bmahbmst.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/bm_fre.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/bm_me_rc.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/bm_me_wc.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/fifo_control_rc.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/fifo_control_wc.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/generic_bm_ahb.vhd
# vcom -quiet -work grlib ./../../lib/grlib/generic_bm/generic_bm_axi.vhd
# vcom -quiet -work techmap ./../../lib/techmap/gencomp/gencomp.vhd
# vcom -quiet -work techmap ./../../lib/techmap/gencomp/netcomp.vhd
# vcom -quiet -work techmap ./../../lib/techmap/alltech/allclkgen.vhd
# vcom -quiet -work techmap ./../../lib/techmap/alltech/allddr.vhd
# vcom -quiet -work techmap ./../../lib/techmap/alltech/allmem.vhd
# vcom -quiet -work techmap ./../../lib/techmap/alltech/allmul.vhd
# vcom -quiet -work techmap ./../../lib/techmap/alltech/allpads.vhd
# vcom -quiet -work techmap ./../../lib/techmap/alltech/alltap.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/memory_inferred.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/ddr_inferred.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/mul_inferred.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/ddr_phy_inferred.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/ddrphy_datapath.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/fifo_inferred.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/sim_pll.vhd
# vcom -quiet -work techmap ./../../lib/techmap/inferred/lpddr2_phy_inferred.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/techbuf.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/clkgen.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/clkmux.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/clkinv.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/clkand.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/grgates.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/ddr_ireg.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/ddr_oreg.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/clkpad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/clkpad_ds.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/inpad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/inpad_ds.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/iodpad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/iopad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/iopad_ds.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/lvds_combo.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/odpad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/outpad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/outpad_ds.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/toutpad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/toutpad_ds.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/skew_outpad.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/ddrphy.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram64.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram_2p.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram_dp.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncfifo_2p.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/regfile_3p.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/tap.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/nandtree.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/grlfpw_net.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/grfpw_net.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/leon3_net.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/leon4_net.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/mul_61x61.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/cpu_disas_net.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/ringosc.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/grpci2_phy_net.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/system_monitor.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/inpad_ddr.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/outpad_ddr.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/iopad_ddr.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram128bw.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram256bw.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram128.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram156bw.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/techmult.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/spictrl_net.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/scanreg.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncrambw.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncram_2pbw.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/sdram_phy.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/syncreg.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/serdes.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/iopad_tm.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/toutpad_tm.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/memrwcol.vhd
# vcom -quiet -work techmap ./../../lib/techmap/maps/cdcbus.vhd
# vcom -quiet -work eth ./../../lib/eth/comp/ethcomp.vhd
# vcom -quiet -work eth ./../../lib/eth/core/greth_pkg.vhd
# vcom -quiet -work eth ./../../lib/eth/core/eth_rstgen.vhd
# vcom -quiet -work eth ./../../lib/eth/core/eth_edcl_ahb_mst.vhd
# vcom -quiet -work eth ./../../lib/eth/core/eth_ahb_mst.vhd
# vcom -quiet -work eth ./../../lib/eth/core/greth_tx.vhd
# vcom -quiet -work eth ./../../lib/eth/core/greth_rx.vhd
# vcom -quiet -work eth ./../../lib/eth/core/grethc.vhd
# vcom -quiet -work eth ./../../lib/eth/wrapper/greth_gen.vhd
# vcom -quiet -work opencores ./../../lib/opencores/can/cancomp.vhd
# vcom -quiet -work opencores ./../../lib/opencores/can/can_top.vhd
# vcom -quiet -work opencores ./../../lib/opencores/i2c/i2c_master_bit_ctrl.vhd
# vcom -quiet -work opencores ./../../lib/opencores/i2c/i2c_master_byte_ctrl.vhd
# vcom -quiet -work opencores ./../../lib/opencores/i2c/i2coc.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/arith/arith.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/arith/mul32.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/arith/div32.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/memctrl/memctrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/memctrl/sdctrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/memctrl/sdctrl64.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/memctrl/sdmctrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/memctrl/srctrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmuconfig.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmuiface.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/libmmu.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmutlbcam.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmulrue.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmulru.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmutlb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmutw.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/srmmu/mmu.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3/leon3.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3/grfpushwx.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/tbufmem.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/tbufmem_2p.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/dsu3x.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/dsu3.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/dsu3_mb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/libfpu.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/libiu.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/libcache.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/libleon3.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/regfile_3p_l3.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/mmu_acache.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/mmu_icache.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/mmu_dcache.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/cachemem.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/mmu_cache.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/grfpwx.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/grlfpwx.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/iu3.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/proc3.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/grfpwxsh.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/leon3x.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/leon3cg.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/leon3s.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/leon3sh.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/l3stat.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon3v3/cmvalidbits.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/leon4/leon4.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/l2cache/pkg/l2cache.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/can/can.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/can/can_mod.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/can/can_oc.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/can/can_mc.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/can/canmux.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/can/can_rd.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/axi.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/ahbm2axi.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/ahbm2axi3.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/ahbm2axi4.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/axinullslv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/ahb2axib.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/ahb2axi3b.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/ahb2axi4b.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/axi/ahb2axi_l.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/misc.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/rstgen.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/gptimer.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbram.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbdpram.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbtrace_mmb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbtrace_mb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbtrace.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/grgpio.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbstat.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/logan.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/apbps2.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/charrom_package.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/charrom.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/apbvga.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/svgactrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/grsysmon.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/gracectrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/grgpreg.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahb_mst_iface.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/grgprbank.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/grversion.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/apb3cdc.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbsmux.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/ahbmmux.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/misc/grtachom.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/net/net.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/uart/uart.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/uart/libdcom.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/uart/apbuart.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/uart/dcom.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/uart/dcom_uart.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/uart/ahbuart.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/sim.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/sram.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/sram16.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/phy.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/ser_phy.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/ahbrep.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/delay_wire.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/pwm_check.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/ramback.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/slavecheck_slv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/ddrram.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/ddr2ram.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/ddr3ram.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/sdrtestmod.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/ahbram_sim.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/aximem.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/axirep.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/axixmem.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/sramtestmod.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/uartprint.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/dfi_phy_sim.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/sim/dfi_phy_sim_fr.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/jtag.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/libjtagcom.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/jtagcom.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/bscanregs.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/bscanregsbd.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/jtagcom2.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/ahbjtag.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/ahbjtag_bsd.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/jtagcomrv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/ahbjtagrv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/jtagtst.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/jtag/jtag_rv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/ethernet_mac.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/greth.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/greth_mb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/greth_gbit.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/greths.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/greth_gbit_mb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/greths_mb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/grethm.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/grethm_mb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/rgmii.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/rgmii_kc705.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/rgmii_series7.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/rgmii_series6.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/comma_detect.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/elastic_buffer.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/gmii_to_mii.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/greth/adapters/word_aligner.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2c.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2cmst.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2cmst_gen.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2cslv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2c2ahbx.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2c2ahb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2c2ahb_apb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2c2ahb_gen.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/i2c/i2c2ahb_apb_gen.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spi.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spimctrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spictrlx.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spictrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spi2ahbx.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spi2ahb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spi2ahb_apb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/spi/spi_flash.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/grdmac2_pkg.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/grdmac2_apb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/mem2buf.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/buf2mem.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/grdmac2_ctrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/grdmac2.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/grdmac2_ahb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/grdmac2_acc.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/grdmac2/grdmac2_axi.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/subsys/subsys.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/subsys/leon_dsu_stat_base.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/plic/plic.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/plic/grplic.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/plic/plic_encoder.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/plic/plic_gateway.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/plic/plic_target.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/plic/grplic_ahb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/l2c_lite/l2c_lite.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/l2c_lite/l2c_lite_mem.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/l2c_lite/l2c_lite_ctrl.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/l2c_lite/l2c_lite_ahb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/l2c_lite/l2c_lite_axi.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/pkg_32/../pkg/noelv_cfg_32.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/pkg_32/../pkg/noelv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/pkg_32/../pkg/noelv_cpu_cfg.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/clint/clint.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/clint/clint_ahb.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/utilnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/noelvint.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/nvsupport.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/mmuconfig.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/bhtnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/btbnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/btbdmnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/rasnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/tbufmemnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/fputilnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/cachememnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/mul64.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/div64.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/regfile64sramnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/regfile64dffnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/progbuf.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/alunv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/rvvi.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/iunv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/itracenv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/cpucorenv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/rvdmx.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/rvdm.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/cctrlnv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/mulfp.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/core/nanofpunv.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/subsys/noelvcpu.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/subsys/dummy_pnp.vhd
# vcom -quiet -work gaisler ./../../lib/gaisler/noelv/subsys/noelvsys.vhd
# vcom -quiet -work work ./../../lib/work/debug/debug.vhd
# vcom -quiet -work work ./../../lib/work/debug/grtestmod.vhd
# vcom -quiet -work work ./../../lib/work/debug/cpu_disas.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/config.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/cfg/config_local.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/rtl/core/rev.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/rtl/core/cfgmap.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/rtl/core/noelvcore.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/rtl/ahbrom.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/rtl/ahbrom64.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/rtl/ahbrom128.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/rtl/noelvmp.vhd
# vcom -quiet -work work ./../../designs/noelv-ft-sh/tb/testbench.vhd
vcom -novopt -2008 -quiet -work shomov ./../../lib/shomov/hamming/encoder.vhd

vcom -novopt -quiet -work work ./tb_encode.vhd

## part 3: sim design
##vcom -novopt work.tb_mul
vsim tb_mul

## part 4: add signals


## part 5: show ui 
view wave
view structure
view signals
## part 6: run 
run 2000us