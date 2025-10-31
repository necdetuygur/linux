#!/bin/bash

sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

# https://github.com/kevinburke/go-bindata

# curl --silent --location --output /usr/local/bin/go-bindata https://github.com/kevinburke/go-bindata/releases/download/v3.11.0/go-bindata-linux-amd64
# chmod 755 /usr/local/bin/go-bindata

sudo rm -rf /usr/bin/go
sudo rm -rf /usr/local/go

ARCH=$(uname -m)

if [ "$ARCH" == "x86_64" ]; then
  URL="https://golang.org/dl/go1.25.3.linux-amd64.tar.gz"
elif [ "$ARCH" == "aarch64" ]; then
  URL="https://golang.org/dl/go1.25.3.linux-arm64.tar.gz"
else
  echo "UNKNOWN: $ARCH"
  exit 1
fi

curl -L -o "go.tar.gz" -C - "$URL"

sudo sudo tar -C /usr/local -xzf go.tar.gz
sudo ln -s /usr/local/go/bin/go /usr/bin/go
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc
echo "export PATH=$PATH:/home/user1/go/bin" >> ~/.bashrc
source ~/.bashrc

go version
