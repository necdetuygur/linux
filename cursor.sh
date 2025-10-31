#!/bin/bash

sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt update -y
sudo apt install gnome-tweaks -y

# git clone https://github.com/necdetuygur/el-capitan-cursor ~/.icons/El\ Capitan\ -\ Cursor

curl -L -o "macOS-Monterey.tar.gz" -C - "https://github.com/ful1e5/apple_cursor/releases/download/v2.0.0/macOS-Monterey.tar.gz"
tar -xvf macOS-Monterey.tar.gz
# mv macOS-Monterey ~/.icons/
sudo mv macOS-Monterey /usr/share/icons/
