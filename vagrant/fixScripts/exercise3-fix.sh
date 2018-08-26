#!/bin/bash
#add fix to exercise3 here

sudo sed -i 's/deny from all/Allow from all/g' /etc/apache2/sites-available/default
echo "ServerName localhost" | sudo tee /etc/apache2/conf.d/fqdn
sudo /etc/init.d/apache2 reload
