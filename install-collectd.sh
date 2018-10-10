#!/bin/bash
set -e
#Install collectd
if [ $(dpkg-query -W -f='${Status}' collectd 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get update && sudo apt-get install collectd collectd-utils -y
fi
#Copy config file for collectd
echo "Please remember change your host"
sudo cp collectd.conf /etc/collectd/collectd.conf
#Restart service
sudo service collectd restart
