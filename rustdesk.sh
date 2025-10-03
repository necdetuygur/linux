sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

apt update
apt install -y wget curl
wget https://github.com/rustdesk/rustdesk/releases/download/1.4.2/rustdesk-1.4.2-x86_64.deb &&
apt install ./rustdesk-1.4.2-x86_64.deb -y
apt install -f -y
apt install ./rustdesk-1.4.2-x86_64.deb -y
apt autoremove -y

rustdesk --password 'Z3FW24WxHF02UIkBYJrG' > /dev/null 2>&1 &
rustdesk > /dev/null 2>&1 &
echo 'ID: ' $(rustdesk --get-id)
echo 'PW: Z3FW24WxHF02UIkBYJrG'

echo "---"
echo "Wayland to Xorg"
echo "sudo sed -i 's/^#WaylandEnable=false/WaylandEnable=false/' /etc/gdm3/custom.conf"
echo "sudo systemctl restart gdm3"
echo "---"
