FROM debian:stretch
LABEL maintainer="BitcoinHard Developers <dev@bitcoinhard.org>"
LABEL description="Dockerised BitcoinHardCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
