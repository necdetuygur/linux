sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo add-apt-repository ppa:maarten-fonville/android-studio -y
sudo apt update -y
sudo apt install android-studio -y
