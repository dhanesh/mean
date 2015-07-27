echo 'Configuring system for MongoDB'
echo 'Adding MongoDB public key'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'Adding MongoDB repository to the source list'
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
echo 'Updating local package information'
sudo apt-get update
echo 'Installing MongoDB'
sudo apt-get install mongodb-org -y
echo 'Configuring system for Node.js'
sudo apt-get install python-software-properties -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
echo 'Installing nodejs'
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get install --yes nodejs
#sudo apt-get install python-software-properties python g++ make nodejs -y
#sudo apt-get install npm -y
#sudo apt-get install nodejs-legacy -y
echo 'Installing Express.js'
sudo npm install -g express-generator
echo 'Configuring system for Angular.js'
sudo npm install -g bower
