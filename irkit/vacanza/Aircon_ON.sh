#!/bin/bash

echo Ëxecuting AirCon ON command >> /tmp/IRKIT.txt

curl -H "X-Requested-With: curl" -H "Content-Type: text/plain" -X POST -d '{"format":"raw","freq":38,"data":[6881,3341,904,2451,815,2626,815,935,761,935,761,935,761,2537,815,904,904,904,815,2537,815,2537,968,787,873,2537,873,873,873,761,761,2626,761,2626,761,843,843,2537,843,2537,843,843,843,935,761,2537,1002,686,935,686,1073,2368,873,787,968,787,873,873,873,873,761,873,873,873,761,873,873,873,873,873,761,873,873,873,873,873,873,873,873,873,873,761,873,873,873,761,968,787,873,873,873,873,968,2368,968,686,968,787,873,873,787,787,787,873,787,2718,710,2718,873,873,873,873,761,873,873,2626,815,815,935,787,935,787,1037,686,873,873,873,873,873,873,873,735,968,2451,815,2537,815,935,935,2537,815,2537,815,904,761,904,761,904,904,761,761,2537,904,2537,904,735,1037,2368,873,2368,873,873,873,873,873,873,873,873,873,735,904,904,904,815,815,815,815,904,815,904,815,904,815,815,815,815,815,904,815,904,815,815,815,815,815,815,904,815,815,904,815,815,815,904,815,815,815,904,815,815,815,815,815,815,815,904,815,904,815,904,815,815,815,815,904,815,904,815,904,815,904,815,815,815,904,815,904,815,904,735,935,815,968,735,815,1002,710,1002,710,1002,710,1002,815,815,815,904,815,815,815,815,815,904,815,815,815,904,815,904,815,815,815,815,904,815,815,815,815,735,968,735,968,735,873,2537,873,2537,873,2537,873,2537,873,33492,7122,3341,873,2537,935,2537,935,843,843,843,843,843,843,2537,968,843,843,843,843,2451,1037,2451,1037,735,873,2537,935,761,873,873,761,2537,904,2537,815,815,904,2451,873,2451,873,873,873,787,968,2368,904,787,873,787,873,2451,815,815,904,904,904,815,904,815,904,904,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,815,904,904,904,815,904,815,1037,663,873,873,873,873,968,2451,873,873,873,873,873,787,935,787,935,787,935,2368,904,2368,904,815,904,735,935,815,935,2451,935,735,968,735,968,735,968,735,873,873,968,735,815,815,815,815,815,2537,935,2537,935,815,935,2451,904,2451,904,787,935,787,935,787,935,787,935,2368,935,2368,935,710,935,2451,935,2451,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,761,935,2451,935,2451,935,2451,935,2451,935]}' http://192.168.1.35/messages

echo Completed Aircon ON Command >> /tmp/IRKIT.txt

