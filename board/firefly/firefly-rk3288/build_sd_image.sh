#!/bin/bash

set -ue

D=board/firefly/firefly-rk3288
CFG=${D}/sd-image.cfg

T=$(mktemp -d)
mkdir -p $T/{root,tmp}

$HOST_DIR/usr/bin/genimage		\
	--rootpath $T/root/			\
	--tmppath $T/tmp/			\
	--inputpath $BINARIES_DIR/	\
	--outputpath $BINARIES_DIR/	\
	--config ${CFG}				\

rm -rf $T
