sudo echo $(date "+%F %H:%M:%S")

curl -L -o "code.deb" -C - "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install -y ./code.deb
