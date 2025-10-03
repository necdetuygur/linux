sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt update -y
sudo apt install gnome-tweaks -y

curl -L -o "Bibata-Modern-Classic.tar.xz" -C - "https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Classic.tar.xz"

tar -xvf Bibata-Modern-Classic.tar.xz
rm -rf Bibata-Modern-Classic.tar.xz
sudo cp -r Bibata-* /usr/share/icons/
rm -rf Bibata-Modern-Classic
