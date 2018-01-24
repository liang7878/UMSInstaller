#!/bin/sh
sudo apt-get update
sudo apt-get install slapd ldap-utils
sudo dpkg-reconfigure slapd
sudo apt-get install phpldapadmin

#file config
sudo sed -i -e 's/password_hash/password_hash_custom/g' /usr/share/phpldapadmin/lib/TemplateRender.php

sudo sed -i "2i127.0.0.1  example.com" /etc/hosts
