#!/bin/bash
echo "#################################"
echo "LAMP Web Server on Amazon Linux 2"
echo "#################################"

echo "##########################"
echo "Updating software packages"
echo "##########################"

sudo yum update -y

echo "###################################"
echo "Install the lamp-mariadb10.2-php7.2"
echo "and php7.2 Amazon Linux Extras repo"
echo "sitories to get the latest versions" 
echo "of the LAMP MariaDB and PHP packages"
echo "for Amazon Linux 2."
echo "###################################"

sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2

echo "#######################################"
echo "install the Apache web server, MariaDB,"
echo "and PHP software packages."
echo "#######################################"

sudo yum install -y httpd mariadb-server

echo "##########################"
echo "Start the Apache web server"
echo "##########################"

sudo systemctl start httpd

echo "##########################################"
echo "Use the systemctl command to configure the" 
echo "Apache web server to start at each system boot."
echo "##########################################"

sudo systemctl enable httpd

echo "##################################"
echo "Verify that httpd is on by running"
echo "##################################"

sudo systemctl is-enabled httpd

echo "###########################################################"
echo "Add your user (in this case, ec2-user) to the apache group."
echo "###########################################################"

sudo usermod -a -G apache ec2-user

echo "###########################"
echo "Exiting, please login again"
echo "###########################"

exit

