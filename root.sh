echo "You are about to root your phone using Magisk v23"
cd ~/instantnoodle
mkdir root
cd root
wget https://github.com/topjohnwu/Magisk/releases/download/v23.0/Magisk-v23.0.apk
mv Magisk-v23.0.apk magisk.zip
wget https://mirrorbits.lineageos.org/recovery/instantnoodle/20210522/lineage-18.1-20210522-recovery-instantnoodle.img
mv lineage-18.1-20210522-recovery-instantnoodle.img recovery.img
adb reboot bootloader
sudo fastboot flash recovery.img
sudo fastboot reboot recovery
echo "Go to Apply Update > Apply from ADB on your phone. When prompted, press Yes."
read -p "Press any key to continue"
adb sideload magisk.zip
read "you can now reboot your device. Press the back arrow button at the top and then press 'Reboot system now'"
