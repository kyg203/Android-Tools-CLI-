#!/bin/bash

cd ~/instantnoodle-autotools-cli-main

title="OnePlus 8 Auto-Tools"
prompt="What would you like to do?"
options=("Flash Lineage Recovery" "Root" "Install a custom ROM" "bootloader unlock (devices bought from oneplus.com only)" "Install GCam");

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
       rm recovery.img
       ;;
    2) echo "preparing to root your phone... Please wait"
       sudo bash root/root.sh
       ;;
    3) echo "Preparing to install a ROM..."
       sudo bash rom-installer.sh
       ;;
    4) read -p "Before we begin, we need to enable OEM unlocking in developer settings. Go to About Phone and press build number 5 times. Type your PIN or password in. navigate to setttings > settings and locate developer options. Find OEM unlocking near the top and enable. Press any key when done."
       read -p "This process will factory reset your phone, losing all data not backed up. Cancel this script now and backup your data or press any key to continue."
       adb reboot bootloader
       sudo fastboot oem unlock
       echo "Press yes to continue. The device will reboot when done."
       ;;
    5) echo "About to setup GCam, please wait..."
       bash ~/instantnoodle-autotools-cli-main/apps/GCam/gcam-installer.sh
       ;;
    6) echo "Preparing to backup your persist.img... Please ensure you are rooted!"
       bash backup_persist.sh
       ;;
    $((${#options[@]}+1))) echo "Exiting..."; break;;
    *) echo "Invalid option. Try another one.";continue;;
    esac
    done
