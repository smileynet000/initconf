#! /bin/bash


echo Copy configuration files...
sudo rm -f /etc/resolv.conf
sudo cp -f /usr/bin/stub-resolv.conf /etc/resolv.conf

sudo chown root /etc/resolv.conf
sudo chgrp root /etc/resolv.conf
sudo chmod 777 /etc/resolv.conf
