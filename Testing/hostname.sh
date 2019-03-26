#!/bin/bash

# Ask the user what the hostname should be

echo Please enter new hostname:

read hostname

#Set the hostname in Ubuntu
sudo hostnamectl set-hostname $hostname
echo '127.0.0.1 $hostname' | sudo tee -a /etc/hosts

echo Your hostname has been changed to:
hostname
