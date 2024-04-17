sudo echo $(date "+%F %H:%M:%S")
sudo apt update -y
curl -L -o "Repeat.jar" -C - "https://github.com/repeats/Repeat/releases/download/v5.7.1/Repeat_5_7_1.jar"
sudo apt install default-jre -y
