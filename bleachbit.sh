sudo echo ""
sudo echo ""
sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""
sudo echo ""
sudo echo ""

curl -L -o "bleachbit.deb" -C - "https://download.bleachbit.org/bleachbit_4.6.0-0_all_ubuntu2204.deb"
sudo apt install -fy ./bleachbit.deb
