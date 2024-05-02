sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

sudo apt update -y
curl -L -o "Repeat.jar" -C - "https://github.com/repeats/Repeat/releases/download/v5.7.1/Repeat_5_7_1.jar"
sudo apt install default-jre -y
echo "java -jar Repeat.jar" > RepeatStart.sh
sudo chmod +x RepeatStart.sh
