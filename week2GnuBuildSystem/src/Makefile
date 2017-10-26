#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# Makefile for both native building and cross compilation to the MSP432
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#	<FILE>.i - Generate the preprocessed output of all c-program implementation files(-E flag)
#	<FILE>.asm - Generate assembly output of c-program implementation files and the final output executable (-S and objdump)
#	<FILE>.o - Generate the object file for all c-source files
#	build - Compile all object files and link into a final executable
#	compile-all - Compile all object files, but DO NOT link.
#	clean - remove all compiled objects, preprocessed outputs, assembly outputs, executable files and build output files.
#
# Platform Overrides:
#	HOST - Builds the app natively for host machine
#	MSP432 - Builds for MSP432 microcontroller
#------------------------------------------------------------------------------
include sources.mk

# The default name of the output file
# c1m2 is just for the assignment. main is a better Target name
TARGET = main

# Put platform in on command line e.g. "make build PLATFORM=HOST"
ifeq ($(PLATFORM),HOST)
	# Native compiler
	CC = gcc
	# GNU Linker
	LD = ld
	SOURCES=$(HOSTSOURCES)
	INCLUDES=$(HOSTINCLUDES)
	LDFLAGS =
	#CFLAGS = -Wall -Werror -g -O0 -std=c99 -v
	CFLAGS = -std=c99 -v
	#CPPFLAGs =
else
	# Architectures Specific Flags
	LINKER_FILE = ../msp432p401r.lds
	CPU = cortex-m4
	ARCH = thumb
	SPECS = nosys.specs

	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	SOURCES=$(MSP432SOURCES)
	INCLUDES=$(MSP432INCLUDES)
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
	CFLAGS = -mcpu=$(CPU) -m$(ARCH) --specs=$(SPECS) -Wall
	#CPPFLAGs =
endif

%.i : $(SOURCES)
	$(CC) -E $(CFLAGS) -o $@ $(INCLUDES) -D$(PLATFORM) $<

%.o : $(SOURCES)
	$(CC) -c $(CFLAGS) -o $@ $(INCLUDES) -D$(PLATFORM) $<

%.asm : $(SOURCES)
	$(CC) -S $(CFLAGS) -o $@ $(INCLUDES) -D$(PLATFORM) $<


.PHONY: compile-all
compile-all: $(TARGET).o

.PHONY: build
build: $(TARGET).out

$(TARGET).out: $(SOURCES)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET).out $(INCLUDES) -D$(PLATFORM) $(SOURCES)

.PHONY: clean
clean:
	rm -f *.out *.map *.i *.asm *.o

#Helps debug make file
#E.g type "make print-TARGET"
print-%  : ; @echo $* = $($*)


#This works:
#gcc -std=c99 -o main.out -v -I../include/common/ -DHOST main.c memory.c




