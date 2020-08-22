#!/bin/bash

### Update cluster
git pull -v
cd API
git pull -v
cd ../SQL
git pull -v
cd ../WEB
git pull -v

docker-compose build
