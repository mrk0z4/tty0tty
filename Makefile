
all: clean
#	make -C module default
	make -C pts all

clean:
#	make -C module clean
	make -C pts clean

install:
	install -m 755 -p pts/tty0tty $(DESTDIR)/usr/bin
	
buildeb:
	cd ..
	tar zcf tty0tty_1.2.orig.tar.gz tty0tty
	cd tty0tty
	debuild -uc -us