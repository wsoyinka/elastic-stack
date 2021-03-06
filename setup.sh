#!/bin/bash


apt-get remove docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-cache policy docker-ce
apt-get install -y docker-ce

curl -sS -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#apt-get install -y docker-compose
usermod -aG docker ubuntu
sysctl -w vm.max_map_count=262144
git clone https://github.com/wsoyinka/elastic-stack.git
cd elastic-stack/
docker-compose up elastic-stack
#systemctl status docker
#sudo groupadd docker
#docker pull wsoyinka/elastic-stack
