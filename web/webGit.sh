cd /var/www/
node=$(ls | grep -o aece-rpi-web)
if [ "$node" = "aece-rpi-web" ]; then
	echo "repository already exists only Perfroming updates"
	cd /var/www/aece-rpi-web
	git stash
	git pull origin master
	sh /home/pi/aece-rpi-install/web/webUpdate.sh
else
	echo "Cloning Repository"
	git clone https://github.com/timmybyster/aece-rpi-web
	cd /var/www/aece-rpi-web
	git pull origin master
	sh /home/pi/aece-rpi-install/web/webInstall.sh
fi
cd /var/www/aece-rpi-web