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
yt-dlp --version

# yt-dlp "YT_ID" -f mp4 -S res:480
