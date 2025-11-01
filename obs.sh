#!/bin/bash

sudo echo ""
sudo echo "   /*********************\\"
sudo echo "   | $(date "+%F %H:%M:%S") |"
sudo echo "   \\*********************/"
sudo echo ""

echo "🔄 Sistem güncelleniyor..."
sudo apt update && sudo apt upgrade -y

echo "📦 Gerekli paketler yükleniyor..."
sudo apt install ffmpeg v4l2loopback-dkms -y

echo "🎥 OBS Studio kurulumu başlatılıyor..."
sudo apt install obs-studio -y

echo "✅ Kurulum tamamlandı!"
echo "OBS Studio'yu başlatmak için terminale 'obs' yazabilirsin."
