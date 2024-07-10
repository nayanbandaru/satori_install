#!/bin/bash

# Update package information
sudo apt-get update

# Install necessary packages
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package information again
sudo apt-get update

# Install Docker CE
sudo apt-get install -y docker-ce

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Download Satori
wget -P ~/ https://satorinet.io/static/download/linux/satori.zip

# Unzip the downloaded file
unzip ~/satori.zip -d ~/

# Remove the zip file
rm ~/satori.zip

# Change directory to .satori
cd ~/.satori

# Install Python3 venv
sudo apt-get install -y python3-venv

# Run install.sh
bash install.sh

# Run install_service.sh
bash install_service.sh

echo "Installation of Docker and Satori completed successfully."
