#!/usr/bin/env bash

sudo yum -y install wget
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm

sudo yum -y install mysql-server

sudo service mysqld restart

password=$(sudo grep -oP 'temporary password(.*): \K(\S+)' /var/log/mysqld.log)
mysqladmin --user=root --password="$password" password aaBB@@cc1122
mysql --user=root --password=aaBB@@cc1122 -e "UNINSTALL PLUGIN validate_password;"
mysqladmin --user=root --password="aaBB@@cc1122" password "123456"
mysql -u root -p123456 -e "create database CONFLUENCE;"

mysql -u root -p123456 -e "FLUSH PRIVILEGES;"

sudo service mysqld restart
sudo chkconfig mysqld on

