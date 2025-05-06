#!/bin/bash
sudo yum update -y

# Install Node.js (Optional)
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs

# Install Nginx
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx

# Create deploy directory
sudo mkdir -p /var/www/html/vite-react-app
