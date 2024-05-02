sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

curl -L -o "code.deb" -C - "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install -fy ./code.deb
