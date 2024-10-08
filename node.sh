sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

curl -L -o "node-v20.16.0-linux-x64.tar.xz" -C - "https://nodejs.org/dist/v20.16.0/node-v20.16.0-linux-x64.tar.xz"
sudo tar -xf node-v20.16.0-linux-x64.tar.xz
sudo cp -r node-v20.16.0-linux-x64/{bin,include,lib,share} /usr/
sudo rm -rf node-v20.16.0-linux-x64
sudo npm install -g npm
sudo chmod -R 755 $(which node)
sudo chmod -R 755 $(which npm)
sudo chmod -R 755 /usr/bin/node 
sudo chmod -R 755 /usr/bin/npm
