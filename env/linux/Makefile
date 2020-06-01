
#
# First install docker on Mac:
#
# https://docs.docker.com/get-docker/
#
# Then we are going to install ubuntu:xenial
# for you (this is what AWS uses, v16.04).
#

enter:
	@docker build . -t meditations:latest
	@docker run -it -v `pwd`:/src --rm meditations:latest bash
.PHONY: enter

call: build
	@./app/meditations
.PHONY: call

build:
	@nasm -f elf64 -o app/meditations.o app/meditations.asm
	@ld -o app/meditations app/meditations.o
.PHONY: build

inspect-mac:
	@docker ps -a
.PHONY: inspect-mac

clear-mac:
	@docker rm -f x
.PHONY: clear-mac
