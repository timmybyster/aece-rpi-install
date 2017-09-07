sh /home/pi/aece-rpi-install/node/nodeGit.sh
cd /home/pi/aece-rpi-router-2.0/
npm install
sudo pkill -f node
cd /home/pi/aece-rpi-router-2.0
node server.js