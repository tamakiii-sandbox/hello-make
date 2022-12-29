.PHONY: help setup clean

IMAGE := tamakiii-sandbox/hello-make

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(IMAGE) .

bash: build
	docker run -it --rm -v $(PWD):/var/lib/tamakiii-sandbox/hello-make -w /var/lib/mirror/make $(IMAGE) bash
