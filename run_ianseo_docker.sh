#!/bin/bash
echo "lets begin"
install_dir="/var/www/html/ianseo/"

setup_directories() {
	if [[ ! (-e $install_dir) ]]; then
		mkdir -p $install_dir
	fi
	ianseo_zip=$(printf "/tmp/%s" $(ls /tmp | grep -oP "Ianseo_.*\.zip"))
}

extract_ianseo() {
	if [[ -f $ianseo_zip ]]; then
		unzip $ianseo_zip -d $install_dir
	else
		echo "Could not find Ianseo zip file"
		exit 1
	fi
}

setup_perms() {
	chmod -R 777 $install_dir
}

link_to_db() {
	if [[ -f $install_dir/Install/index.php ]]; then
		echo "fixing db host"
		sed -i.orig "s/W_HOST='localhost'/W_HOST='ianseo_db'/" $install_dir/Install/index.php
	fi
}

setup_directories
extract_ianseo
setup_perms
link_to_db