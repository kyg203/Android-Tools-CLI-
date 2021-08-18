read -p "You are about to root your phone with Magisk (version 23). Press any button to continue."
cd ~/instantnoodle-autotools-cli-main/root
echo "Downloading Magisk and Lineage Recovery..."
wget -O magisk.zip https://github.com/topjohnwu/Magisk/releases/download/v23.0/Magisk-v23.0.apk
wget -O recovery.img https://mirrorbits.lineageos.org/recovery/instantnoodle/20210814/lineage-18.1-20210814-recovery-instantnoodle.img
adb install Magisk-v23.0.apk
adb reboot bootloader
sudo fastboot flash recovery.img
sudo fastboot reboot recovery
read -p "Go to Apply Update > Apply from ADB on your phone. Press any key to continue."
adb sideload magisk.zip
read "you can now reboot your device. Press the back arrow button at the top and then press 'Reboot system now'"
rm magisk.zip
rm recovery.img
