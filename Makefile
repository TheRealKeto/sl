#==========================================
#    Makefile: makefile for sl 5.06
#	Copyright 1993, 1998, 2014, 2019-2021
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2021/07/21
#==========================================

CC           ?= gcc
CFLAGS       ?= -O3 -Wall
NCURSES_FLAG ?= -lncurses

PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man/man1

all: sl

sl: sl.c sl.h
	$(CC) $(CFLAGS) $(LDFLAGS) -o sl sl.c $(NCURSES_FLAG)

man:
	cp -a sl.1 $(DESTDIR)$(MANDIR)

install: sl
	mkdir -p $(DESTDIR)$(BINDIR)
	cp -a sl $(DESTDIR)$(BINDIR)

clean:
	rm -f sl

uninstall: clean
	rm -f $(DESTDIR)$(BINDIR)/sl
	rm -f $(DESTDIR)$(MANDIR)/sl.1

distclean: clean
