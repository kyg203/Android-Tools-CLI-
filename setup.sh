#!/bin/bash

echo "Setting up instantnoodle auto tools for the first time, please wait..."
echo "installing tools"
sudo apt-get install wget
sudo apt-get install python3
sudo apt-get install python3.8
sudo apt-get install python3-pip
pip3 install protobuf
pip3 install bsdiff4
wget https://github.com/vm03/payload_dumper/archive/refs/heads/master.zip
unzip master.zip
wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip
unzip platform-tools-latest-linux.zip
echo "Download finished. Removing temporary files..."
rm master.zip
rm platform-tools-latest-linux.zip
echo "setting up ADB and Fastboot"
cd platform-tools
sudo cp adb /usr/bin
sudo cp fastboot /usr/bin
echo "ADB and Fastboot setup."
sudo chmod +x autotools.sh
echo "To begin using autotools, type ./autotools.sh in the instantnoodle-autotools-cli folder"
cd ~/instantnoodle-autotools-cli-main
done
