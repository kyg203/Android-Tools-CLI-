#!/bin/bash

title="OnePlus 8 Custom ROM installer"
prompt="Pick your ROM"
options=("PixelExperience ROM" "Lineage OS" "ShapeShift OS")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 
    case "$REPLY" in
    1) echo "Downloading $opt"
       cd ~/instantnoodle-autotools-cli/rom/pixelexperience
       sudo bash pixelize-me.sh
       cd ../../
       ;;
    2) echo "Downloading $opt"
       cd ~/instantnoodle-autotools-cli/rom/lineageos
       sudo bash discover-your-lineage.sh
       cd ../../
       ;;
    3) echo "Downloading $opt"
       cd ~/instantnoodle-autotools-cli/rom/shapeshift
       sudo bash shapeshift-my-device.sh
       cd ../../
       ;;
    $((${#options[@]}+1))) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;
    esac
done
