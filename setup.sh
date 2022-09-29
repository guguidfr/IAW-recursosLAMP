#!/bin/bash
sudo apt update && sudo apt -y upgrade
sudo apt install -y neofetch && sudo apt install -y git
#echo "vagrant:vagrant" | sudo chpasswd
#git clone https://github.com/guguidfr/get-ansible-debian.git
#git clone https://github.com/guguidfr/Proyecto.git
#sh ./get-ansible-debian/get-ansible.sh
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo systemctl restart sshd;
sudo apt install -y curl
sudo apt install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-php.list
curl -fsSL  https://packages.sury.org/php/apt.gpg| sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/sury-keyring.gpg
sudo apt update && sudo apt -y upgrade
sudo apt install -y zip
sudo apt install -y apache2 apache2-utils
sudo apt-get install -y php libapache2-mod-php php-mysql php-common php-cli php-common php-json php8.1-opcache php-readline
sudo a2enmod php8.1
sudo chown www-data:www-data /var/www/html/ -R
echo "<?php phpinfo(); ?>" >> /var/www/html/info.php
sudo apt install -y mariadb-server mariadb-client
systemctl restart apache2
sudo apt update && sudo apt -y upgrade
