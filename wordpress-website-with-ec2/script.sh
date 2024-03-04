#!/bin/bash

yum update

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm

rpm -ivh mysql-community-release-el7-5.noarch.rpm

sudo yum install mysql-server httpd php php-mysqlnd -y



cd /var/www/html/
# Create html file
echo "healthy" > healthy.html

wget https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz

mv -r wordpress/* /var/www/html/



sudo chmod -R 755 wp-content
sudo chown apache:apache /var/www/html
sudo chkconfig httpd on  
sudo service httpd start























