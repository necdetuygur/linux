sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt update -y
sudo apt install gnome-tweaks -y

curl -L -o "Bibata-Modern-Amber.tar.xz" -C - "https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Amber.tar.xz"
curl -L -o "Bibata-Modern-Classic.tar.xz" -C - "https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Classic.tar.xz"
curl -L -o "Bibata-Modern-Ice.tar.xz" -C - "https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Ice.tar.xz"

tar -xvf Bibata-Modern-Amber.tar.xz
tar -xvf Bibata-Modern-Classic.tar.xz
tar -xvf Bibata-Modern-Ice.tar.xz
rm -rf Bibata-*.tar.xz
sudo cp -r Bibata-* /usr/share/icons/
rm -rf Bibata-*

gnome-tweaks &
