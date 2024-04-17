sudo echo $(date "+%F %H:%M:%S")
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm -rf get-docker.sh
