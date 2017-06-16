#!/bin/bash

function editFile {
    sudo sh -c 'echo "<VirtualHost *:8080>
    DocumentRoot /home/ubuntu/workspace/public
    ServerName https://\${C9_HOSTNAME}:443
    LogLevel info
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
    <Directory /home/ubuntu/workspace>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
ServerName https://\${C9_HOSTNAME}
# vim: syntax=apache ts=4 sw=4 sts=4 sr noet" > /etc/apache2/sites-enabled/001-cloud9.conf'
}
editFile

function mySQL {
    mysql-ctl cli

}
mySQL