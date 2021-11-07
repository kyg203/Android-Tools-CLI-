#!/bin/bash

#device variable
codename=$(adb shell getprop ro.build.product)
androidv=$(adb shell getprop ro.system.build.version.release)
device=$(adb shell getprop ro.product.device)
model=$(adb shell getprop ro.product.model)
brand=$(adb shell getprop ro.product.product.brand)
cd device/$brand/$codename

# script variables
title="Android Tools (CLI --main)"
prompt="What would you like to do?"
options=("Backup/Restore" "Bootloader Unlock" "Root" "Custom Firmware");

echo "$title"
echo " "
echo "            _____________            Device Info"
echo "           |             |"
echo "           |             |     Brand - ${brand}"
echo "           |             |"
echo "           |             |     Device - ${device}"
echo "           |             |"
echo "           |             |     Model Number - ${model}"
echo "           |             |"
echo "           |             |     Android Version - ${androidv}"
echo "           |             |"
echo "           |             |     Codename - ${codename}"
echo "           |_____________|"
echo " "
echo " "
PS3="$prompt"
select opt in "${options[@]}" "Quit"; do
    case "$REPLY" in
    1) cd backup
    sudo bash backup_manager.sh
    ;;
    2) sudo bash boot_unlock.sh
    ;;
    3) cd root
    sudo bash root.sh
    ;;
    4) sudo bash ../../../cfw.sh
    ;;
    $((${#options[@]}+1))) echo "Exiting..." break;;
    *) echo "Invalid option, try again."; continue;;
    esac
    done
