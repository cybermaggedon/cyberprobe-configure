
VERSION=$(shell git describe | sed 's/^v//')
CONTAINER=cybermaggedon/cyberprobe-configure

all: deps container

.PHONY: deps

deps: wheels

wheels: Makefile
	-rm -rf wheels wheels.tmp
	mkdir wheels.tmp
	(cd wheels.tmp; pip3 wheel requests)
	mv wheels.tmp wheels

container:
	docker build -t ${CONTAINER}:${VERSION} -f Dockerfile .

push:
	docker push ${CONTAINER}:${VERSION}


VERSION=$(shell git describe | sed 's/^v//')

