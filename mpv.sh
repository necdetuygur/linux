sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt install mpv -y

echo "s add speed -0.05" >> ~/.config/mpv/input.conf
echo "S add speed -0.05" >> ~/.config/mpv/input.conf
echo "d add speed 0.05" >> ~/.config/mpv/input.conf
echo "D add speed 0.05" >> ~/.config/mpv/input.conf
echo "UP add volume 5" >> ~/.config/mpv/input.conf
echo "DOWN add volume -5" >> ~/.config/mpv/input.conf
echo "j seek -10" >> ~/.config/mpv/input.conf
echo "J seek -10" >> ~/.config/mpv/input.conf
echo "l seek 10" >> ~/.config/mpv/input.conf
echo "L seek 10" >> ~/.config/mpv/input.conf
