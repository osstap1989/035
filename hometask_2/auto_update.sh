#!/bin/bash
date=`date "+%Y_%m_%d"` ;
sudo apt-get update >/dev/null 2>&1
sudo apt-get -qy upgrade >> /var/log/update-$date.log
