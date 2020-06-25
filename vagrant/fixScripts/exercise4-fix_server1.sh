#!/bin/bash
# Adds server2 to the hosts file to be able to ping the name 
sudo sed -i "1i192.168.100.11 server2" /etc/hosts
