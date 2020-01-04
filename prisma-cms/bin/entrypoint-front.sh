#!/bin/bash

set -e

echo "entrypoint-front.sh deprecated!"

# Проверяем наличие схемы
# Пока ее не будет, дальнейшее выполнение нельзя делать
while [ ! -f "src/schema/generated/api.fragments.js" ]; do
  >&2 echo "Schema still not deployed from api service - sleeping"
  sleep 5
done

>&2 echo "Deployed schema exists - executing command"



# ls -la

if [ $ENV_MODE = "production" ] ; then

  yarn build;

fi

# if $cmd; then
#   exec $cmd
# fi
  
# Есть небольшая вероятность, что если использовать не $@, а собственную переменную, то 
# деплой контейнера в таком случае заменит имеющийся контейнер сразу.
# Но это не точно.
# https://stackoverflow.com/questions/55173962/docker-compose-entrypoint-script-stops-container-with-exit-0
# exec $cmd
exec "$@"
