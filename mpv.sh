sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt install mpv -y

mkdir ~/.config/ > /dev/null 2>&1 &
mkdir ~/.config/mpv/ > /dev/null 2>&1 &
sleep 1
echo "" > ~/.config/mpv/input.conf
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

echo "vf-add=fps=25:round=near" >> ~/.config/mpv/mpv.conf
echo "volume-max=200" >> ~/.config/mpv/mpv.conf

# Windows:
# %appdata%\mpv\input.conf

# Mac:
# https://laboratory.stolendata.net/~djinn/mpv_osx/
# sudo rm -rf /usr/local/bin/mpv
# sudo ln -s /Applications/mpv.app/Contents/MacOS/mpv /usr/local/bin/mpv
