#!/bin/sh

(
  rm -rf frontend || true
  git clone -b built https://github.com/stjj-de/frontend.git
)

docker compose pull
docker compose up -d
