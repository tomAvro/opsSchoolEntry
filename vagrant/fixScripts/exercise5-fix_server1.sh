#!/bin/bash
#add fix to exercise5-server1 here

echo 'Host server2
    User vagrant
    StrictHostKeyChecking no
    IdentityFile /home/vagrant/.ssh/id_rsa.pub' >> /home/vagrant/.ssh/config
