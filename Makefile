ROOT := $(shell pwd)
PREFIX := $(ROOT)/target

ERL_TOP=$(ROOT)/otp
export ERL_TOP

.PHONY: otp emacs dotfiles git org-mode magit

git:
	wget "http://git-core.googlecode.com/files/git-1.7.6.4.tar.gz"
	tar xzvf git-1.7.6.4.tar.gz
	rm git-1.7.6.4.tar.gz
	cd git-1.7.6.4 && ./configure --prefix=$(PREFIX)
	cd git-1.7.6.4 && gmake install

otp:
	cd otp && ./otp_build autoconf
	cd otp && ./configure --prefix=$(PREFIX)
	cd otp && gmake install

emacs:
	cd emacs && ./configure --without-x --prefix=$(PREFIX)
	cd emacs && gmake install

org-mode:
	sed -i 's|\/usr\/local|$(ROOT)\/target|g' org-mode/Makefile
	cd org-mode && make info install

magit:
	sed -i 's|\/usr\/local|$(ROOT)\/target|g' magit/Makefile
	cd magit && make DESTDIR="" install


dotfiles:
	cp dotfiles/.emacs ~
	cp dotfiles/.gitconfig ~
	sed -i 's|PORTENV|$(ROOT)|g' ~/.emacs