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
# Use: make [TARGET]
#
# Build Targets:
#	<FILE>.i - Generate the preprocessed output of all c-program implementation files(-E flag)
#	<FILE>.asm - Generate assembly output of c-program implementation files and the final output executable (-S and objdump)
#	<FILE>.o - Generate the object file for all c-source files
#	build - Compile all object files and link into a final executable
#	compile-all - Compile all object files, but DO NOT link.
#	nm - Performs a build and produces an nm memory report
#	clean - remove all compiled objects, preprocessed outputs, assembly outputs, executable files and build output files.
#
# Platform Overrides:
#	HOST - Builds the app natively for host machine
#	MSP432 - Builds for MSP432 microcontroller
#------------------------------------------------------------------------------
include sources.mk

# The default name of the output file
TARGET = clm4
PLATFORM = HOST
# Native compiler
CC = gcc
# GNU Linker
LD = ld
SOURCES=$(HOSTSOURCES)
INCLUDES=$(HOSTINCLUDES)
LDFLAGS = -Xlinker -Map=$(TARGET).map
CFLAGS = -Wall -Werror -g -O0 -std=c99 -v
CPPFLAGS = -MD -DCOURSE1

.PHONY: build
build: $(TARGET).out

$(TARGET).out:
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $(TARGET).out $(INCLUDES) -D$(PLATFORM) $(SOURCES)

.PHONY: clean
clean:
	rm -f *.out *.map *.i *.asm *.s *.o *.d nmOutput.txt