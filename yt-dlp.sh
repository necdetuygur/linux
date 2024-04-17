sudo echo $(date "+%F %H:%M:%S")
sudo apt update -y
sudo apt install python3-pip -y
sudo pip3 install yt-dlp
yt-dlp --version
