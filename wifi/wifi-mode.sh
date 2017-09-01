sudo /etc/init.d/hostapd stop
sudo /etc/init.d/dnsmasq stop
sudo cp /home/Install/wifi/dhcpcd-wifi.conf /etc/dhcpcd.conf
sudo cp /home/Install/wifi/interfaces-wifi /etc/network/interfaces  
sudo ifdown wlan0
sudo ifup wlan0