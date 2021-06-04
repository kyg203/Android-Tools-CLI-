#!/bin/bash

title="OnePlus 8 Custom ROM installer"
prompt="Pick your ROM"
options=("PixelExperience ROM" "Lineage OS" "ShapeShift OS")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 
    case "$REPLY" in
    1) echo "Downloading $opt"
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
    2) echo "Downloading $opt"
       cd ~/instantnoodle-autotools-cli/rom/lineageos
       sudo bash discover-your-lineage.sh
       ;;
    3) echo "Downloading $opt"
       cd ~/instantnoodle-autotools-cli/rom/shapeshift
       sudo bash shapeshift-my-device.sh
       ;;
    $((${#options[@]}+1))) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;
    esac
done
