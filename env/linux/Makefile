
#
# First install docker on Mac:
#
# https://docs.docker.com/get-docker/
#
# Then we are going to install ubuntu:xenial
# for you (this is what AWS uses, v16.04).
#

mac: install-mac

.PHONY: mac

linux: install-linux

.PHONY: install-linux

install-mac:
	@docker run -it -v `pwd`:/src ubuntu:xenial /bin/bash
.PHONY: install-mac

inspect-mac:
	@docker ps -a
.PHONY: inspect-mac

clear-mac:
	@docker rm -f x
.PHONY: clear-mac

#
# First run this manually to get Makefile on Linux:
#
# 	cd src
# 	./start.sh
#

install-linux:
	@apt-get update -y
	@apt-get install nasm -y
.PHONY: install-linux

build:
	@nasm -f elf64 -o meditations.o meditations.asm
	@ld -o meditations meditations.o
.PHONY: build

call: build
	@./meditations
.PHONY: call
