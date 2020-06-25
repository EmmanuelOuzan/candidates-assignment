#!/bin/bash
# Disables Strict Key check to skip the check
sudo sed -i '19 a StrictHostKeyChecking no' /etc/ssh/ssh_config
# Generating a key 
ssh-keygen -q -t rsa -N '' -f /vagrant/id_rsa
chmod 600 /vagrant/id_rsa*
# Adding the key to the nessecery files to be able to use it.
cat /vagrant/id_rsa.pub | tee -a /home/vagrant/.ssh/authorized_keys
cp /vagrant/id_rsa /home/vagrant/.ssh

# For exercise6 to work with root
# Copys the keys to root directorys
cat /vagrant/id_rsa.pub | sudo tee -a /root/.ssh/authorized_keys
sudo cp /vagrant/id_rsa /root/.ssh

chmod 600 /root/.ssh/id_rsa
