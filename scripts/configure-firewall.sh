#!/bin/bash

# Update the package list and install UFW if not installed
sudo apt update
sudo apt install ufw -y

# Allow SSH connections (port 22)
sudo ufw allow OpenSSH
sudo ufw allow 22/tcp

# Allow HTTP (port 80)
sudo ufw allow 80/tcp

# Allow HTTPS (port 443)
sudo ufw allow 443/tcp

# Set default policies to deny incoming and allow outgoing traffic
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Enable UFW
sudo ufw enable

# Show the status of the firewall
sudo ufw status verbose
