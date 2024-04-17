wget https://nodejs.org/dist/v20.12.2/node-v20.12.2-linux-x64.tar.xz
sudo tar -xf node-v20.12.2-linux-x64.tar.xz
sudo cp -r node-v20.12.2-linux-x64/{bin,include,lib,share} /usr/
sudo rm -rf node-v20.12.2-linux-x64
sudo npm install -g npm
sudo chmod -R 755 $(which node)
sudo chmod -R 755 $(which npm)
sudo chmod -R 777 /usr/bin/node 
sudo chmod -R 777 /usr/bin/npm
