
distro = $(shell uname)
ifeq ($(distro), Linux)
	DESTDIR = /usr/bin
#	MANDIR
else
	ifeq ($(distro), Darwin)
	DESTDIR = /usr/local/bin
#	MANDIR
	endif
endif

all:
	@echo Run \'make install\' to install CodeHarbour.
	@echo You may have to run this as root.

install:
	@cp -p codeharbour $(DESTDIR)
	@echo CodeHarbour has been installed!!!

uninstall:
	@rm -rf $(DESTDIR)/codeharbour
	@echo CodeHarbour has been uninstalled!!!
