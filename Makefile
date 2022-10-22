#==========================================
#    Makefile: makefile for sl 5.05
#	Copyright 1993, 1998, 2014, 2019
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2022/10/22
#==========================================

CC      ?= cc
INSTALL ?= install
CFLAGS  ?= -O3 -Wall
LDFLAGS ?= -lncurses

PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

.PHONY: all man install clean distclean uninstall

all: sl

sl: sl.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

man:
	$(INSTALL) -Dm644 sl.1 $(DESTDIR)$(MANDIR)/man1/sl.1
	$(INSTALL) -Dm644 sl.1.ja $(DESTDIR)$(MANDIR)/ja/man1/sl.1

install: sl man
	$(INSTALL) -Dm755 $(DESTDIR)$(BINDIR)/sl

clean:
	rm -f sl

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/sl
	rm -f $(DESTDIR)$(MANDIR)/man1/sl.1
	rm -f $(DESTDIR)$(MANDIR)/ja/man1/sl.1

distclean: clean
