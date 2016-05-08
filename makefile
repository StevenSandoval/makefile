#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||BUILD FLAGS||#
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

BUILD_MOCS = 0
BUILD_LIB = 1
BUILD_BIN = 0
BUILD_TESTS = 1
RUN_PREBUILD = 1
RUN_POSTBUILD = 1

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||EXTERNALS||#
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

GOOGLETEST_INC = ../googletest/include
GOOGLETEST_LIB = ../googletest/build/libgtest_main.a ../googletest/build/libgtest.a 

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||BUILD CONFIG||#
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# Compiler
CC = g++
LG = ar
OPTS = -Wall -std=gnu++14 -g
LGOPTS = -r
SRCTYPES = cpp cc c
HTYPES = h

# Project Configuration
PROJECT = Utilities

#Define Flags
DEFINE =  LINUX

# Project Directories
SRCDIR = src
INCDIR = inc
TESTDIR = test

#Generated Directories
BUILDDIR = gen

# External Include Directories 
EXTINC = 
TESTINC = $(GOOGLETEST_INC)

# Libraries
LIBDIRS = 
LIBS   = pthread

#Additional Source files to compile
ADDSRC = 

# External Links
LINKS = 
TESTLIB = $(GOOGLETEST_LIB)

#Pre-Build Scripts
PREBUILD = 

#Post-Build Scripts
POSTBUILD = 

#Additional files/folders to clean
CLEANFILES = 

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||BUILD SCRIPT||#  - DON'T MODIFY ANYTHING BELOW THIS LINE
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

include core.mk
