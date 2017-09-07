#!/bin/bash
ping=$(ping -c1 -w1 "192.168.0.1" | grep -o "ttl")
count=0
confirmed=0
while [ $count -lt 10 ]
do
    if [ "$ping" = "ttl" ]; then
           confirmed=$((confirmed+1));
    fi
    count=$((count+1));
    sleep 5
done
if [ $confirmed -gt 0 ]; then 
	echo "connected"
else
 	echo "not_connected"
 	sh /home/pi/aece-rpi-install/wifi/not-connected.sh
fi
echo $confirmed
