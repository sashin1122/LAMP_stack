#!/bin/bash
#########################
# Author: Sashin Hemrajh
#
# Description: SuiteCRM installer
#########################

#########################
# VARIABLES
#########################
DB_INSTALL=LocalInstall
#########################
# FUNCTIONS
#########################

#########################
# MAIN
#########################
echo "Starting LAMP stack install"
echo
echo "Installing Apache2..."
sudo apt update
sudo apt install apache2
sudo systemctl stop apache2.service
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
echo "Apache2 installed!"
echo
echo "Installing Mariadb..."
sudo apt-get install mariadb-server mariadb-client
sudo systemctl stop mariadb.service
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
echo "Mariadb installed!"
echo
echo "Installing PHP 7.2"
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo add-apt-repository ppa:ondrej/apache2
sudo apt update
sudo apt install php7.2 libapache2-mod-php7.2 php7.2-common php7.2-mysql php7.2-gmp php7.2-curl php7.2-intl php7.2-mbstring php7.2-xmlrpc php7.2-gd php7.2-bcmath php7.2-imap php7.2-xml php7.2-cli php7.2-zip
echo "PHP 7.2 installed!"
echo
echo "For now the rest is up to you!"
