#!/bin/bash

echo "intiating first time setup please wait..."
sudo apt-get install wget
sudo apt-get install python3
sudo apt-get install python3-pip
pip3 install protobuf
pip3 install bsdiff4
cd ~
wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip
unzip platform-tools-latest-linux.zip
rm platform-tools-latest-linux.zip
cd platform-tools
sudo cp adb /usr/bin
sudo cp fastboot /usr/bin
cd ../
wget https://github.com/vm03/payload_dumper/archive/refs/heads/master.zip
unzip master.zip
rm master.zip
cd ~
mkdir instantnoodle
cd instantnoodle

