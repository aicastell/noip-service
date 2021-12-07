FROM ubuntu:20.04

MAINTAINER Angel Ivan Castell Rovira <contacto@criptobadia.es>

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y wget make gcc

RUN wget -qO noip.tar.gz http://www.noip.com/client/linux/noip-duc-linux.tar.gz && \
    mkdir noip && \
    tar -C noip --strip-components=1 -xvf ./noip.tar.gz && \
    cd noip && \
    sed -i '/no-ip2/d' Makefile && \
    make && \
    make install && \
    rm -Rf noip && \
    rm -f noip.tar.gz

COPY start.sh start.sh

RUN chmod +x /start.sh

CMD /bin/sh /start.sh
