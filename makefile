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

#######################
## Compiler Options ###
#######################
#Compiler
CC = g++

#Compiler options
OPTS = -Wall -std=gnu++14 -g

#Static library archiver
LG = ar

#Static archiver options
LGOPTS = -r

#Project source file extensions
SRCTYPES = cpp cc c

#Project header file extensions
HTYPES = h

########################
# Project Configuration#
########################

PROJECT = ProjectTemplate

#Define Flags
DEFINE =  LINUX

#Pre-Build Scripts
PREBUILD = 

#Post-Build Scripts
POSTBUILD = 

##########################
# Directory Configuration#
##########################

# Project Directories
SRCDIR = src
INCDIR = inc
TESTDIR = test

#Generated Directories
BUILDDIR = gen

##################################
# External Dependencies and Paths#
##################################

# External Include Directories 
EXTINC = 

# External/System Libraries
LIBDIRS = 
LIBS   = pthread

#Additional Source files to compile
ADDSRC = 

# External Links
LINKS = 

#Additional files/folders to clean
CLEANFILES = 

#########################
# Unit Test Dependencies#
#########################

#Unit testing library
TESTLIB = $(GOOGLETEST_LIB)

#Unit testing library include path
TESTINC = $(GOOGLETEST_INC)

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||BUILD SCRIPT||# 
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
include core.mk
