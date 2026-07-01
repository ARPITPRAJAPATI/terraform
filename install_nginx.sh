#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
systemctl start nginx
systemctl enable nginx
echo "<h1>Terraform is doing its work</h1>" > /var/www/html/index.html