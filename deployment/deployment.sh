#!/bin/bash

#OS Pakete updaten
[$DISTRO=Fedora] DISTRO=$(cat /etc/*-release | grep -w NAME | cut -d= -f2 | tr -d '"')
if echo "Current OS: $DISTRO"
then 
sudo dnf update
#Install httpd
sudo dnf -y install httpd mariadb-server mariadb php php-mysqlnd
#Dienste starten und für Autostart bereitstellen
systemctl start httpd
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb
sh mysqlsetup.sh 
mysql --user=root < create-database.sql
wget https://de.wordpress.org/latest-de_DE.tar.gz -P /tmp/
cd /tmp/
tar xvzf latest-de_DE.tar.gz -C /var/www/
mv /home/terminal/Doku/config/wp-config.php /var/www/wordpress/
mv /Doku/wordpress /var/www/
sudo chown -R apache:apache wordpress
mysql --password=test123 --user=test123 wordpress < ~/Doku/Database/pigbenis.sql
fi

else 
echo "Wrong OS u tard"
