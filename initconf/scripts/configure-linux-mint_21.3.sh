#! /bin/sh


echo "Update to latest version..."
apt update && apt upgrade
flatpak update
sleep 11
echo


echo "Doing initial configuration..."
apt install vim dos2unix
apt install htop gparted
apt install ntp
sleep 11
echo

echo Fixing time servers...
sudo cp -f /usr/bin/timesyncd.conf /etc/systemd
#systemctl restart systemd-timesyncd

sudo cp -f /usr/bin/ntp.conf /etc
systemctl restart ntp
sleep 11
echo

echo Installing rc.local...
sudo cp -f /usr/bin/rc.local /etc
sudo chmod +x /etc/rc.local
systemctl daemon-reload
systemctl enable rc-local
systemctl start rc-local
systemctl status rc-local
sleep 11
echo

sudo bash fix-resolv_conf2.sh
