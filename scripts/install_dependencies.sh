#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

sudo docker build -t kadam1 /home/ubuntu/app/

sudo docker run -d -p kadam1 80:80 kadam
docker stop kadam
