#! /bin/sh


echo "Update to latest version..."
apt update && apt upgrade
flatpak update
sleep 11
echo


echo "Doing initial configuration..."
apt install vim dos2unix
apt install htop gparted
sleep 11
echo

echo Fixing time servers...
sudo cp -f /usr/bin/timesyncd.conf /etc/systemd
systemctl restart systemd-timesyncd
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

bash fix-resolv_conf.sh
