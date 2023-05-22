#!/bin/bash

# Update your existing list of packages
sudo apt update

# Install a few prerequisite packages which let apt use packages over HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update the package database with the Docker packages from the newly added repo
sudo apt update

# Confirm you're about to install from the Docker repo instead of the default Ubuntu repo
apt-cache policy docker-ce

# Install Docker
sudo apt install docker-ce -y

# Pull 2048 game image from Docker Hub
sudo docker pull alexwhen/docker-2048

# Run the game
sudo docker run -d -p 80:80 alexwhen/docker-2048
