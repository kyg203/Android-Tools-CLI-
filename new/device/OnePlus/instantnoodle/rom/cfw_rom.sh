#!/bin/bash

# device variables
brand=$(adb shell getprop ro.product.product.brand)
codename=$(adb shell getprop ro.build.product)

# script variables
title="ROM INSTALLER"
prompt="Which ROM would you like to install?"
options=("LineageOS" "crDroid" "PixelExperience" "OxygenOS" "DerpFest [BETA]" "Android Ice Cold Project (AICP)" "Havoc-OS" "EvolutionX")

echo "$title"
PS3="$prompt"
select opt in "${options[@]}" "Go Back"; do
     case "$REPLY" in
     1) echo "Preparing to install ${options[0]}..."
     cd LOS
     sudo bash los.sh
     ;;
     2) echo "Preparing to install ${options[1]}..."
     cd Droid
     ;;
     3) echo "Preparing to install ${options[2]}..."
     cd PE
     ;;
     4) echo "Preparing to install ${options[3]}..."
     cd OOS
     ;;
     5) echo "Preparing to install ${options[4]}..."
     cd Derp
     ;;
     6) echo "Preparing to install ${options[5]}..."
     cd AICP
     ;;
     7) echo "Preparing to install ${options[6]}..."
     cd Havoc
     ;;
     8) echo "Preparing to install ${options[7]}..."
     cd EX
     ;;
     $((${#options[@]}+1))) echo "Exiting..."; break;;
     *) echo "Invalid option, try again."; continue;;
     esac
     done
