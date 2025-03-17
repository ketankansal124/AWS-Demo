#!/bin/bash

# For Logs and then we can cat up the log file
exec > /var/log/user-data.log 2>&1

# Update the ubuntu machine
sudo apt update -y

# Install NodeJs in the machine
sudo apt install -y nodejs

# Install npm in the machine
sudo apt install -y npm

# Clone the Repository
git clone https://github.com/ketankansal124/AWS-Demo.git /home/ubuntu/project

# cd in the folder
cd /home/ubuntu/project

# Install Packages
sudo npm i

# Turn up the server
sudo npx pm2 start index.js