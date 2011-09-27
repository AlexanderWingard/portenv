#!/bin/sh

ME=`readlink -f $0`
ROOT=`dirname $ME`
PREFIX=$ROOT/target

ERL_TOP=$ROOT/otp
cd $ERL_TOP
./otp_build autoconf
./configure --prefix=$PREFIX
gmake
cd $ROOT