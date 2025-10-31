#!/bin/bash

sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

# curl -L -o "node-v22.20.0-linux-x64.tar.xz" -C - "https://nodejs.org/dist/v22.20.0/node-v22.20.0-linux-x64.tar.xz"
# sudo tar -xf node-v22.20.0-linux-x64.tar.xz
# sudo cp -r node-v22.20.0-linux-x64/{bin,include,lib,share} /usr/
# sudo rm -rf node-v22.20.0-linux-x64*
# sudo npm install -g npm
# sudo chmod -R 755 $(which node)
# sudo chmod -R 755 $(which npm)
# sudo chmod -R 755 /usr/bin/node 
# sudo chmod -R 755 /usr/bin/npm

ARCH=$(uname -m)

if [ "$ARCH" == "x86_64" ]; then
    NODE_URL="https://nodejs.org/dist/v22.20.0/node-v22.20.0-linux-x64.tar.xz"
elif [ "$ARCH" == "aarch64" ]; then
    NODE_URL="https://nodejs.org/dist/v22.20.0/node-v22.20.0-linux-arm64.tar.xz"
else
    echo "UNKNOWN: $ARCH"
    exit 1
fi

echo ""
echo "   /*********************\\"
echo "   | $(date "+%F %H:%M:%S") |"
echo "   \\*********************/"
echo ""

curl -L -o "node.tar.xz" -C - "$NODE_URL"

sudo tar -xf node.tar.xz

sudo cp -r node-v22.20.0-linux-*{bin,include,lib,share} /usr/

sudo rm -rf node-v22.20.0-linux-*

sudo npm install -g npm

sudo chmod -R 755 $(which node)
sudo chmod -R 755 $(which npm)
sudo chmod -R 755 /usr/bin/node
sudo chmod -R 755 /usr/bin/npm
