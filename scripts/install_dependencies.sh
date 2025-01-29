#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

sudo docker build -t kadam /home/ubuntu/app/

sudo docker -d --name saheb -p 80:80 kadam