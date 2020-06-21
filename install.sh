#!/bin/bash
apt update -y
apt upgrade -y
apt install snmpd git -y
apt install apt-transport-https ca-certificates software-properties-common -y

## Installer Docker
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
curl https://download.docker.com/linux/raspbian/gpg
echo "deb https://download.docker.com/linux/raspbian/ stretch stable" > /etc/apt/sources.list
apt-get update
apt upgrade -y

## Lancement automatique Docker
systemctl start docker.service
systemctl enable docker.service
docker info

## Docker Compose
apt install -y libffi-dev libssl-dev
apt install -y python3 python3-pip
pip3 install docker-compose
