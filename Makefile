#==========================================
#    Makefile: makefile for sl 5.06
#	Copyright 1993, 1998, 2014, 2019-2021
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2021/07/21
#==========================================

CC      ?= cc
INSTALL ?= install
CFLAGS  ?= -O3 -Wall
LDFLAGS ?= -lncurses

PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

all: sl

sl: sl.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

man:
	$(INSTALL) -Dm644 sl.1 $(DESTDIR)$(MANDIR)/man1/sl.1
	$(INSTALL) -Dm644 sl.1.ja $(DESTDIR)$(MANDIR)/ja/man1/sl.1

install: sl man
	$(INSTALL) -Dm755 sl $(DESTDIR)$(BINDIR)/sl

clean:
	rm -f sl

uninstall: clean
	rm -f $(DESTDIR)$(BINDIR)/sl
	rm -f $(DESTDIR)$(MANDIR)/man1/sl.1
	rm -f $(DESTDIR)$(MANDIR)/ja/man1/sl.1

distclean: clean

.PHONY: all clean man uninstall install
