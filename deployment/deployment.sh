#!/bin/bash

#OS Pakete update
sudo dnf update
#Install httpd
sudo dnf -y install httpd mariadb-server mariadb php php-mysqlnd
#Dienste starten und für Autostart bereitstellen
systemctl start httpd
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb