#!/bin/bash

cd ~
mkdir instantnoodle
cd instantnoodle

title="OnePlus 8 Auto-Tools"
prompt="What would you like to do?"
options=("Flash Lineage Recovery" "Root" "factory reset" "bootloader unlock (devices bought from oneplus.com only)" "Install GCam");

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 
    case "$REPLY" in
    1) echo "Preparing to install Lineage Recovery... Please wait"
       wget https://mirrorbits.lineageos.org/recovery/instantnoodle/20210522/lineage-18.1-20210522-recovery-instantnoodle.img
       mv lineage-18.1-20210522-recovery-instantnoodle.img recovery.img
       adb reboot bootloader
       sudo fastboot flash recovery recovery.img
       sudo fastboot reboot
       ;;
    2) echo "preparing to root your phone... Please wait"
       mkdir root
       cd root
       echo "Downloading tools to root your phone..."
       wget https://github.com/topjohnwu/Magisk/releases/download/v23.0/Magisk-v23.0.apk
       mv Magisk-v23.0.apk magisk.zip
       echo "Go to Apply Update > Apply from ADB on your phone. When prompted, press Yes."
       read -p "Press any key to continue"
       adb sideload magisk.zip
       read "you can now reboot your device. Press the back arrow button at the top and then press 'Reboot system now'"
       ;;
    3) echo "Are you sure you want to factory reset your phone?"
       read -p "Press any button to continue or press ctrl + c to cancel"
       adb reboot bootloader;
       sudo fastboot -w;
       sudo fastboot reboot;
       echo "Phone restored to factory settings. Rebooting...";
       ;;
    4) read -p "Before we begin, we need to enable OEM unlocking in developer settings. Go to About Phone and press build number 5 times. Type your PIN or password in. navigate to setttings > settings and locate developer options. Find OEM unlocking near the top and enable. Press any key when done."
       read -p "This process will factory reset your phone, losing all data not backed up. Cancel this script now and backup your data or press any key to continue."
       adb reboot bootloader
       sudo fastboot oem unlock
       echo "Press yes to continue. The device will reboot when done."
       ;;
    5) echo "About to setup GCam, please wait..."
       wget https://theproplayer.com/KyG/GCam-v7.3.apk
       wget https://theproplayer.com/KyG/nrG.xml
       adb push nrG.xml /storage/emulated/0/GCam/Configs7/nrG.xml
       adb install GCam-v7.3.apk
       echo "Done! GCam installed!"
       ;;
    $((${#options[@]}+1))) echo "Exiting..."; break;;
    *) echo "Invalid option. Try another one.";continue;;
    esac
    done
