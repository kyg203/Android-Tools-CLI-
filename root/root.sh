echo "Downloading Magisk..."
wget https://github.com/topjohnwu/Magisk/releases/download/v23.0/Magisk-v23.0.apk
adb install Magisk-v23.0.apk
mv Magisk-v23.0.apk magisk.zip
echo "Magisk downloaded. Rebooting to recovery..."
adb reboot recovery
read -p "Press Apply Update > Via ADB > Enable ADB. Press any key to continue once done."
echo "Rooting, please wait..."
adb sideload magisk.zip
adb reboot
echo "Done. You can now reboot your device"
