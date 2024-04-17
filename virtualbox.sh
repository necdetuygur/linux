sudo echo $(date "+%F %H:%M:%S")
curl -L -o "virtualbox.deb" -C - "https://download.virtualbox.org/virtualbox/7.0.16/virtualbox-7.0_7.0.16-162802~Ubuntu~jammy_amd64.deb"
sudo apt install -y ./virtualbox.deb
