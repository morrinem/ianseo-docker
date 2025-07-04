#!/bin/bash
sudo apt update && sudo apt install
sudo apt install docker-compose-v2
ianseo_zip=$(ls . | grep -oP "Ianseo_.*\.zip")
echo "found ianseo already downloaded?: $ianseo_zip"
if [[ ! $ianseo_zip ]]; then
	wget "https://www.ianseo.net/Release/Ianseo_20250210.zip"
fi
sudo docker compose build
sudo docker compose up