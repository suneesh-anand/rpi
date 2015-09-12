#!/bin/bash

sudo apt-get install minidlna

sudo service minidlna stop

sudo update-rc.d minidlna disable

install -Dm644 /etc/minidlna.conf ~/.config/minidlna/minidlna.conf

cp minidlna.conf ~/.config/minidlna/minidlna.conf

#media_dir=/media/papposeHDD/torrent/completed
#db_dir=/home/pi/.config/minidlna/cache
#log_dir=/home/pi/.config/minidlna/log

sudo cp 90-inotify.conf /etc/sysctl.d/90-inotify.conf 

mkdir ~/.config/autostart

cp minidlna.desktop ~/.config/autostart/


minidlna -f /home/pi/.config/minidlna/minidlna.conf -P /home/pi/.config/minidlna/minidlna.pid
minidlna -f /home/pi/.config/minidlna/minidlna.conf -R

#sudo service minidlna stop
#xargs kill < /home/pi/.config/minidlna/minidlna.pid

#minidlna -f /home/pi/.config/minidlna/minidlna.conf -P /home/pi/.config/minidlna/minidlna.pid
#minidlna -f /home/pi/.config/minidlna/minidlna.conf -R
