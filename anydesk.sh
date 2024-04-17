sudo echo $(date "+%F %H:%M:%S")
curl -L -o "anydesk.deb" -C - "https://download.anydesk.com/linux/anydesk_6.3.1-1_amd64.deb"
sudo apt install -y ./anydesk.deb
sudo apt install -f
sudo apt install -y ./anydesk.deb
