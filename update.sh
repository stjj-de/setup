#!/bin/sh
docker pull docker.pkg.github.com/stjj-de/frontend/frontend:latest
docker pull docker.pkg.github.com/stjj-de/backend/backend:latest
docker-compose up -d
