#!/bin/bash
sudo echo "192.168.1.100 cocentris.registry.com" >> /etc/hosts
sudo echo "{ 
   "insecure-registries" : ["cocentris.registry.com:5000"]
}" > /etc/docker/daemon.json

sudo docker pull docker-registry:5000/ahmed/idcoreapp:v1
sudo docker run -it -p 9090:8080 -p 5432:5432 docker-registry:5000/ahmed/idcoreapp:v1
