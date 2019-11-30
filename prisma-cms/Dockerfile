FROM mhart/alpine-node:10 as build


# RUN apk add bash mc python3 make g++
RUN apk add bash mc
# RUN apk add --upgrade --no-cache vips-dev build-base \
#   --repository https://alpine.global.ssl.fastly.net/alpine/v3.10/community/

WORKDIR /www/boilerplate/

COPY ./boilerplate .

RUN yarn install --ignore-engines