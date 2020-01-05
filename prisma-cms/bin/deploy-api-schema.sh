#!/bin/bash

set -e

until curl --silent $endpoint >/dev/null; do
  >&2 echo "Prisma server is unavailable - sleeping"
  sleep 5
done

>&2 echo "Prisma server is up - executing command"

yarn deploy
