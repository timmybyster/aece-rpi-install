service nginx stop
service php5-fpm stop
sh /home/pi/aece-rpi-install/web/webGit.sh
cp /home/pi/aece-rpi-install/web/default /etc/nginx/sites-available/default
service nginx start
service php5-fpm start