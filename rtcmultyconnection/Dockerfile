FROM mhart/alpine-node:10 as build

RUN apk add git bash mc

WORKDIR /

RUN git clone https://github.com/Fi1osof/RTCMultiConnection

WORKDIR /RTCMultiConnection
RUN yarn --ignore-engines

EXPOSE 9001
