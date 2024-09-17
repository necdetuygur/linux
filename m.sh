sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo cat << EOF > m
#!/bin/bash

file_path="/usr/local/bin/ydotoold"

if [ -e "\$file_path" ]; then
  echo "Available \$file_path"
else
  echo "Not Available \$file_path"

  cd
  cd Documents

  sudo apt update
  sudo apt install build-essential cmake libudev-dev
  git clone https://github.com/ReimuNotMoe/ydotool.git
  cd ydotool
  mkdir build
  cd build
  cmake ..
  make
  sudo make install
fi

sudo ydotoold &

while true
do
  sudo ydotool mousemove --absolute -x 0 -y 0
  sudo ydotool mousemove --absolute -x 1 -y 1
  sudo ydotool click 0xC1 # Right
  sudo ydotool click 0xC0 # Left
  sudo sleep 1

  sudo ydotool mousemove --absolute -x 0 -y 0
  sudo ydotool mousemove --absolute -x 2 -y 2
  sudo ydotool click 0xC1 # Right
  sudo ydotool click 0xC0 # Left
  sudo sleep 1

  sleep 30
done
EOF

sudo mv m /usr/local/bin/

sudo chmod 777 /usr/local/bin/m

m
