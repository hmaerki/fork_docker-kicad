
FROM ubuntu:22.04
LABEL Description="Minimal KiCad image based on Ubuntu"

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
	apt-get -y update && \
	apt-get -y install software-properties-common && \
	add-apt-repository --yes ppa:kicad/kicad-8.0-releases && \
    apt-get -y update && \
	apt-get -y install --install-recommends kicad && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/* 
