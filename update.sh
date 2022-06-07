#!/bin/sh

(
  cd frontend
  git pull
)

docker compose pull
docker compose up -d
