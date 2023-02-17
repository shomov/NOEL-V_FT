/*
 *
 * For testing NOELV-based designs, the macro NOELV_SYSTEST must be defined.
 * The testing modules base addresses and interrupt IDs (if present) must be
 * changed accordingly.
 *
 * For defining parameters while compiling, run:
 *    make soft SYSTEST_DEFINES="-DNOELV_SYSTEST -DSYSTEST_TYPE=L2C_SYSTEST"
 *
 * The systests require an instantiated AHBREP module. The address of the AHBREP
 * must be changed accordingly by adding -DGRLIB_REPORTDEV_BASE=0x0...0 to the
 * SYSTEST_DEFINES variable. Default: 0x80000000
 *
 * Multiple modules can be tested in the same run by or-ing their test
 * identifiers, for example:
 *    make soft SYSTEST_DEFINES="-DNOELV_SYSTEST -DSYSTEST_TYPE='GRIOMMU_SYSTEST|GRETH_SYSTEST'"
 * This will run both GRIOMMU and GRETH tests (note the single quotes around the
 * SYSTEST_TYPE definition and the double quotes for the SYSTEST_DEFINES).
 *
 */

#include "printf.h"

static volatile int *pio;

int main() {
  
  unsigned int res = 0;
  uart_init(0xfc001000);

  printf("Hello, NOEL-V!\n");

  while (1) {
  //   __asm__ __volatile__("ADDI x0, x0, 0");		//NOP
    __asm__ volatile ("rdcycle %0;" : "=r"(res));
	
    pio = (int *) 0xfc083000; //neesh
    // pio = (int *) 0x860; 
    /*
     * pio[0] = din
     * pio[1] = dout
     * pio[2] = dir
     * pio[3] = imask
     * pio[4] = level
     * pio[5] = edge
     * pio[6] = bypass
     * pio[7] = reserved
     * pio[8] = irqmap
     */

    // int mask;
    // int width;
    
    // pio[3] = 0; 
    // pio[2] = 0;
    // pio[1] = 0;  
  
    pio[2] = 0xFFFFFFFF;

    pio[1] = res;

  // printf("LOOP\n");

  }
	return 0;
}
