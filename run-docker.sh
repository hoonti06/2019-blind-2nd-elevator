#!/bin/bash

GOROOT=/usr/local/go
INSTANCE_NAME=elevator-server
GOLANG_VERSION=1.9.1

docker rm -v ${INSTANCE_NAME}

docker run -it \
	--name=${INSTANCE_NAME} \
	-e GOROOT=${GOROOT} \
	-v $PWD:/go/src/${PWD##*/} \
	--network host \
	golang:${GOLANG_VERSION} \
	/bin/bash -c 'export PATH=$PATH:${GOROOT}/bin;
	cd /go/src/2019-blind-2nd-elevator;
	./run-server.sh;
	/bin/bash'
