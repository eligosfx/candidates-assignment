#!/bin/bash
#add fix to exercise5-server2 here

ssh-keygen
ssh-copy-id -i ~/.ssh/id_rsa.pub server1

cat <<EOT >> /home/vagrant/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
EOT