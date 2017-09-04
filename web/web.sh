service nginx stop
service php5-fpm stop
sh /home/pi/Install/web/webGit.sh
cp /home/pi/Install/web/default /etc/nginx/sites-available/default
service nginx start
service php5-fpm start