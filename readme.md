## Prerequirments
- git
- docker v 19+
- docker-compose v 1.25+

## Instalation
1. Clone project with submodules
```
git clone --recurse-submodules https://github.com/prisma-cms/docker my-project-name
cd my-project-name
```
2. Copy and edit web-server config file
```
cp caddy/Caddyfile.sample caddy/Caddyfile
```

## Start dev
```
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up --build -d
```

## Start prod
```
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up --build -d
```

## Stop all containers
```
# In project's folder
docker-compose stop
```

## Remove all containers
```
# In project's folder
docker-compose down
```