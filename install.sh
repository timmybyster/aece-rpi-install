echo "Configuring wifi SSID"  
sh wifi/ap-config.sh
echo "Preparing mysql DB"
sh mysql/mysqlPrepare.sh
echo "Getting latest version of aece-rpi-router"
sh node/node.sh
echo "Getting latest version of aece-rpi-web"
sh web/web.sh