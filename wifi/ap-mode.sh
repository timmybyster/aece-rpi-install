dhcpcd_file_loc=/etc/dhcpcd.conf
sudo ifdown wlan0
sudo /etc/init.d/hostapd stop
sudo /etc/init.d/dnsmasq stop
sleep 5

sudo cp /home/pi/aece-rpi-install/wifi/interfaces-ap /etc/network/interfaces
sudo cp /home/pi/aece-rpi-install/wifi/dhcpcd-ap.conf /etc/dhcpcd.conf
sudo ifup wlan0
sleep 5

sudo /etc/init.d/hostapd start
sudo /etc/init.d/dnsmasq start