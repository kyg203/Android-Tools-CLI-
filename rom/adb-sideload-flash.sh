echo "flashing Lineage Recovery..."
wget https://mirrorbits.lineageos.org/recovery/instantnoodle/20210529/lineage-18.1-20210529-recovery-instantnoodle.img
mv lineage-18.1-20210529-recovery-instantnoodle.img recovery.img
adb reboot bootloader
sudo fastboot flash recovery recovery.img
sudo fastboot reboot recovery
read -p "If device is still on the bootloader, reboot to recovery. When you are there, factory reset the device, then select Apply Update > Apply via ADB and enable ADB. Press any key once you have enabled ADB"
adb sideload rom.zip
rm recovery.img
read -p "You can now reboot to system. Congratulations!"
