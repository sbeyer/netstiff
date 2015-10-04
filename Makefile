# simple, stupid GNU Makefile for (un)installing netstiff
ifndef DESTDIR
DESTDIR=/usr/local
endif
PROGNAME=netstiff

all:
	test -e /usr/bin/ruby

install: all $(PROGNAME) $(PROGNAME).1 ChangeLog
	mkdir -p $(DESTDIR)/bin
	install -p -m 755 $(PROGNAME) $(DESTDIR)/bin/
	mkdir -p $(DESTDIR)/share/man/man1
	install -p -m 644 $(PROGNAME).1 $(DESTDIR)/share/man/man1/
	gzip -9 $(DESTDIR)/share/man/man1/$(PROGNAME).1
	mkdir -p $(DESTDIR)/share/doc/$(PROGNAME)
	install -p -m 644 ChangeLog $(DESTDIR)/share/doc/$(PROGNAME)/

uninstall:
	$(RM) $(DESTDIR)/bin/$(PROGNAME) \
	      $(DESTDIR)/share/man/man1/$(PROGNAME).1.gz \
	      $(DESTDIR)/share/doc/$(PROGNAME)/THANKSTO \
	      $(DESTDIR)/share/doc/$(PROGNAME)/ChangeLog
	rmdir $(DESTDIR)/share/doc/$(PROGNAME)/
