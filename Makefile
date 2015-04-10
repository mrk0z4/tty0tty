PROJECT=tty0tty
VERSION=1.2

all: clean
#	make -C module default
	make -C pts all

clean:
#	make -C module clean
	make -C pts clean

install:
	install -m 755 -p pts/tty0tty $(DESTDIR)/usr/bin
	
builddeb:
	cd ..; tar zcf $(PROJECT)_$(VERSION).orig.tar.gz tty0tty
	debuild -uc -us