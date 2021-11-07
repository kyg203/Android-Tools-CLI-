#!/bin/bash

echo "ROM - LineageOS 18.1"
echo "Android Version - 11"
echo "Device - OnePlus8 instantnoodle"
echo " "
read -P "You are about to install custom firmware to your device. THIS WILL VOID YOUR WARRANTY. Are you sure you want to continue? Press [ENTER] to continue."
echo " "
echo "Downloading LineageOS... Start backing up your data! [Settings > System > Backup] Don't forget WhatsApp!"
wget -O los.zip https://mirrorbits.lineageos.org/full/instantnoodle/20211030/lineage-18.1-20211030-nightly-instantnoodle-signed.zip
wget -O lineage-recovery.img https://mirrorbits.lineageos.org/recovery/instantnoodle/20211030/lineage-18.1-20211030-recovery-instantnoodle.img
wget -O gapps.zip https://downloads.sourceforge.net/project/opengapps/arm64/20211105/open_gapps-arm64-11.0-nano-20211105.zip?ts=gAAAAABhhg3p7egkzj7IolwawrfJXh-JXfKFSvwWUuRhnow10WO21vTRbtL2tZ9U_ZN45GrgCUHMLNwYVqcAefTuHMepxz8rXQ%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fopengapps%2Ffiles%2Farm64%2F20211105%2Fopen_gapps-arm64-11.0-nano-20211105.zip%2Fdownload%3Fuse_mirror%3Dversaweb%26r%3D%26use_mirror%3Dautoselect
echo "Download finished."
read -P "Connect your device and enable MTP (file transfer) USB mode. Allow debugging if you haven't already. Press [ENTER] when ready..."
echo -t 2 "Rebooting to fastboot mode..."
adb reboot bootloader
sudo fastboot -w
sudo fastboot flash recovery_a lineage-recovery.img
sudo fastboot flash recovery_b lineage-recovery.img
sudo fastboot reboot recovery
read -P "Factory reset the device. Press [ENTER] once done."
read -P "When the device reboots to recovery, go to Apply Update > ADB Sideload > Enable Sideload. Press [ENTER] to continue..."
adb sideload los.zip
read -P "If you want GAPPS, go back into ADB Sideload (Apply Update)... Once enabled, press [ENTER]. If you wish to skip GAPPS, press [ENTER] to finish."
adb sideload gapps.zip
echo "You can reboot and enjoy the new ROM!"
rm *.zip
rm *.img
