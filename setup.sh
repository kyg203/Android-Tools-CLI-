#!/bin/bash

echo "Setting up auto tools for the first time, please wait..."
echo "Creating workspace for tools..."
cd ~
mkdir instantnoodle-autotools-cli
cd instantnoodle-autotools-cli
mkdir roms
cd roms
mkdir LineageOS
mkdir FluidOS
mkdir AICP
mkdir crDroid
mkdir EvolutionX
mkdir HavocOS
mkdir HyconOS
mkdir MSM-Xtended
mkdir OpenBeta
mkdir ParanoidAndroid
mkdir PixelExperience
mkdir ShapeShift
cd ../
mkdir root
mkdir apps
mkdir apps/GCam

echo "installing tools"
echo "setting up wget"
sudo apt-get install wget
echo "wget installed"
echo "installing the latest version of python"
sudo apt-get install python3
sudo apt-get install python3.8
echo "Python installed."
echo "installing pip"
sudo apt-get install python3-pip
echo "Pip installed."
echo "installing pip resources..."
pip3 install protobuf
pip3 install bsdiff4
echo "Downloading payload_dumper"
wget https://github.com/vm03/payload_dumper/archive/refs/heads/master.zip
echo "Downloaded. Decompressing"
unzip master.zip
echo "Downloading ADB and fastboot tools"
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
cd instantnoodle-autotools-cli
done
