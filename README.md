SL(1): Cure your bad habit of mistyping
=======================================

SL (Steam Locomotive) runs across your terminal when you type "sl" as
you meant to type "ls". It's just a joke command, and not useful at
all.

![](demo.gif)

Copyright 1993,1998,2014,2019-2021 Toyoda Masashi (mtoyoda@acm.org)

## Update notes from Keto
Changes made to this specific fork of `sl` are the following
- Add new functions to the Makefile
- Bump `sl` version to 5.06
- Add building notes inside README (English only)

Specific changes have been documented under commit messages and within the source code file ([`sl.c`](./sl.c)). Changes from other forks have been kept.

## Building
You'll need `make`; in order to build `sl`, run the following

    make

To install `sl` to `/usr/local` in your system, do the following. This will install `sl` as well as the manpage included

    sudo make install man

To remove `sl` from `/usr/local`, do the following

    sudo make uninstall

Checkout the [Makefile](./Makefile) for other options and variables available for `sl`.
