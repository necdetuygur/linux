sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt update
sudo apt install grub-customizer -y
