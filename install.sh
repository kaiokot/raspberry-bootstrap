#!/bin/bash

# Kaio Turubia 2022/12/14 
# Docker
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi
groups pi

# System update
sudo apt-get update && sudo apt-get -y upgrade

# Git
sudo apt install -y git

# Python
sudo apt install -y python3 
sudo apt install -y python3-pip 

# Software dependencies
sudo apt-get remove python-configparser
sudo pip3 -v install docker-compose
docker-compose --version

# fswebcam
sudo apt-get -qy install fswebcam

# ffmpeg
sudo apt-get -qy install software-properties-common
sudo add apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get -qy install ffmpeg 

# git config
git config --global user.email "kaiokot@gmail.com"
git config --global user.name "Kaio Turubia"
