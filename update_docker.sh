#!/bin/sh

(
  cd website || exit
  docker-compose pull
  docker-compose up -d
)

(
  cd umami || exit
  docker-compose pull
  docker-compose up -d
)

(
  cd rocketchat || exit
  docker-compose pull
  docker-compose up -d
)

(
  cd caddy || exit
  docker-compose pull
  docker-compose restart
)
