#!/bin/sh

sudo mkdir /exports/home/$1
sudo cp /etc/skel/.* /exports/home/$1
sudo chown -R $1 /exports/home/$1
sudo chmod 770 /exports/home/$1
ls -la /exports/home/

echo "Done creating user directory on nas at /exports/home/"