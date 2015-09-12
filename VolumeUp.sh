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

$AMIXER_CMD -q -c0 -Dhw:sndrpiwsp cset numid=160 $i
