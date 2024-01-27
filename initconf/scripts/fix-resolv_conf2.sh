#! /bin/bash


echo Fix resolv.conf...
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
sudo systemctl status systemd-resolved
sleep 11
echo

echo Copy configuration files...
sudo cp -f /usr/bin/stub-resolv.conf /var/run/systemd/resolve
