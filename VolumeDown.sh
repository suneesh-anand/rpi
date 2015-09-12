#!/bin/bash


AMIXER_CMD=/usr/bin/amixer

read i < "a.vol"

if [ $i -lt 0 ]
then
i=0
else
i=`expr $i - 10`
fi

echo $i > "a.vol"

$AMIXER_CMD -q -c0 -Dhw:sndrpiwsp cset numid=160 $i