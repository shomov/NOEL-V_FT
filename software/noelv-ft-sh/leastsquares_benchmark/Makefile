#--------------------------------------------------------------------
# Include Paths
#--------------------------------------------------------------------
BASE_DIR ?= .
GRLIB 		= $(BASE_DIR)/../../..
VPATH = $(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark
VPATH += $(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark/riscv
XINC  = -I$(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark -I$(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark/riscv

#VPATH += $(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark/uart
#XINC += -I$(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark/uart

LD = text=0x00000000 # It was 0x40000000
LD_SYSTEST ?= $(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark/noel.link
LD_PROM ?= $(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark/prom.link
#--------------------------------------------------------------------
# Build rules
#--------------------------------------------------------------------
XLEN ?= 32
ifeq ($(XLEN), 64)
	RISCV_ABI ?= lp$(XLEN)
else
	RISCV_ABI ?= ilp$(XLEN)
endif	
RISCV_ARCH ?= rv$(XLEN)ima
RISCV_PREFIX ?= riscv-gaisler-elf-
# RISCV_PREFIX ?= riscv64-unknown-elf-

XCC = $(RISCV_PREFIX)gcc $(XINC)
XAS = $(RISCV_PREFIX)gcc -c -I. $(XINC)
XAR = $(RISCV_PREFIX)ar
# SYSTEST_DEFINES = -ITERATIONS=1
XCFLAGS = -mcmodel=medany -static -std=gnu99 -O2 -march=$(RISCV_ARCH) -mabi=$(RISCV_ABI) $(SYSTEST_DEFINES) -Wl,--no-gc-sections
XCFLAGS_PROM = -mcmodel=medany -static -std=gnu99 -O2 -march=$(RISCV_ARCH) -mabi=$(RISCV_ABI) -Wl,--no-gc-sections -nostdlib

ifeq ("$(LD)", "")
	LDFLAGS = -qbsp=2020q4
else
	LDFLAGS = -qbsp=2020q4 -Wl,-T$(LD) # it was: LDFLAGS = -qbsp=2020q4 -T$(LD)
endif
XLDFLAGS=-L./ libnoeltests.a $(LDFLAGS)

LINK = $(XCC) -T$(LD)
#LINK = $(XCC) -Ttext=0x40000000
##LINK = $(XCC)
LINK_OPTS = -static -nostdlib -nostartfiles -lm -lgcc
LDLIBS =

OBJDUMP = $(RISCV_PREFIX)objdump --disassemble-all --disassemble-zeroes

OBJCOPY = $(RISCV_PREFIX)objcopy
# OBJCOPY_OPTS = --srec-len=16 --srec-forceS3 --gap-fill=0 --pad-to=0x40100000
OBJCOPY_OPTS = --srec-len=16 --srec-forceS3 --gap-fill=0 # Orig
PROM_OPTS = --srec-len=16 --srec-forceS3 --gap-fill=0
SECTIONS = --remove-section=.comment --remove-section=.riscv.attributes

DTB = noelv.dtb

OBJDIR = ./obj
SRCDIR = $(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark
SRCDIR2 = $(GRLIB)/software/noelv-ft-sh/leastsquares_benchmark/riscv
PROGS = 
SRCFILES = $(wildcard $(SRCDIR)/*.c)
SRCFILES2 = $(wildcard $(SRCDIR2)/*.c)
OBJFILES = $(PROGS:%=%.o) $(addprefix $(OBJDIR)/, $(notdir $(SRCFILES:%.c=%.o)))
OBJFILES += $(PROGS:%=%.o) $(addprefix $(OBJDIR)/, $(notdir $(SRCFILES2:%.c=%.o)))
#--------------------------------------------------------------------
# Build Templates
#--------------------------------------------------------------------

#%.o: %.c
$(OBJDIR)/%.o: %.c
	$(XCC) $(XCFLAGS) -c $< -o $@

#%.o: %.S
$(OBJDIR)/%.o: %.S
	$(XCC) $(XCFLAGS) -c $< -o $@

%.dtb: %.dts
	dtc -I dts $< -O dtb -o $@

%.elf: %.c
	$(XCC) $(XCFLAGS) $(LDFLAGS) $< -o $@

%.elf: %.S
	$(XCC) $(XCFLAGS) $(LDFLAGS) $< -o $@

%.srec: %.elf
	$(OBJCOPY) $(OBJCOPY_OPTS) $(SECTIONS) -O srec $< $@

libnoeltests.a: $(OBJFILES)
	$(XAR) -cr libnoeltests.a $(OBJFILES)

#--------------------------------------------------------------------
# Test Programs
#--------------------------------------------------------------------

prom.elf: prom.S $(LD_PROM)
	$(XCC) $(XCFLAGS_PROM) -T$(LD_PROM) $< -o $@

prom.srec: prom.elf
	$(OBJCOPY) $(OBJCOPY_OPTS) $(SECTIONS) -O srec $< $@
	# $(OBJDUMP) $< > disas_rom.odump

coremark.bin: systest.elf
	$(OBJCOPY) $(OBJCOPY_OPTS) $(SECTIONS) -O binary $< $@

systest.elf: libnoeltests.a $(OBJFILES)
	$(XCC) $(XCFLAGS) $(OBJFILES) $(XLDFLAGS) $< -o $@

ram.srec: systest.elf
	$(OBJCOPY) $(OBJCOPY_OPTS) $(SECTIONS) -O srec $< $@
	# $(OBJDUMP) -m riscv $< > disas_elf.odump
	# $(OBJDUMP) -m riscv $@ > disas_ram.odump

systest_small.elf: systest.c crt.o report_device.o libnoeltests.a $(LD_SYSTEST)
	$(XCC) $(XCFLAGS) -T$(LD_SYSTEST) -nostdlib report_device.o crt.o $(XLDFLAGS) $< -o $@

#--------------------------------------------------------------------
# Soft
#--------------------------------------------------------------------

soft-setup:
	@mkdir -p $(OBJDIR)

soft: soft-setup prom.srec ram.srec #$(info $$OBJFILES is: [${OBJFILES}]) $(info $$SRCFILES is: [${SRCFILES}])

#--------------------------------------------------------------------
# Clean Up
#--------------------------------------------------------------------

CLEAN += soft-clean 

soft-clean:
	-rm -rf *.o *.a *.elf *.exe *.odump $(OBJDIR)

