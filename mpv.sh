sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt install mpv -y
echo "1 set speed 1.25" >> ~/.config/mpv/input.conf
echo "UP add volume 5" >> ~/.config/mpv/input.conf
echo "DOWN add volume -5" >> ~/.config/mpv/input.conf
