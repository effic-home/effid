#!/bin/bash

### Mise a jour et installation utilitaires de base
apt update -y
apt upgrade -y
apt install snmpd git -y
apt install apt-transport-https ca-certificates software-properties-common -y

### Installer Docker
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
curl https://download.docker.com/linux/raspbian/gpg
echo "deb https://download.docker.com/linux/raspbian/ stretch stable" > /etc/apt/sources.list
apt-get update
apt upgrade -y

### Lancement automatique Service Docker
systemctl start docker.service
systemctl enable docker.service
docker info

## Installation Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
#apt install -y libffi-dev libssl-dev
#apt install -y python3 python3-pip
#pip3 install docker-compose

### Installer cluster
git clone https://github.com/effid/effid
cd effid
git clone https://github.com/effid/effi-API API
git clone https://github.com/effid/effid-sql SQL
git clone https://github.com/effid/effid-web-php WEB

echo " "
echo " "
echo "Modifiez le fichier .env puis lancez les conteneurs avec ./start.sh !"
echo " "
echo " "
