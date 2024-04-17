sudo echo $(date "+%F %H:%M:%S")

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
