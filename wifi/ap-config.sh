#!/bin/bash
old="AEC IBS"
serial=$(sed -n '1 p' Install/install)
system=$(sed -n '2 p' Install/install)
if [ "$system" = "CBS" ]; then
	new="AXXIS CBS "
	sudo sed -i '41s/.*/wpa_passphrase=axxisdemo/' /etc/hostapd/hostapd.conf
else
	new="AEC IBS "
	sudo sed -i '41s/.*/wpa_passphrase=aecedemo/' /etc/hostapd/hostapd.conf
fi

new=$new$serial
	
sudo sed -i '8s/.*/ssid=AEC IBS/' /etc/hostapd/hostapd.conf

sudo sed -i "s@$old@$new@" /etc/hostapd/hostapd.conf