rm -f aece-rpi-web/app/tmp/cache/persistent/*
rm -f aece-rpi-web/app/tmp/cache/models/*
chmod -R 777 /var/www/aece-rpi-web/app/tmp
chmod -R 777 /var/www/aece-rpi-web/app/webroot/files
cd /var/www/aece-rpi-web/app
sh Console/cake asset_compress.asset_compress build