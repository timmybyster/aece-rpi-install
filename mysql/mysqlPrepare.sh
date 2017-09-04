mysql -u root -proot ibspiui -se "DELETE FROM nodes WHERE type_id != 0"
mysql -u root -proot ibspiui -se "DELETE FROM logs"
mysql -u root -proot ibspiui -se "DELETE FROM warnings"
mysql -u root -proot ibspiui -se "DELETE FROM incoming_packets"
serial=$(sed -n '1 p' /home/pi/aece-rpi-install/install)
mysql -u root -proot ibspiui -se "UPDATE nodes SET serial = $serial"