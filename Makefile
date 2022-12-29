.PHONY: help

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: dependency/wkusnierczyk/make

dependency/wkusnierczyk/make: | dependency/wkusnierczyk
	git clone https://github.com/wkusnierczyk/make.git $@

dependency/wkusnierczyk: dependency
	-mkdir $@

dependency:
	-mkdir $@

clean:
	-rm -rf dependency
