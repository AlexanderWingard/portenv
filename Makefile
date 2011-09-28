ROOT := $(shell pwd)
PREFIX := $(ROOT)/target

ERL_TOP=$(ROOT)/otp
export ERL_TOP

.PHONY: otp emacs dotfiles

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