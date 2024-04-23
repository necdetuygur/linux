sudo echo ""
sudo echo ""
sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""
sudo echo ""
sudo echo ""

sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
sudo apt-get update -y
sudo apt-get install pinta -y
