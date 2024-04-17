sudo echo $(date "+%F %H:%M:%S")
curl -L -o "discord.deb" -C - "https://discord.com/api/download/stable?platform=linux&format=deb"
sudo apt install -y ./discord.deb
