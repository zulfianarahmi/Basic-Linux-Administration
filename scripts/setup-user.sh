#!/bin/bash
# Script to create a new sudo user

echo "Enter new username:"
read username
sudo adduser $username
sudo usermod -aG sudo $username
echo "User $username created and added to sudo group."
