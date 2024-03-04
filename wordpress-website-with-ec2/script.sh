#!/bin/bash
sudo yum update
sudo yum install mariadb105-server.x86_64 httpd php php-mysqlnd -y

wget https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz

sudo mv wordpress/* /var/www/html/

sudo chmod -R 755 wp-content
sudo chown apache:apache /var/www/html
sudo systemctl start httpd
sudo systemctl enable httpd























