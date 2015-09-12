#!/bin/bash
# parameter: <value>- or <value>+ or <value>
#echo 2>&1 > ~/logvol.log

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die -e "\n1 argument required, $# provided.\n\nUsage:\n$0 1+     # increase alsa Master volume by 1 unit\n$0 2dB+   # increase alsa Master volume by 2 dB\n$0 10-    # decrease alsa Master volume by 10 units\n$0 50     # set alsa Master volume to 50\n"
u=1000
o=350
e=1
R=green
b=0
B=black
p=0
t=1
CONTROL=Master
DISPLAY=$(/bin/ps aux | grep xinit | egrep -ow ':[0-9] -auth|-- :[0-9]'| sed -e 's/ -auth//g'| sed -e 's/-- //g')
AMIXER_CMD=/usr/bin/amixer
AMIXER_PARAM=-c0
KILL_CMD=/bin/kill
PIDOF=/bin/pidof

if [ "$1" == "mudo" ]
then
$AMIXER_CMD $AMIXER_PARAM set $CONTROL toggle
$KILL_CMD -9 $($PIDOF aosd_cat) &> /dev/null
MUTESTATUS=$($AMIXER_CMD $AMIXER_PARAM get $CONTROL | egrep -w 'off|on' |  awk '{print $6}' | tr -d '[]')
if [ "$MUTESTATUS" == "off" ]
then
for i in $DISPLAY
do
echo "Mute" |DISPLAY=$i aosd_cat -n "Arial Black 23" -u $u -o 1234567890 -R red -S none -f 0 -y -10 -e $e -b $b -B $B -d 5 -t $t -p $p &
done
elif [ "$MUTESTATUS" = "on" ]
then
$AMIXER_CMD $AMIXER_PARAM set Speaker off
$AMIXER_CMD $AMIXER_PARAM set Speaker on
$AMIXER_CMD $AMIXER_PARAM set Headphone off
$AMIXER_CMD $AMIXER_PARAM set Headphone on
fi
else

$AMIXER_CMD -q $AMIXER_PARAM sset $CONTROL,0 $1 2>/dev/null
$KILL_CMD -9 $($PIDOF aosd_cat) &> /dev/null

CURR_VOLUME=`$AMIXER_CMD $AMIXER_PARAM get $CONTROL 2>/dev/null | grep 'Mono:' | sed -e 's/^[^\[]*//' -e 's/^.//' -e 's/%.*$//'`

if [ "$CURR_VOLUME" != "0" ]
then
for i in $DISPLAY
do 
        echo $CURR_VOLUME |DISPLAY=$i aosd_cat -n "Arial Black 23" -u $u -o $o -R $R -S none -f 0 -y -10 -e $e -b $b -B $B -t $t -d 5 -p $p  &
done
else
for i in $DISPLAY
do 
        echo "Mute" |DISPLAY=$i aosd_cat -n "Arial Black 23" -u $u -o $o -R red -S none -f 0 -y -10 -e $e -b $b -B $B -d 5 -t $t -p $p &
done
fi
fi
