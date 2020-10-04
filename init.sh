#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y apache2
yes "n" | command
yes "n" | command

sudo ufw app list
sudo ufw enable
sudo ufw allow http
sudo ufw allow https
sudo a2enmod ssl
sudo a2enmod headers
sudo a2ensite default-ssl
sudo a2enconf ssl-params
sudo systemctl restart apache2
sudo apt-get install -y libapache2-mod-wsgi
sudo a2enmod wsgi
sudo apt install python3-pip
yes "y" | command
sudo apt-get install -y python3-venv
cd 
mkdir flask_app
cd flask_app
python3 -m venv venv
source venv/bin/activate
pip3 install Flask
python3 -m flask --version
