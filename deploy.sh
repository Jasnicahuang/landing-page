#!/bin/bash

sudo cp -r /tmp/lp-test/* /var/www/landingpage.com/
sudo chown -R www-data:www-data /var/www/
sudo chmod -R 755 /var/www/
sudo sed -i 's|/var/www/html|/var/www/landingpage.com|g' /etc/nginx/sites-available/default
sudo -- sh -c "echo $(hostname -I) landingpage.com >> /etc/hosts"
sudo service nginx restart
