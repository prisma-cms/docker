#!/bin/bash

set -e

echo "entrypoint-api.sh deprecated!"

until curl --silent $endpoint >/dev/null; do
  >&2 echo "Prisma server is unavailable - sleeping"
  sleep 5
done

>&2 echo "Prisma server is up - executing command"

# Пока что пропускаем эту логику, потому что обе схемы деплоятся в один волюм
# 
# Проверяем наличие схемы
# if [ -f "src/schema/generated/api.fragments.js" ]; then 
#   echo 'Skip deploy schema due already deployed'
# else
#   echo 'Deploy prisma schema'
#   yarn deploy
# fi

yarn deploy


# if $cmd; then
#   exec $cmd
# fi
  
# Есть небольшая вероятность, что если использовать не $@, а собственную переменную, то 
# деплой контейнера в таком случае заменит имеющийся контейнер сразу.
# Но это не точно.
# https://stackoverflow.com/questions/55173962/docker-compose-entrypoint-script-stops-container-with-exit-0
# exec $cmd
exec "$@"
