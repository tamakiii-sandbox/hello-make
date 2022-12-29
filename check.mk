.PHONY: help check

WORKDIR := /var/lib/mirror/make

help:
	@cat $(firstword $(MAKEFILE_LIST))

check:
	rpm -qf /usr/bin/autoconf
	cd $(WORKDIR) && autoreconf -f -i
