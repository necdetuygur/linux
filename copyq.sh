sudo echo ""
sudo echo ""
sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""
sudo echo ""
sudo echo ""

sudo apt install software-properties-common python-software-properties
sudo add-apt-repository ppa:hluk/copyq
sudo apt update -y
sudo apt install copyq -y
