echo "Downloading Lineage OS v18.1 (Android 11)"
wget https://mirrorbits.lineageos.org/full/instantnoodle/20210522/lineage-18.1-20210529-nightly-instantnoodle-signed.zip
mv lineage-18.1-20210529-nightly-instantnoodle-signed.zip lineage.zip
unzip lineage.zip
mv payload.bin ../../payload_dumper-master/
rm care_map.pb
rm lineage.zip
rm -r META-INF
rm payload_properties.txt
cd ../../payload_dumper-master
python3 payload_dumper.py payload.bin
read -p "Extracting images... Please take a minute to backup your phone, don't forget WhatsApp! Press any button to continue."
cd output
echo 'Rebooting to fastbootd"
adb reboot fastboot
sudo bash ~/instantnoodle-autotools-cli/rom/fastboot-img-flash.sh
sudo bash gapps.sh
sudo fastboot reboot
echo "Rebooting and cleaning up disk space..."
rm *.img
cd ../
rm payload.bin
echo "All done!"