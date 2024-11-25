#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update your existing list of packages
sudo apt update

# Install prerequisite packages which let apt use packages over HTTPS
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common git

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package index again to include Docker's repository
sudo apt update

# Install Docker CE, Docker CLI, and containerd
sudo apt install -y docker-ce docker-ce-cli containerd.io

# (Optional) Add your user to the 'docker' group to run Docker without sudo
# sudo usermod -aG docker $USER
# echo "You might need to log out and log back in for group changes to take effect."

# Verify Docker installation
sudo docker --version

# Create a directory for the 2048 game and navigate into it
mkdir -p ~/2048-game && cd ~/2048-game

# Create a Dockerfile
cat <<EOL > Dockerfile
# Use an official Nginx image as the base image
FROM nginx:alpine

# Set working directory to a temporary directory
WORKDIR /tmp

# Install git, clone the 2048 game repository, and move it to the Nginx HTML directory
RUN apk add --no-cache git && \\
    git clone https://github.com/gabrielecirulli/2048.git && \\
    rm -rf /usr/share/nginx/html/* && \\
    mv 2048/* /usr/share/nginx/html/ && \\
    rm -rf 2048

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
EOL

# Build the Docker image
sudo docker build -t my-2048-game .

# Run the game container, mapping port 80 of the container to port 80 on the host
sudo docker run -d -p 80:80 --name 2048-game my-2048-game

echo "2048 game is running and accessible at http://localhost"
