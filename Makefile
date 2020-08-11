.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr/local
endif
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	for script in bin/*; do \
		cp -f $$script $(DESTDIR)$(PREFIX)/bin/; \
		chmod 755 $(DESTDIR)$(PREFIX)/$$script; \
	done
	mkdir -p $(DESTDIR)$(PREFIX)/share/tle
	chmod 755 $(DESTDIR)$(PREFIX)/share/tle
	for file in share/*; do \
		cp -f $$file $(DESTDIR)$(PREFIX)/share/tle/; \
	done
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f tle.1 $(DESTDIR)$(MANPREFIX)/man1/tle.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/tle.1
	if [ "$(PREFIX)" ]; then \
		sed -iba 's:/usr/local:$(PREFIX):' $(DESTDIR)$(PREFIX)/bin/tle; \
	fi

uninstall:
	for script in bin/*; do \
		rm -f $(DESTDIR)$(PREFIX)/bin/$$script; \
	done
	for file in share/*; do \
		rm -f $(DESTDIR)$(PREFIX)/share/tle/$$file; \
	done
	rm -rf $(DESTDIR)$(PREFIX)/bin/tle
	rm -r $(DESTDIR)$(MANPREFIX)/man1/tle.1

PHONY: install uninstall
