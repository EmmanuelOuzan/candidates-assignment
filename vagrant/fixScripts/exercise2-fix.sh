#!/bin/bash
# Deletes the line preventing from reaching the address
sudo sed -i '/127.0.0.1 www.ascii-art.de/d' /etc/hosts
