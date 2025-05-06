#!/bin/bash

# Create Nginx config
cat <<EOF | sudo tee /etc/nginx/conf.d/vite-react-app.conf
server {
    listen 80;
    server_name localhost;

    root /var/www/html/vite-react-app/dist;
    index index.html;

    location / {
        try_files \$uri \$uri/ /index.html;
    }
}
EOF

# Remove default config if exists
sudo rm -f /etc/nginx/conf.d/default.conf

# Set correct permissions (optional but helpful)
sudo chmod -R 755 /var/www/html/vite-react-app
sudo chown -R nginx:nginx /var/www/html/vite-react-app

# Enable and restart Nginx
sudo systemctl enable nginx
sudo systemctl restart nginx
