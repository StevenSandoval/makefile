# Makefile

Generic linux makefile with the following features:
- automatic directory generation and detection (source directories for the project are recursively traversed for source files)
- automatic source file detection and compilation (no need to explicitly specify source files when added)
- automatic dependency rule generation
- automatic detection of main method
- parallel build by specifying the '-j' option to make
- ability to include pre/post-build scripts
- mocing capability for Qt projects (not fully tested)
- dynamic/static library generation (links all objects not containing a main method)
- generating multiple main binaries (all non-main objects are linked with each object containing a main method)
- isolation of generated files (all generated files are placed in gen so the project directory is not polluted with output files)

## Usage:

The core.mk file contains the main logic of the makefile. Under normal circumstances, a user won't need to modify this file. 
Project information can be configured in the makefile, which then includes the core makefile.

Place source files in the 'src' directory, includes in the 'inc' directory, and tests in the 'test' directory.

External include directories can be specified by the EXTINC field (-I is prepended automatically).

Library directories can be specified in the LIBDIRS field and the libraries themselves in the LIBS field (-L and -l prepended automatically).

If you wish to link libraries directly by their full filename instead, you can specify the path in the LINKS field. This field can also be used
to link in additional object files.

If you wish to compile additional sources into the project besides those in the src directory, add their direct path to the ADDSRC field of the makefile.

If you are using a unit testing library (e.g. googletest), specify the location of the testing library and the test headers in the TESTLIB and TESTINC fields of the makefile respectively.

Project specific tests and test headers should go into the TEST directory, (test by default).