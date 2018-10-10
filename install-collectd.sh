#!bin/bash
apt-get update && apt-get install collectd collectd-utils -y
cp collectd.conf /etc/collectd/collectd.conf
service collectd restart