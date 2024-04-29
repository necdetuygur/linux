sudo echo ""
sudo echo ""
sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""
sudo echo ""
sudo echo ""

sudo apt update -y
sudo apt install python3-pip -y
sudo pip3 install yt-dlp
# yt-dlp --version

curl -L -o "yt-dlp" -C - "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp"
sudo mv yt-dlp /usr/local/bin/
sudo chmod -R 755 /usr/local/bin/yt-dlp

yt-dlp --version

# yt-dlp "YT_ID" -f mp4 -S res:480
