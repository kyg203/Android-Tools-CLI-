#!/bin/bash

title="GCam Installer for instantnoodle"
prompt="Which version of GCam would you like to install? v8.1-1.2 does not support auxillery cameras, but takes better photos while v7.3 brings support for auxillery but slightly worse photos."
options=("GCam v7.3" "GCam v8.1-1.2" "Both");

echo "$title"
PS3="$prompt"
select opt in "${options[@]}" "Quit"; do 
case "$REPLY" in
    1) echo "Preparing to instal GCam v7.3 on your device"
       echo "Downloading GCam v7.3 APK"
       wget https://www.theproplayer.com/KyG/7.3.apk
       wget https://www.theproplayer.com/KyG/nrG.xml
       read -p "Press anywhere to continue once GCam v7.3 has downloaded"
       echo "GCam v7.3 downloaded. Installing..."
       adb install 7.3.apk
       adb push nrG.xml /storage/emulated/0/GCam/Configs7/nrg.xml
       echo "GCam v7.3 installed! Press 3 to exit."
       exit
       ;;
    2) echo "Installing GCam v8.1-1.2"
       echo "Downloading PX Camera APK"
       wget https://www.theproplayer.com/KyG/PX.apk
       read -p "Press anywhere to continue once PX Camera has downloaded"
       echo "PX Camera downloaded. Installing..."
       adb install PX.apk
       echo "PX Camera installed! Press 3 to exit."
       exit
       ;;
    3) echo "Installing both GCam v7.3 and PX Camera"
       wget https://www.theproplayer.com/KyG/PX.apk
       wget https://www.theproplayer.com/KyG/7.3.apk
       adb install PX.apk
       adb install 7.3.apk
       wget https://www.theproplayer.com/KyG/nrG.xml
       adb push nrG.xml /storage/emulated/0/GCam/Configs7/nrg.xml
       echo "Both apps installed. Press 3 to exit"
       exit
       ;;
    $((${#options[@]}+1))) echo "Exiting..."; 
    break;;
    *) echo "Invalid option. Try another one."; 
    continue;;
    esac
    done
