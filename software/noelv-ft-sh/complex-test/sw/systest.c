#include <stdio.h>


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
int main() {
  printf("Hello, NOEL-V\n\r");
	
	return 0;
}
