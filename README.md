# PrologPF

## Introduction

PrologPF is an interpreter/compiler based on GNU Prolog, extended to support functions (and deprecating *cut*) and
providing automatic support for parallelized execution.

(GNU Prolog Manual)[https://people.ds.cam.ac.uk/ijl20/computer_science/prologpf/doc]

## Linux installation

```
sudo apt install git
git clone https://github.com/ijl20/prologpf.git
cd prologpf
./configure
make
sudo make install
```

## Running prologpf

```
$ ./prologpf

?- [user].
hello(world).
Ctrl-D

?- hello(X).
X = world

Ctrl-D
$
```

## More introduction...

GNU Prolog accepts a Prolog+constraint program and produces a native binary 
(like gcc does from a C source). The obtained executable is then stand-alone. 
The size of this executable can be quite small since GNU Prolog can avoid to 
link the code of most unused built-in predicates. The performances of 
GNU Prolog are very encouraging (comparable to commercial systems).

Beside the native-code compilation, GNU Prolog offers a classical interactive interpreter (top-level).

The Prolog part conforms to the ISO standard for Prolog with many extensions very useful in practice (global variables, OS interface, sockets,...).

GNU Prolog also includes an efficient constraint solver over Finite Domains (FD). This opens contraint logic pogramming to the user combining the power of constraint programming to the declarativity of logic programming.

More information about GNU Prolog can be found at the GNU Prolog web site.
GNU Prolog is a native Prolog compiler with additional support for
constraint solving over finite
domains.A lot of work has been devoted to the ISO compatibility. GNU Prolog is very
close to the ISO standard.

Here are some features of GNU Prolog:

Prolog system:

   - conforms to the ISO standard for Prolog (integer/floating arithmetic,
     streams, dynamic code, exceptions).
   - clause indexing.
   - a lot of extensions: global variables, definite clause grammars (DCG),
     sockets interface, operating system interface,...
   - more than 300 Prolog built-in predicates.
   - Prolog debugger and a low-level WAM debugger.
   - line editing facility under the interactive interpreter with completion
     on atoms.
   - powerful bidirectional interface between Prolog and C.

Compiler:

   - native-code compiler producing stand alone executables.
   - simple command-line compiler accepting a wide variety of files:
     Prolog files, C files, WAM files,...
   - direct generation of assembly code 15 times faster than wamcc + gcc.
   - most of unused built-in predicates are not linked (to reduce the size
     of the executables).
   - compiled predicates (native-code) as fast as wamcc on average.
   - consulted predicates (byte-code) 5 times faster than wamcc.

Constraint solver:

   - FD variables well integrated into the Prolog environment (full
     compatibility with Prolog variables and
   - integers). No need for explicit FD declarations.
   - very efficient FD solver (comparable to commercial solvers).
   - high-level constraints can be described in terms of simple primitives.
   - a lot of predefined constraints: arithmetic constraints, boolean
     constraints, symbolic constraints, reified constraints,...
   - several predefined enumeration heuristics.
   - the user can define his own new constraints.
   - more than 50 FD built-in constraints/predicates.



## Ports

GNU Prolog is currently ported to the following architectures:

   - ix86 / GNU/Linux
   - ix86 / Win32 using Cygwin (see file src/WINDOWS)
   - ix86 / Win32 using MinGW  (see file src/WINDOWS)
   - ix86 / Win32 using MSVC++ (see file src/WINDOWS)
   - ix86 / SCO
   - ix86 / Solaris
   - ix86 / FreeBSD
   - ix86 / OpenBSD
   - ix86 / NetBSD
   - ix86 / Darwin (Mac OS X)
   - x86_64 / GNU/Linux
   - x86_64 / Solaris
   - x86_64 / Win64 using MinGW64 (see file src/WINDOWS64)
   - x86_64 / Win64 using MSVC++  (see file src/WINDOWS64)
   - x86_64 / Darwin (Mac OS X)
   - PowerPC / GNU/Linux
   - PowerPC / Darwin (Mac OS X)
   - PowerPC / NetBSD
   - sparc / SunOS (4.1.3 or higher)
   - sparc / Solaris
   - sparc / NetBSD
   - sparc64 / OpenBSD
   - alpha / GNU/Linux
   - alpha / OSF1
   - mips / irix


## Installation

See [INSTALL.md](INSTALL.md)

## Using GNU Prolog

Be sure that adequate environment variables are set (see INSTALL)

You can then invoke the top-level using:

	gprolog

and the compiler using:

	gplc FILE

The simplest way to compile a Prolog file 'prog.pl' is then:

	gplc prog.pl

which will produce the executable called prog (use gplc --help to have a
brief overview of available options).

Refer to the documentation for more information (see below).


## Windows

In Microsoft Windows if you intend to use the gplc compiler as described in
the documentation you need to ascertain the following conditions are
met:

   - for the port compiled with MS Visual C++ (tested with version
     6.0 and Visual C++ 2005 Express Edition) you'll need to have
     MinGW as.exe (renamed as mingw-as.exe) installed and the cl.exe
     compiler (used mainly as linker by GNU Prolog) available in 
     your session path (alternatively link.exe is used).

   - for the ports compiled either with MinGW or Cygwin, the gcc
     toolchain must be installed and available in your session
     path.

Observing these needs you'll also will be able to do the mixed
language programming, as the examples included in the ExamplesC
directory. However you'll need to write your own Makefile as the one
provided is for gplc calling 'gcc' and the options passed by GNU
Prolog will not work (see file ExamplesC/README).


## Documentation

See ```doc/index.html```

## Mailing List

To communicate with other GNU Prolog users and/or implementors send a mail to
users-prolog@gnu.org. To (un)subscribe to this mailing list send a mail to
users-prolog-request@gnu.org with (un)subscribe in the subject line.

## Bugs

Please report bugs to bug-prolog@gnu.org. To (un)subscribe to this mailing
list send a mail to bug-prolog-request@gnu.org with (un)subscribe in the
subject line.



## Credits and Copying

GNU Prolog was developed by Daniel Diaz (http://cri-dist.univ-paris1.fr/diaz/).

GNU Prolog is free software distributed
under a dual license: LGPL or GPL. So, you can redistribute it and/or modify
it under the terms of either:

  * the GNU Lesser General Public License (LGPL) as published by the Free
    Software Foundation; either version 3 of the License, or (at your option)
    any later version.

or 

  * the GNU General Public License (GPL) as published by the Free Software
    Foundation; either version 2 of the License, or (at your option) any
    later version.  

or both in parallel.

