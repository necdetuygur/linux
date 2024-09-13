sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O Firefox-dev.tar.bz2
sudo tar xjf Firefox-dev.tar.bz2 -C /opt/
rm -r Firefox-dev.tar.bz2
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox-dev

sudo cat << EOF > Firefox-dev.desktop
[Desktop Entry]
Name=Firefox Developer Edition
Exec=/usr/local/bin/firefox-dev
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
comment=browser
Type=Application
Terminal=false
Encoding=UTF-8
Categories=GNOME;GTK;Network;WebBrowser;
EOF

sudo mv Firefox-dev.desktop /usr/share/applications/

# REMOVE
# sudo rm -rf /opt/firefox/
# sudo rm -rf /usr/local/bin/firefox-dev
# sudo rm -rf /usr/share/applications/Firefox-dev.desktop
