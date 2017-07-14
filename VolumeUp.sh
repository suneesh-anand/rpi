#!/bin/sh


AMIXER_CMD=/usr/bin/amixer

read i < "a.vol"

if [ $i -gt 230 ]
then
i=230
else
i=`expr $i + 10`
fi

echo $i > "a.vol"

$AMIXER_CMD -q -c 0 -Dhw:sndrpiwsp cset numid=160 $i


#factor=`expr 23 / 10`

#echo factor=$factor

#kodi_volume=`expr $i / $factor`

#echo $kodi_volume

#datastring="-d \"$kodi_volume\""

#echo $datastring

#eval "curl -X POST --header \"Content-Type: text/plain\" --header \"Accept: application/json\"  ${datastring} \"http://192.168.1.10:8080/rest/items/KodiMediacenter_Volume\" "



