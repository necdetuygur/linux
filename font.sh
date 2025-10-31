#!/bin/bash

sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt update -y
sudo apt install unzip -y
sudo apt install font-manager -y

# curl -L -o "fira-sans.zip" -C - "https://www.fontsquirrel.com/fonts/download/fira-sans"
curl -L -o "fira-sans.zip" -C - "https://www.1001fonts.com/download/fira-sans.zip"
unzip fira-sans.zip -d fira-sans
open fira-sans &
font-manager &
