#!/bin/bash

scan_result=$(sudo iwlist wlan0 scan 2>&1 | grep -o "IBSWifi")
ap_mode=$(grep ap-mode /etc/network/interfaces | grep -o ap-mode)
echo "$ap_mode"
if [ "IBSWifi" = "$scan_result" ]; then #no connection but scan detected new ssid
	sh wifi-mode.sh
else
        if [ "ap-mode" = "$ap_mode" ]; then
		echo "already in ap-mode"
	else
		sh ap-mode.sh
	fi
fi
