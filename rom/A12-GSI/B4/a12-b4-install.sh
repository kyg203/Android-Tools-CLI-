echo "This GSI DOES have issues and is not recommended for daily usage. See all limitations and issues on the main directory page or 'https://developer.android.com/about/versions/12/gsi-release-notes'"
wget -O A12-B4.zip https://dl.google.com/developers/android/sc/images/gsi/gsi_gms_arm64-exp-SPB4.210715.012-7615752-b0deaa5e.zip
unzip A12-B4.zip
adb reboot fastboot
sudo fastboot -w
sudo fastboot flash system_a system.img
sudo fastboot flash system_b system.img
sudo fastboot --disable-verity flash vbmeta_a vbmeta.img
sudo fastboot --disable-verity flash vbmeta_b vbmeta.img
sudo fastboot reboot reocvery
echo "Factory reset device and reboot"
rm *.img
echo "Done"
done
