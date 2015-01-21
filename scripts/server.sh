#!/usr/bin/env bash

block="
NameVirtualHost *:80

<VirtualHost *:80>
    ServerName $1
    DocumentRoot $2


    <Directory $2>
        AllowOverride All
        Allow from All
    </Directory>


    ErrorLog $2/error.log
    CustomLog $2/access.log combined
</VirtualHost>
"

echo "$block" > "/etc/apache2/sites-available/$1"
ln -fs "/etc/apache2/sites-available/$1" "/etc/apache2/sites-enabled/$1"

service apache2 restart
