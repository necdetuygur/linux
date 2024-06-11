sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo cat << EOF > nupdate
#!/bin/bash

sudo echo \"\"
sudo echo \"   /*********************\\\\\"
sudo echo \"   \| $(date \"+%F %H:%M:%S\") \|\"
sudo echo \"   \\\\*********************/\"
sudo echo \"\"

sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autopurge -y
sudo apt autoclean -y
EOF

sudo mv nupdate /usr/local/bin/

sudo chmod 777 /usr/local/bin/nupdate

nupdate
