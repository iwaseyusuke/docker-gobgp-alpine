# GoBGP based on Alpine

FROM golang:1.6-alpine

MAINTAINER IWASE Yusuke <iwase.yusuke0@gmail.com>
ARG user=iwaseyusuke

USER root
WORKDIR /root

RUN apk add --no-cache --virtual=build-dependencies \
    gcc \
    git \
    linux-headers \
    musl-dev \
 && apk add --no-cache \
    vim \
 && rm /usr/bin/vi && ln -s /usr/bin/vim /usr/bin/vi \
 && go get github.com/osrg/gobgp/gobgp \
 && go get github.com/osrg/gobgp/gobgpd \
 && rm -rf ${GOPATH}/pkg/* ${GOPATH}/src/* \
 && apk del --purge build-dependencies
