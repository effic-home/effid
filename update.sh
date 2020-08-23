#!/bin/bash

docker rmi effid_web:latest
docker rmi effid_api:latest

### Update cluster
git pull -v

cd API
git pull -v
cd ../SQL
git pull -v
cd ../WEB
git pull -v

cd ..
docker-compose build
docker-compose up -d
