#!/bin/bash

sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

# curl -fsSL https://cdn.coollabs.io/coolify/install.sh | sudo bash

sudo cp /etc/os-release /etc/os-release.bak

sudo cat <<'EOF' | sudo tee /etc/os-release
PRETTY_NAME="Debian GNU/Linux"
NAME="Debian"
ID=debian
ID_LIKE=debian
VERSION_ID="11"
EOF

curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash

sudo cp /etc/os-release.bak /etc/os-release
