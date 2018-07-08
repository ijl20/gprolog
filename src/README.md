# General Compilation Information

This directory contains the source of GNU Prolog. 

## Compiling locally

To compile the package locally use:

   ./configure [OPTIONS]
   make

For more information about the options of configure refer to the INSTALL file in the parent directory. 

It is possible to re-run './configure' to change the value of some
installation directories (see 2) after the local compilation (i.e. the
compilation will not be done again).


## Cleaning

To remove installed files (remove the content of INSTALL_DIR):

   make uninstall

To clean up the local compilation (does not erase configuration files):

   make clean

To fully clean up the local compilation:

   make distclean


## Rebuilding a source distribution

To rebuild a source distribution file:

   make dist

this will create a file gprolog-xxx.tgz (in the src directory).

## Building a RPM distribution

Refer to the file src/RPM/README for more information

## Building a debian package

Refer to the file src/debian/README for more information

## Building a Win32 auto-install distribution

Refer to the file src/Win32/README for more information


