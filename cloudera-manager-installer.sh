#!/bin/bash
apt -y update
apt -y upgrade
sysctl -w vm.swappiness=10
echo "vm.swappiness = 10" >> /etc/sysctl.conf
wget https://archive.cloudera.com/cm5/installer/latest/cloudera-manager-installer.bin
chmod u+x cloudera-manager-installer.bin
./cloudera-manager-installer.bin --i-agree-to-all-licenses --noprompt --noreadme --nooptions
