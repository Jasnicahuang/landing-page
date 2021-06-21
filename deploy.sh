#!/bin/bash

rm -rf /var/www/html/
sudo chown -R www-data:www-data /var/www/
sudo chmod -R 755 /var/www/
sudo -- sh -c "echo $(hostname -I | awk '{print $2}') landingpage.com >> /etc/hosts"
sudo service nginx restart
