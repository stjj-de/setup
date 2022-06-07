#!/bin/sh

(
  cd frontend
  git clone https://github.com/stjj-de/frontend.git
)

docker compose pull
docker compose up -d
