#! /bin/sh


echo Configuring...
if [ -f /etc/settings/flags/versions/linux_mint-21.3 ]; then
 configure-linux-mint_21.3.sh
else
 configure-linux-mint_21.1.sh
fi

echo Done!
echo
sleep 11
