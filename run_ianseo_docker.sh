#!/bin/bash

install_dir=/ianseo/

setup_directories() {
	if [[ ! (-e $install_dir) ]]; then
		mkdir -p $install_dir
	fi
	
	ianseo_zip=$(ls /tmp | grep -o Ianseo_)
}

extract_ianseo() {
	if [[ -e $ianseo_zip ]]; then
		unzip $ianseo_zip -d $install_dir
	else
		echo "Could not find Ianseo zip file"
		exit 1
	fi
}

setup_directories
echo $ianseo_zip