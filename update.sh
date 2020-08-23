#!/bin/bash

docker-compose down

docker rmi effid_web:latest
docker rmi effid_api:latest

### Update cluster
git pull -v
git -C ./WEB pull -v
git -C ./API pull -v
git -C ./SQL pull -v

docker-compose up -d --build
