#!/bin/bash
git checkout -m main
git pull origin main
docker-compose down
docker-compose up -d --build