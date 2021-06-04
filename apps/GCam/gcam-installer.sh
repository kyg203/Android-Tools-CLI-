#!/bin/bash

title="GCam Installer for instantnoodle"
prompt="Which version of GCam would you like to install? v8.1-1.2 does not support auxillery cameras, but takes better photos while v7.3 brings support for auxillery but slightly worse photos."
options=("GCam v7.3" "GCam v8.1-1.2" "Both");

echo "$title"
PS3="$prompt"
select opt in "${options[@]}" "Quit"; do 
case "$REPLY" in
    1) echo "Installing GCam v7.3"
       sudo bash v8.1-gcam-v1.2.sh
       exit
       ;;
    2) echo "Installing GCam v8.1-1.2"
       sudo bash v8.1-gcam-v1.2.sh
       exit
       ;;
    3) echo "Installing both GCam v7.3 and v8.1-1.2"
       sudo bash v8.1-gcam-v1.2.sh
       sudo bash v8.1-gcam-v1.2.sh
       exit
       ;;
    $((${#options[@]}+1))) echo "Exiting..."; 
    break;;
    *) echo "Invalid option. Try another one."; 
    continue;;
    esac
    done
