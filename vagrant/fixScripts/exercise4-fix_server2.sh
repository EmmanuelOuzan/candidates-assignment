#!/bin/bash
# Adds server1 to the hosts file to be able to ping the server name
sudo sed -i "1i192.168.100.10 server1" /etc/hosts
