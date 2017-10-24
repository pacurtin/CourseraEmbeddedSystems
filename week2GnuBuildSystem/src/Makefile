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
#      <FILE>.i - Generate the preprocessed output of all c-program implementation files(-E flag)
#      <FILE>.asm - Generate assembly output of c-program implementation files and the final output executable (-S and objdump)
#      <FILE>.o - Generate the object file for all c-source files
#      build - Compile all object files and link into a final executable
#	   compile-all - Compile all object files, but DO NOT link.
#      clean - remove all compiled objects, preprocessed outputs, assembly outputs, executable files and build output files.
#
# Platform Overrides:
#      <Put a description of the supported Overrides here
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = HOST

# Architectures Specific Flags
#LINKER_FILE = ../msp432p401r.lds
#CPU =
#ARCH =
#SPECS =

# Compiler Flags and Defines
CC = gcc
LD = ld
TARGET = demo
LDFLAGS =
CFLAGS = -Wall \
         -Werror \
         -g \
         -O0 \
         -std=c99
#CPPFLAGs =


.PHONY: build
build: $(TARGET).out

$(TARGET).out: $(SOURCES) $(INCLUDES)
	$(CC) $(SOURCES) -I$(INCLUDES) -o $@



.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET).out $(TARGET).map



