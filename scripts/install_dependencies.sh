#!/bin/bash
sudo yum update -y

# Install Node.js (Optional: for SSR or future use)
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs

# Install Nginx
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx

# Create deploy directory if not exists
sudo mkdir -p /var/www/html/vite-react-app
