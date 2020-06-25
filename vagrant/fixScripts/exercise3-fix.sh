#!/bin/bash
# Allows access to the apache server and then restarting apache2 service
sudo sed -i '0,/deny from all/ s/deny from all/Allow from all/' /etc/apache2/sites-available/default ;sudo service apache2 restart
