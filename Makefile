.PHONY: help setup build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: dependency/mirror/make

build: | /var/lib/mirror/make
	cd $| && ./bootstrap
	cd $| && ./configure
	make -C $| CLFAGS+=-g
	# make -C $| install

dependency/mirror/make: | dependency/mirror
	git clone https://github.com/mirror/make.git $@

dependency/mirror: dependency
	-mkdir $@

dependency:
	-mkdir $@

clean:
	-rm -rf dependency
