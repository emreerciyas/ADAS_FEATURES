# ###*B*###
# Erika Enterprise, version 3
# 
# Copyright (C) 2017 - 2018 Evidence s.r.l.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or (at
# your option) any later version.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License, version 2, for more details.
# 
# You should have received a copy of the GNU General Public License,
# version 2, along with this program; if not, see
# < www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
# 
# This program is distributed to you subject to the following
# clarifications and special exceptions to the GNU General Public
# License, version 2.
# 
# THIRD PARTIES' MATERIALS
# 
# Certain materials included in this library are provided by third
# parties under licenses other than the GNU General Public License. You
# may only use, copy, link to, modify and redistribute this library
# following the terms of license indicated below for third parties'
# materials.
# 
# In case you make modified versions of this library which still include
# said third parties' materials, you are obligated to grant this special
# exception.
# 
# The complete list of Third party materials allowed with ERIKA
# Enterprise version 3, together with the terms and conditions of each
# license, is present in the file THIRDPARTY.TXT in the root of the
# project.
# ###*E*###

## \file    ee_arch_compiler_gcc.mk
## \brief   Architecture GCC Compiler.
##
## This makefile contains the list of GCC Compiler variables for a specific
## Architecture in Erika Enterprise.
##
## \author  Errico Guidieri
## \date    2017

##
## Compiler related options
##

# BINDIR variable, (if not empty), must end with separator
ifneq ($(BINDIR),)
#Assure the existence of the trailing slash eventually remove it with realpath
#and adding it back
ifeq ($(call iseeopt, OS_EE_RTD_BUILD_ENV_CYGWIN), yes)
BINDIRLOC := $(realpath $(shell cygpath `cygpath -ms '$(BINDIR)'`))/
else
BINDIRLOC := $(realpath $(CCTCBIN))/
endif # OS_EE_RTD_BUILD_ENV_CYGWIN
endif # CCTCBIN

# ALLINCPATH is a colon separated list of directories for source file searching
# -I = adds directories to the source file search path (for both gcc and gas)
# we consider the ee pkg directory and the application dir
# we also consider the current directory because the app could be compiled
# from the config files generated from eclipse...
ALLINCPATH += $(foreach d,$(INCLUDE_PATH),$(addprefix -I,$(call native_path,$d)))

CORTEX_R_GCCPREFIX ?= arm-none-eabi-

EE_OBJDUMP ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)objdump

# GNUPro compilers
EE_LINK ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)ld

OS_EE_AS ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)gcc

EE_CC ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)gcc

EE_CXX ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)g++

OS_EE_AR ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)ar

EE_NM ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)nm

EE_OBJCOPY ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)objcopy

EE_SIZE ?= $(BINDIRLOC)$(CORTEX_R_GCCPREFIX)size

## OPT_CC are the options for CORTEX R C compiler invocation

ifeq ($(OSEE_CORTEX_R_VFP),)
OPT_CPU := -march=armv7-r -msoft-float
else
OPT_CPU := -march=armv7-r -mfloat-abi=hard -mfpu=vfpv3-d16-fp16
endif

#EG: Eventually Add Traditional ARM IS support (-marm)
OPT_CPU += -mthumb

# EG: Eventually Add Big Endian Support (-mbig-endian)
OPT_CPU += -mlittle-endian

OPT_CC += -c -Wall $(OPT_CPU) -Wstrict-prototypes\
-Wtype-limits -Wmissing-declarations -Wmissing-prototypes -fno-strict-aliasing\
-fshort-enums

ifeq ($(or\
    $(and $(call iseeopt, OS_EE_BUILD), $(call iseeopt, OS_EE_BUILD_DEBUG)),\
    $(and $(call iseeopt, OS_EE_APP_BUILD), $(call iseeopt, OS_EE_APP_BUILD_DEBUG))\
), yes)
#-O1
OPT_CC += -fomit-frame-pointer -g -Os -save-temps=obj
else
OPT_CC += -fomit-frame-pointer -g -Os -save-temps=obj
endif

# Specific option from the application makefile
OPT_CC += $(CFLAGS)

## OPT_CXX are the options for CORTEX R C++ compiler invocation
OPT_CXX += -c -Wall $(OPT_CPU) -Wstrict-prototypes\
 -Wtype-limits -Wmissing-declarations -Wmissing-prototypes -fno-strict-aliasing\
 -fshort-enums

ifeq ($(or\
    $(and $(call iseeopt, OS_EE_BUILD), $(call iseeopt, OS_EE_BUILD_DEBUG)),   \
    $(and $(call iseeopt, OS_EE_APP_BUILD), $(call iseeopt, OS_EE_APP_BUILD_DEBUG)) \
), yes)
OPT_CXX += -fomit-frame-pointer -g -Os -save-temps=obj
else
OPT_CXX += -fomit-frame-pointer -g -Os -save-temps=obj
endif

# Specific option from the application makefile
OPT_CXX += $(CFLAGS) $(CXXFLAGS)

## OS_EE_AS_OPT are the options for CORTEX R assembler invocation
OS_EE_AS_OPT = -c -Wall $(OPT_CPU) -xassembler-with-cpp

ifeq ($(or	\
    $(and $(call iseeopt, OS_EE_BUILD), $(call iseeopt, OS_EE_BUILD_DEBUG)),   \
    $(and $(call iseeopt, OS_EE_APP_BUILD), $(call iseeopt, OS_EE_APP_BUILD_DEBUG)) \
), yes)
OS_EE_AS_OPT += -g -Os -save-temps=obj -Wa,--gdwarf2
else
OS_EE_AS_OPT += -g -Os -save-temps=obj -Wa,--gdwarf2
endif

OS_EE_AS_OPT += $(ASFLAGS)

# OS_EE_AR_OPT represents the options for avr linker invocation
ifeq	($(call iseeopt, OS_EE_VERBOSE), yes)
OS_EE_AR_OPT = $(subst $(OS_EE_SPACE),,csv $(subst v,,$(ARFLAGS)))
else	# OS_EE_VERBOSE
OS_EE_AR_OPT = $(subst v,,$(subst $(OS_EE_SPACE),,cs $(ARFLAGS)))
endif	# OS_EE_VERBOSE

# OPT_LINK represents the options for avr linker invocation
OSEE_LINKER_SCRIPT ?= $(OS_EE_MK_BASE_DIR)/ee_cortex_r.ld
OPT_LINK += -EL --gc-sections -T $(OSEE_LINKER_SCRIPT) -Map=$(TARGET_NAME).map

## OPT_LIBS is used to link additional libraries (e.g., for C++ support)
# the EE library is built in the current directory
ifeq ($(call iseeopt, OS_EE_BUILD), yes)
OPT_LIBS += -l$(EELIB) -L .
LIBDEP += lib/$(ERIKALIB)
else	# OS_EE_BUILD
OPT_LIBS += -L $(call short_native_path,$(abspath $(OS_EE_LIB_BASE_DIR)))
#OPT_LIBS += --start-group -l$(EELIB) -l:lib.a --end-group
OPT_LIBS += -l$(EELIB)
endif	# OS_EE_BUILD

ifeq ($(call iseeopt, OS_EE_BUILD), yes)
OS_EE_DEFS_AS   += -DOS_EE_BUILD
OS_EE_DEFS_CC   += -DOS_EE_BUILD
OS_EE_DEFS_CXX  += -DOS_EE_BUILD
endif

# Automatic dependency generation
ifeq ($(call iseeopt, OS_EE_NO_DEPS), yes)
OS_EE_DEP_OPT =
OS_EE_MK_DEPS =
else	# OS_EE_NO_DEPS
# Create dependency for all headers, and add a target for each header
OS_EE_DEP_OPT = -MP -MMD -MF $(call native_path,$(subst .o,.d_tmp,$(@)))
ifeq ($(call iseeopt, OS_EE_RTD_BUILD_ENV_CYGWIN), yes)
# Dependencies on Windows need path translation and quote remotion
OS_EE_MK_DEPS = sed -e 's_\\\(.\)_/\1_g' \
	-e 's_\<\([a-zA-Z]\):/_/cygdrive/\l\1/_g' < $1_tmp > $1 && rm $1_tmp
else	# OS_EE_RTD_BUILD_ENV_CYGWIN
OS_EE_MK_DEPS = mv $1_tmp $1
endif	# OS_EE_RTD_BUILD_ENV_CYGWIN
endif	# OS_EE_NO_DEPS

# Erika Library.
ERIKALIB = $(ERIKALIB_NAME).a

# Define the TARGET
TARGET_NAME ?= erika

# Add application file to dependencies
ifneq ($(call iseeopt, OS_EE_BUILD), yes)
export APP_TARGETS := $(TARGET_NAME).bin $(TARGET_NAME).dump
$(info APP_TARGETS=$(APP_TARGETS))
endif	# !OS_EE_BUILD
