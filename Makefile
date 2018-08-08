target:
	mkdir -p debs .ccache

build: target
	docker run -ti \
		-v ${PWD}/debs:/home/pi/work \
		-v ${PWD}/.ccache:/home/pi/.ccache \
		yangxuan8282/raspbian:builder \
		/bin/bash
