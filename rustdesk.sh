sudo echo ""
sudo echo ""
sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""
sudo echo ""
sudo echo ""

curl -L -o "rustdesk.deb" -C - "https://github.com/rustdesk/rustdesk/releases/download/1.2.3-2/rustdesk-1.2.3-2-x86_64.deb"
sudo apt install -fy ./rustdesk.deb
sudo apt install -f
sudo apt autoremove -y
