#!/bin/bash

title="GCam Installer for instantnoodle"
prompt="Which version of GCam would you like to install? PX does not support auxillery cameras, but takes better photos while v7.3 brings support for auxillery but slightly worse photos."
options=("GCam v7.3" "PX Camera" "Both");

echo "$title"
PS3="$prompt"
select opt in "${options[@]}" "Quit"; do 
case "$REPLY" in
    1) echo "Preparing to install GCam v7.3 on to your device..."
       echo "Downloading GCam v7.3 APK"
       wget https://www.theproplayer.com/KyG/7.3.apk
       wget https://www.theproplayer.com/KyG/nrG.xml
       read -p "Press anywhere to continue once GCam v7.3 has downloaded"
       echo "GCam v7.3 downloaded. Installing..."
       adb install 7.3.apk
       adb push nrG.xml /storage/emulated/0/GCam/Configs7/nrg.xml
       echo "GCam v7.3 installed!"
       rm *.apk
       rm *.xml
       break;;
       ;;
    2) echo "Preparing to install PX Camera to your device..."
       echo "Downloading PX Camera APK"
       wget https://www.theproplayer.com/KyG/PX.apk
       read -p "Press anywhere to continue once PX Camera has downloaded"
       echo "PX Camera downloaded. Installing..."
       adb install PX.apk
       echo "PX Camera installed!"
       rm *.apk
       break;;
       ;;
    3) echo "Preparing to install PX Camera and GCam v7.3 on to your device..."
       echo "Downloading PX Camera..."
       wget https://www.theproplayer.com/KyG/PX.apk
       echo "Downloading GCam v7.3..."
       wget https://www.theproplayer.com/KyG/7.3.apk
       echo "Downloading config for GCam v7.3..."
       wget https://www.theproplayer.com/KyG/nrG.xml
       echo "Pushing config to device."
       adb push nrG.xml /storage/emulated/0/GCam/Configs7/nrg.xml
       echo "Installing apps..."
       adb install PX.apk
       adb install 7.3.apk
       echo "Both apps installed."
       rm *.xml
       rm *.apk
       break;;
       ;;
    $((${#options[@]}+1))) echo "Exiting..."; 
    break;;
    *) echo "Invalid option. Press 1 for GCam v7.3, 2 for PX Camera and 3 to exit."; 
    continue;;
    esac
    done
