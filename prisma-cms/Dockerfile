FROM mhart/alpine-node:10 as build


# RUN apk add bash mc python3 make g++
RUN apk add bash mc curl
# RUN apk add --upgrade --no-cache vips-dev build-base \
#   --repository https://alpine.global.ssl.fastly.net/alpine/v3.10/community/

WORKDIR /www/boilerplate/

COPY ./boilerplate .
COPY ./bin/* /usr/bin/

# Установку зависимостей нельзя переносить в entrypoint,
# потому что тот скрипт срабатывает уже тогда, когда контейнер создан и заменен имеющийся (если уже был запущен)
RUN yarn install --ignore-engines