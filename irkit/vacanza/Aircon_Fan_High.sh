#!/bin/bash

echo Ëxecuting AirCon HIgh FAN command >> /tmp/IRKIT.txt

curl -H "X-Requested-With: curl" -H "Content-Type: text/plain" -X POST -d '{"format":"raw","freq":38,"data":[6881,3341,873,2537,873,2537,873,873,873,873,873,873,873,2537,873,873,873,873,873,2537,873,2537,873,787,873,2537,873,873,873,873,873,2537,873,2537,873,787,873,2451,873,2451,873,873,873,873,873,2451,873,873,873,873,873,2451,873,787,787,873,873,787,873,787,787,873,787,873,873,787,873,787,873,787,873,787,787,873,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,787,873,787,2537,873,873,873,787,873,787,873,787,873,787,873,2537,873,2537,873,873,873,873,873,873,873,873,873,2537,873,873,873,787,904,787,904,787,904,787,904,787,904,787,904,2537,873,2537,873,787,873,2451,873,2451,873,873,873,787,873,787,873,787,873,2451,873,2451,873,761,873,2537,873,2537,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,873,787,873,787,787,873,873,787,873,787,873,787,873,787,873,787,787,873,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,787,873,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,787,873,873,787,873,787,873,787,873,2451,904,787,873,787,787,873,873,2451,935,2451,935,2451,935,2451,935,33492,6881,3341,935,2451,815,2451,815,815,815,815,815,815,935,2451,935,815,815,815,815,2537,815,2537,815,815,815,2537,904,787,787,904,904,2451,873,2451,873,873,873,2451,873,2451,873,873,873,873,873,2451,873,873,873,873,873,2451,873,873,873,787,787,873,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,873,787,787,873,873,787,787,873,873,787,873,787,873,787,873,787,873,787,873,2451,873,873,873,873,873,873,873,873,873,873,873,2451,873,2451,873,873,873,873,873,873,873,873,873,2451,873,873,873,873,873,873,873,873,873,787,935,787,787,935,935,2451,873,2451,873,787,935,2451,873,2451,873,787,873,787,873,787,873,787,873,2451,904,2451,904,815,935,2451,935,2451,935,815,815,815,815,815,815,815,815,815,815,815,904,815,815,815,815,815,904,815,904,815,815,815,815,815,815,815,904,815,815,815,904,815,904,815,815,815,815,815,815,815,904,815,815,815,815,815,815,815,904,815,815,815,815,815,815,815,904,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,904,815,904,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,815,904,815,815,815,815,2537,873,873,873,873,873,787,935,2451,935,2451,935,2451,935,2451,935]}' http://192.168.1.35/messages

echo Completed Aircon HIgh FAN Command >> /tmp/IRKIT.txt
