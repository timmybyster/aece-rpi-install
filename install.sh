echo "Configuring wifi SSID"  
sh /home/pi/aece-rpi-install/wifi/ap-config.sh
echo "Preparing mysql DB"
sh /home/pi/aece-rpi-install/mysql/mysqlPrepare.sh
echo "Getting latest version of aece-rpi-router"
sh /home/pi/aece-rpi-install/node/node.sh
echo "Getting latest version of aece-rpi-web"
sudo sh /home/pi/aece-rpi-install/web/web.sh
