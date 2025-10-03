sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt install libgles-dev libegl-dev -fy
sudo ln -s /usr/lib/arm-linux-gnueabihf/libGLESv2.so /usr/lib/libbrcmGLESv2.so
sudo ln -s /usr/lib/arm-linux-gnueabihf/libEGL.so /usr/lib/libbrcmEGL.so

curl -L -o "anydesk.deb" -C - "https://download.anydesk.com/linux/anydesk_7.1.0-1_amd64.deb"
sudo apt install -fy ./anydesk.deb
sudo apt install -f
sudo apt install -fy ./anydesk.deb

echo "Z3FW24WxHF02UIkBYJrG" | sudo anydesk --set-password
anydesk --get-id
