#!/bin/bash

title="OnePlus 8 Custom ROM installer"
prompt="Pick your ROM"
options=("PixelExperience ROM" "Lineage OS" "ShapeShift OS" "crDroid")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 
    case "$REPLY" in
    1) echo "Downloading $opt"
       sudo bash rom/pixelexperience/pixelize-me.sh
       ;;
    2) echo "Downloading $opt"
       sudo bash rom/lineageos/discover-your-lineage.sh
       ;;
    3) echo "Downloading $opt"
       sudo bash rom/shapeshift/shapeshift-my-device.sh
       ;;
    4) echo "Downloading $opt"
       sudo bash rom/crdroid/crdroid.sh
       ;;
    $((${#options[@]}+1))) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;
    esac
done
