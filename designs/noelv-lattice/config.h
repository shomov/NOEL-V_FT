/*
 * Automatically generated C config: don't edit
 */
#define AUTOCONF_INCLUDED
#define CONFIG_HAS_SHARED_GRFPU 1
/*
 * Synthesis      
 */
#define CONFIG_SYN_INFERRED 1
#undef  CONFIG_SYN_AXCEL
#undef  CONFIG_SYN_AXDSP
#undef  CONFIG_SYN_FUSION
#undef  CONFIG_SYN_PROASIC
#undef  CONFIG_SYN_PROASICPLUS
#undef  CONFIG_SYN_PROASIC3
#undef  CONFIG_SYN_PROASIC3E
#undef  CONFIG_SYN_PROASIC3L
#undef  CONFIG_SYN_IGLOO
#undef  CONFIG_SYN_IGLOO2
#undef  CONFIG_SYN_SF2
#undef  CONFIG_SYN_RTG4
#undef  CONFIG_SYN_POLARFIRE
#undef  CONFIG_SYN_UT025CRH
#undef  CONFIG_SYN_UT130HBD
#undef  CONFIG_SYN_UT90NHBD
#undef  CONFIG_SYN_CYCLONEIII
#undef  CONFIG_SYN_STRATIX
#undef  CONFIG_SYN_STRATIXII
#undef  CONFIG_SYN_STRATIXIII
#undef  CONFIG_SYN_STRATIXIV
#undef  CONFIG_SYN_STRATIXV
#undef  CONFIG_SYN_ALTERA
#undef  CONFIG_SYN_ATC18
#undef  CONFIG_SYN_ATC18RHA
#undef  CONFIG_SYN_CUSTOM1
#undef  CONFIG_SYN_DARE
#undef  CONFIG_SYN_CMOS9SF
#undef  CONFIG_SYN_BRAVEMED
#undef  CONFIG_SYN_ECLIPSE
#undef  CONFIG_SYN_RH_LIB18T
#undef  CONFIG_SYN_RHUMC
#undef  CONFIG_SYN_RHS65
#undef  CONFIG_SYN_SAED32
#undef  CONFIG_SYN_SMIC13
#undef  CONFIG_SYN_TM65GPLUS
#undef  CONFIG_SYN_TSMC90
#undef  CONFIG_SYN_UMC
#undef  CONFIG_SYN_ARTIX7
#undef  CONFIG_SYN_KINTEX7
#undef  CONFIG_SYN_KINTEXU
#undef  CONFIG_SYN_SPARTAN3
#undef  CONFIG_SYN_SPARTAN3E
#undef  CONFIG_SYN_SPARTAN6
#undef  CONFIG_SYN_VIRTEX2
#undef  CONFIG_SYN_VIRTEX4
#undef  CONFIG_SYN_VIRTEX5
#undef  CONFIG_SYN_VIRTEX6
#undef  CONFIG_SYN_VIRTEX7
#undef  CONFIG_SYN_ZYNQ7000
#define CONFIG_MEM_INFERRED 1
#undef  CONFIG_MEM_UMC
#undef  CONFIG_MEM_RHUMC
#undef  CONFIG_MEM_SAED32
#undef  CONFIG_MEM_DARE
#undef  CONFIG_MEM_RHS65
#undef  CONFIG_MEM_ARTISAN
#undef  CONFIG_MEM_CUSTOM1
#undef  CONFIG_MEM_VIRAGE
#undef  CONFIG_MEM_VIRAGE90
#undef  CONFIG_SYN_NO_ASYNC
#undef  CONFIG_SYN_SCAN
/*
 * Clock generation
 */
#define CONFIG_CLK_INFERRED 1
#undef  CONFIG_CLK_HCLKBUF
#undef  CONFIG_CLK_UT130HBD
#undef  CONFIG_CLK_ALTDLL
#undef  CONFIG_CLK_BRAVEMED
#undef  CONFIG_CLK_PRO3PLL
#undef  CONFIG_CLK_PRO3EPLL
#undef  CONFIG_CLK_PRO3LPLL
#undef  CONFIG_CLK_FUSPLL
#undef  CONFIG_CLK_LIB18T
#undef  CONFIG_CLK_RHUMC
#undef  CONFIG_CLK_DARE
#undef  CONFIG_CLK_SAED32
#undef  CONFIG_CLK_EASIC45
#undef  CONFIG_CLK_RHS65
#undef  CONFIG_CLK_CLKPLLE2
#undef  CONFIG_CLK_CLKDLL
#undef  CONFIG_CLK_DCM
#undef  CONFIG_PCI_SYSCLK
/*
 * Processor            
 */
#define CONFIG_NOELV 1
#define CONFIG_PROC_NUM (1)
#undef  CONFIG_NOELV_RV64
#define CONFIG_NOELV_RV32 1
#define CONFIG_NOELV_XLEN (32)
#undef  CONFIG_NOELV_HP
#undef  CONFIG_NOELV_GP
#define CONFIG_NOELV_MC 1
#undef  CONFIG_NOELV_FULL
#define CONFIG_NOELV_LITE 1
#undef  CONFIG_NOELV_FPU
#define CONFIG_NOELV_NOFPU 1
#define CONFIG_PROC_TYP (2)
#define CONFIG_PROC_S (1)
#define CONFIG_PROC_LITE (1)
#define CONFIG_PROC_NOFPU (1)
/*
 * VHDL debug settings       
 */
#undef  CONFIG_IU_DISAS
/*
 * NOEL-V subsystem GPL settings       
 */
#define CONFIG_PROC_NODBUS 1
/*
 * L2 Cache
 */
#undef  CONFIG_L2_ENABLE
#undef  CONFIG_L2_ASSO1
#undef  CONFIG_L2_ASSO2
#undef  CONFIG_L2_ASSO3
#define CONFIG_L2_ASSO4 1
#undef  CONFIG_L2_SZ1
#undef  CONFIG_L2_SZ2
#undef  CONFIG_L2_SZ4
#undef  CONFIG_L2_SZ8
#undef  CONFIG_L2_SZ16
#undef  CONFIG_L2_SZ32
#define CONFIG_L2_SZ64 1
#undef  CONFIG_L2_SZ128
#undef  CONFIG_L2_SZ256
#undef  CONFIG_L2_SZ512
#define CONFIG_L2_LINE32 1
#undef  CONFIG_L2_LINE64
#undef  CONFIG_L2_HPROT
#undef  CONFIG_L2_PEN
#undef  CONFIG_L2_WT
#undef  CONFIG_L2_RAN
#undef  CONFIG_L2_SHARE
#define CONFIG_L2_MAP 00FF
#define CONFIG_L2_MTRR (0)
#define CONFIG_L2_EDAC_NONE 1
#undef  CONFIG_L2_EDAC_YES
#undef  CONFIG_L2_EDAC_TECHSPEC
#undef  CONFIG_L2_AXI
/*
 * AMBA configuration
 */
#define CONFIG_AHB_DEFMST (0)
#undef  CONFIG_AHB_RROBIN
#undef  CONFIG_AHB_SPLIT
#undef  CONFIG_AHB_FPNPEN
#define CONFIG_AHB_IOADDR FFF
#define CONFIG_APB_HADDR 800
#undef  CONFIG_AHB_MON
#undef  CONFIG_AHB_DTRACE
/*
 * Debug Link           
 */
#undef  CONFIG_DSU_UART
#undef  CONFIG_DSU_JTAG
/*
 * Peripherals             
 */
/*
 * Memory controller             
 */
#undef  CONFIG_AHBSTAT_ENABLE
/*
 * Ethernet             
 */
#undef  CONFIG_GRETH_ENABLE
/*
 * UARTs, timers and irq control         
 */
#define CONFIG_GRGPIO_ENABLE 1
#define CONFIG_GRGPIO_WIDTH (8)
#define CONFIG_GRGPIO_IMASK FFFE
/*
 * VHDL Debugging        
 */
#undef  CONFIG_DEBUG_UART
