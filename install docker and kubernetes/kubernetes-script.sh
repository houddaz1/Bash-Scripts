#!/bin/bash

sudo apt install apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-focal main"

sudo apt install kubeadm kubelet kubectl kubernetes-cni

#Disable swap memory
sudo swapoff -a



