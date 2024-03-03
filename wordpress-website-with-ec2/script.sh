#!/bin/bash

yum update
yum install httpd php mariadb105-server.x86_64 php-mysqlnd -y

wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
sudo mv wordpress/* /var/www/html/
























