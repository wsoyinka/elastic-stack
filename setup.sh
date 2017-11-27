#!/bin/bash


apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-cache policy docker-ce
apt-get install -y docker-ce
apt-get install -y docker-compose
#systemctl status docker
#sudo groupadd docker
usermod -aG docker ubuntu
docker pull wsoyinka/elastic-stack
