sudo echo $(date "+%F %H:%M:%S")
curl -L -o "chrome.deb" -C - "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt install -y ./chrome.deb
