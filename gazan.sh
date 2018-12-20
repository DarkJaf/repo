#!/bin/bash
if [ `whoami` != "administrator" ]
	then  echo  "ERROR! Should be root"  
		su administrator
		exit 1
fi
echo "Installing screensaver, please write administrator password"
#su administrator
sudo apt-get install -y xscreensaver-data-extra xscreensaver-screensaver-bsod xscreensaver xscreensaver-gl-extra
echo "Downloading file"
sudo mkdir /home/user/Documents/screensavers
cd /home/user/Documents/screensavers
sudo wget https://www.vivaronews.am/wp-content/uploads/gazan.jpg
sudo chown -R user:user /home/user/Documents/screensavers
sudo su - user
