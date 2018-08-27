#!/bin/bash
#add fix to exercise5-server1 here

ssh-keygen
ssh-copy-id -i ~/.ssh/id_rsa.pub server2

cat <<EOT >> /home/vagrant/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
EOT