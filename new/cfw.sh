#!/bin/bash

# device variables
brand=$(adb shell getprop ro.product.product.brand)
codename=$(adb shell getprop ro.build.product)

# script variables
title="Custom Firmware"
prompt="What type of firmware would you like to install?"
options=("Recovery" "ROM" "Kernel")

echo "$title"
PS3="$prompt"
select opt in "${options[@]}" "Go back"; do
    case "$REPLY" in
    1) cd recovery
    sudo bash cfw_rec.sh
    ;;
    2) cd rom
    sudo bash cfw_rom.sh
    ;;
    3) cd kernel
    sudo bash cfw_kern.sh
    ;;
    $((${#options[@]}+1))) echo " "; break;;
    *) echo "Invalid option, try again."; continue;;
    esac
    done
