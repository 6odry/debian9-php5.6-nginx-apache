#!/bin/bash
sudo a2dissite 000-default
sudo apt-get install apt-transport-https lsb-release ca-certificates -y
echo "deb https://debian.octopuce.fr/snapshots/sury-php/20220630/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
wget -qO - https://debian.octopuce.fr/sury-php/apt.gpg | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install php5.6 php5.6-fpm php5.6-cli -y
sudo a2dissite 000-default
sudo a2enmod proxy_fcgi
sudo a2enconf php5.6-fpm
sudo systemctl daemon-reload
sudo service apache2 restart
sudo service nginx restart