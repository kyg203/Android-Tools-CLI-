#!/bin/bash

cd ~
mkdir instantnoodle
cd instantnoodle

title="OnePlus 8 Custom ROM installer"
prompt="Pick your ROM"
options=("PixelExperience" "Lineage OS" "Evolution X")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 
    case "$REPLY" in
    1) echo "Downloading Pixel Experience ROM..."
       mkdir PixelExperience
       cd PixelExperience
       wget https://link.us1.storjshare.io/s/jxhmwyjvyhoi4aw6qyr7xc6efgca/pixelexperience8a55844831018ff94dc3320e472ff3cb/instantnoodle/PixelExperience_Plus_instantnoodle-11.0-20210518-1444-OFFICIAL.zip?download
       unzip PixelExperience_Plus_instantnoodle-11.0-20210518-1444-OFFICIAL.zip?download
       mv payload.bin ~/payload_dumper-master
       cd ~/payload_dumper-master
       python3 payload_dumper.py payload.bin
       cd output
       cp ~/Downloads/flash.sh ~/payload_dumper-master/output
       sudo chmod +x flash.sh
       adb devices
       read -p "Please allow USB Debugging on your phone when prompted. Press any key to continue once ready."
       adb reboot fastboot
       echo "Your device is rebooting into fastboot mode."
       echo "Beginning the flashing process, you will lose everything that is not backed up already."
       sudo fastboot -w
       ./flash.sh;;
    2) echo "You picked $opt which is option 2"
       mkdir LineageOS
       cd LineageOS
       wget https://mirrorbits.lineageos.org/full/instantnoodle/20210522/lineage-18.1-20210522-nightly-instantnoodle-signed.zip
       unzip lineage-18.1-20210522-nightly-instantnoodle-signed.zip
       mv payload.bin ~/payload_dumper-master
       cd payload_dumper-master
       python3 payload_dumper.py payload.bin
       cd output
       cp ~/Downloads/flash.sh ~/payload_dumper-master/output
       sudo chmod +x flash.sh
       adb devices
       read -p "Please allow USB Debugging on your phone when prompted. Press any key to continue once ready."
       adb reboot fastboot
       echo "Your device is rebooting into fastboot mode."
       echo "Beginning the flashing process, you will lose everything that is not backed up already."
       sudo fastboot -w
       ./flash.sh
       ;;
    3) echo "Downloading Evolution X ROM"
       ./evolutionx.sh
       ;;
    $((${#options[@]}+1))) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;
    esac
done
