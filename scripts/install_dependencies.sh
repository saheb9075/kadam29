#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

sudo docker build -t kadam1 /home/ubuntu/app/

sudo docker run -d --name kadam1 -p 80:8080 kadam
docker stop kadam
