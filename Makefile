ROOT := $(shell pwd)
PREFIX := $(ROOT)/target

ERL_TOP=$(ROOT)/otp
export ERL_TOP

.PHONY: otp emacs dotfiles git

git:
	wget "http://git-core.googlecode.com/files/git-1.7.6.4.tar.gz"
	tar xzvf git-1.7.6.4.tar.gz
	cd git-1.7.6.4 && ./configure --prefix=$(PREFIX)
	cd git-1.7.6.4 && gmake install

otp:
	cd otp && ./otp_build autoconf
	cd otp && ./configure --prefix=$(PREFIX)
	cd otp && gmake install

emacs:
	cd emacs && ./configure --without-x --prefix=$(PREFIX)
	cd emacs && gmake install

dotfiles:
	cp dotfiles/.emacs ~
	sed -i 's|PORTENV|$(ROOT)|g' ~/.emacs