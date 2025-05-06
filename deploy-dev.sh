#!/bin/bash
git checkout -m dev
git pull origin dev
docker-compose down
docker-compose up -d --build