cd /var/www/aece-rpi-web/app/
mkdir tmp
mkdir tmp/cache
mkdir tmp/cache/models
chmod -777 tmp/cache/models
mkdir tmp/cache/persistent
chmod -777 tmp/cache/persistent
echo "INSTRUCTIONS: You will need to configure the cake settings below........"
echo "Leave all settings as default but change PASSWORD to root and DATABASE to ibspiui"
sh Console/cake bake
rm -f aece-rpi-web/app/tmp/cache/persistent/*
rm -f aece-rpi-web/app/tmp/cache/models/*
chmod -R 777 /var/www/aece-rpi-web/app/tmp
chmod -R 777 /var/www/aece-rpi-web/app/webroot/files
cd /var/www/aece-rpi-web/app
sh Console/cake asset_compress.asset_compress build