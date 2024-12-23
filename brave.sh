sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

curl -fsS https://dl.brave.com/install.sh | sh

# sudo apt install -fy curl
# sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# sudo apt update
# sudo apt install -fy brave-browser

# sudo apt update
## sudo apt install -fy wget
## wget https://github.com/brave/brave-browser/releases/download/v1.65.126/brave-browser_1.65.126_amd64.deb
## mv brave-browser_1.65.126_amd64.deb brave.deb
# curl -L -o "brave.deb" -C - "https://github.com/brave/brave-browser/releases/download/v1.65.126/brave-browser_1.65.126_amd64.deb"
# sudo apt install -fy ./brave.deb
# sudo dpkg -i ./brave.deb
# sudo apt install -fy
# sudo dpkg -i ./brave.deb
