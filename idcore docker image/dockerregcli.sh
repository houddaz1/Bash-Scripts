#!/bin/bash
sudo echo "192.168.1.100 cocentris.registry.com" >> /etc/hosts
sudo echo "{ 
   "insecure-registries" : ["cocentris.registry.com:5000"]
}" > /etc/docker/daemon.json

sudo docker volume create volume1 
