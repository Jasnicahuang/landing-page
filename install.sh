#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www
sudo rm -rf /var/www/html/index.html
