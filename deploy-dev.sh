#!/bin/bash
git checkout -m dev
git pull origin dev
sudo docker-compose down
sudo docker-compose up -d --build