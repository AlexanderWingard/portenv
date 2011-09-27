ROOT := $(dir $(shell pwd))
PREFIX := $(ROOT)/target

.PHONY: otp

otp: otp/bin/erl
	ERL_TOP=$ROOT/otp
	cd otp
	./otp_build autoconf
	./configure --prefix=$PREFIX
	gmake
