#!/bin/bash

INSTANCE_NAME=elevator-py-example
PYTHON_VERSION=2.7

docker rm -v ${INSTANCE_NAME}

docker run -it \
	--name=${INSTANCE_NAME} \
	-v $PWD:/home/${PWD##*/} \
	--network host \
	python:${PYTHON_VERSION} \
	/bin/bash -c 'pip install requests;
		cd /home/2019-blind-2nd-elevator/example;
		python example.py'
