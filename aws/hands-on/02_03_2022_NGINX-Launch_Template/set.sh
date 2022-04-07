#! /bin/bash

yum update -y
amazon-linux-extras install nginx1.12
systemctl start nginx
cd /usr/share/nginx/html
chmod -R 777 /usr/share/nginx/html
rm index.html
wget #Here is your CRM.college Github URL
systemctl restart nginx
systemctl enable nginx