#!/bin/bash
#add fix to exercise5-server2 here

echo 'Host server1
    User vagrant
    StrictHostKeyChecking no
    IdentityFile /home/vagrant/.ssh/id_rsa.pub' >> /home/vagrant/.ssh/config

cp -p '/vagrant/.vagrant/machines/server1/virtualbox/private_key' '/home/vagrant/.ssh/id_rsa.pub'
chmod 600 /home/vagrant/.ssh/id_rsa.pub

cp -p '/vagrant/.vagrant/machines/server2/virtualbox/private_key' '/home/vagrant/id_rsa.pub'
chmod 600 /home/vagrant/id_rsa.pub

scp -o StrictHostKeyChecking=no -i '/home/vagrant/.ssh/id_rsa.pub' '/home/vagrant/id_rsa.pub' vagrant@192.168.100.10:'/home/vagrant/.ssh/id_rsa.pub'