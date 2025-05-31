#!/bin/bash
git checkout -m main
git pull origin main
sudo docker-compose down
sudo docker-compose up -d --build