#!/bin/bash

sudo service minidlna stop
xargs kill < /home/pi/.config/minidlna/minidlna.pid

minidlna -f /home/pi/.config/minidlna/minidlna.conf -P /home/pi/.config/minidlna/minidlna.pid
minidlna -f /home/pi/.config/minidlna/minidlna.conf -R


for i in `ps ax | grep kodi.bin | grep -v grep | sed 's/ *//' | sed 's/[^0-9].*//'`
do
  kill -9 $i
done

kodi-standalone

