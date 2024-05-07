sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

# sudo add-apt-repository universe
# sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
# sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
# sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
# sudo apt update -y

# curl -L -o "virtualbox.deb" -C - "https://download.virtualbox.org/virtualbox/7.0.16/virtualbox-7.0_7.0.16-162802~Ubuntu~jammy_amd64.deb"
# sudo apt install -f -y ./virtualbox.deb

# sudo apt install --reinstall virtualbox-dkms -y
# sudo apt install libelf-dev -y
# sudo /sbin/vboxconfig

# sudo bash -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian eoan contrib" >> /etc/apt/sources.list'
# wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --es --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
# sudo apt update
# sudo apt install -fy virtualbox-7.0



# https://www.techrepublic.com/article/install-virtualbox-ubuntu/

sudo apt autoremove purge virtualbox*

curl https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --dearmor > oracle_vbox_2016.gpg
curl https://www.virtualbox.org/download/oracle_vbox.asc | gpg --dearmor > oracle_vbox.gpg

sudo install -o root -g root -m 644 oracle_vbox_2016.gpg /etc/apt/trusted.gpg.d/
sudo install -o root -g root -m 644 oracle_vbox.gpg /etc/apt/trusted.gpg.d/

echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

sudo apt update
sudo apt install linux-headers-$(uname -r) dkms -y
sudo apt autoremove -y
sudo apt install virtualbox-7.0 -y
sudo apt install -f

sudo /sbin/vboxconfig
