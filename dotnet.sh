sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest

echo "export PATH=\"$PATH:$HOME/.dotnet\"" >> ~/.profile
echo "export PATH=\"$PATH:$HOME/.dotnet\"" >> ~/.bashrc
