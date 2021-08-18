echo "Preparing to restore your persist.img from your last backup..."
adb reboot fastboot
cd backups
sudo fastboot flash persist persist.img
sudo fastboot reboot
echo "SUCCESS"
exit
