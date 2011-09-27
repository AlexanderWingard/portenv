ROOT := $(shell pwd)
PREFIX := $(ROOT)/target

ERL_TOP=$(ROOT)/otp
export ERL_TOP

.PHONY: otp

otp:
	cd otp && ./otp_build autoconf
	cd otp && ./configure --prefix=$(PREFIX)
	cd otp && gmake
