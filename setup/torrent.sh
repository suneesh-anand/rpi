#!/bin/bash

sudo apt-get update
sudo apt-get install transmission-daemon

sudo usermod -a -G debian-transmission pi


sudo chgrp debian-transmission /media/papposeHDD/torrent/ontheway

sudo chgrp debian-transmission /media/papposeHDD/torrent/completed

sudo chmod 770 /media/papposeHDD/torrent/ontheway

sudo chmod 770 /media/papposeHDD/torrent/completed

sudo cp settings.json /etc/transmission-daemon/

sudo chgrp debian-transmission /etc/transmission-daemon/settings.json
sudo chown debian-transmission /etc/transmission-daemon/settings.json


sudo chown 921:921  /media/papposeHDD/torrent/completed
sudo chown 921:921  /media/papposeHDD/torrent/ontheway

sudo service transmission-daemon reload
