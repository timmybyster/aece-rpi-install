cd ~
node=$(ls | grep -o aece-rpi-router-2.0)
if [ "$node" = "aece-rpi-router-2.0" ]; then
	echo "repository already exists. only Perfroming updates"
else
	echo "Cloning Repository"
	git clone https://github.com/timmybyster/aece-rpi-router-2.0
fi
cd /home/pi/aece-rpi-router-2.0
git stash
git pull origin master  