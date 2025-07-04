#!/bin/bash
sudo apt update && sudo apt install
sudo apt install docker-compose-v2
if [[ ! (-e "./Ianseo_20250210") ]]; then
	wget "https://www.ianseo.net/Release/Ianseo_20250210.zip"
fi