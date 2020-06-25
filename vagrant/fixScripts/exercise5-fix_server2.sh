#!/bin/bash
# Disable Key checking
sudo sed -i '19 a StrictHostKeyChecking no' /etc/ssh/ssh_config
# providing correct(safe) permissions
chmod 600 /vagrant/id_rsa*
# Copys the keys to the location where the server will use it automaticly
cat /vagrant/id_rsa.pub | tee -a /home/vagrant/.ssh/authorized_keys
cp /vagrant/id_rsa /home/vagrant/.ssh


# For exercise6 to work with root as well
# Copys public and private key to the relevent locations
cat /vagrant/id_rsa.pub | sudo tee -a /root/.ssh/authorized_keys
sudo cp /vagrant/id_rsa /root/.ssh

chmod 600 /root/.ssh/id_rsa
