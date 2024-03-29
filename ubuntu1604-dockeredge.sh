#!/bin/bash
sudo apt-get update

sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) edge"

sudo apt-get update

sudo apt-get install docker-ce=17.05.0~ce-0~ubuntu-xenial

sudo groupadd docker

sudo usermod -aG docker $USER