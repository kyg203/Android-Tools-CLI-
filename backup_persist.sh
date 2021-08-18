echo "Make sure you are rooted before you start"
adb devices
adb shell su -c dd if=/dev/block/bootdevice/by-name/persist of=/storage/emulated/0/Download/persist.img
mkdir backups
cd backups
adb pull storage/emulated/0/Download/persist.img
echo "Done"
exit
