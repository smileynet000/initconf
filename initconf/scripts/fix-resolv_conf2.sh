#! /bin/bash


echo Fix resolv.conf...
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
sudo systemctl status systemd-resolved
sleep 11
echo

echo Copy configuration files...
sudo cp -f /usr/bin/stub-resolv.conf /var/run/systemd/resolve


echo Rebooting in 1 minute...
read -s -n 1 -p "Please run, 'sudo fix-resolv_conf3.sh', after reboot...'"
echo
shutdown -r +1 "Rebooting for fix-resolv_conf."
echo
