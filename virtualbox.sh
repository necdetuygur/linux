sudo echo ""
sudo echo ""
sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""
sudo echo ""
sudo echo ""

sudo add-apt-repository universe
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt-get update -y

curl -L -o "virtualbox.deb" -C - "https://download.virtualbox.org/virtualbox/7.0.16/virtualbox-7.0_7.0.16-162802~Ubuntu~jammy_amd64.deb"
sudo apt install -f -y ./virtualbox.deb

# sudo apt install --reinstall virtualbox-dkms -y
# sudo apt install libelf-dev -y
# sudo /sbin/vboxconfig

# sudo bash -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian eoan contrib" >> /etc/apt/sources.list'
# wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --es --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
# sudo apt update
# sudo apt install -y virtualbox-7.0
