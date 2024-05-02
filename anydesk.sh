sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

curl -L -o "anydesk.deb" -C - "https://download.anydesk.com/linux/anydesk_6.3.2-1_amd64.deb"
sudo apt install -fy ./anydesk.deb
sudo apt install -f
sudo apt install -fy ./anydesk.deb
