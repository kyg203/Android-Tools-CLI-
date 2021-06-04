wget -O ss.zip https://downloads.sourceforge.net/project/shapeshiftos/instantnoodle/ShapeShiftOS-2.6-Sceptile-OFFICIAL-instantnoodle-20210517-1120.zip?ts=gAAAAABguXso1WjsJlJGJFR2YUJrNdaVfnzx4G36T7djQJPDwzbKwWpWeC7eS9Fdph4e-zwY0zIKuFCI1BIUA0b2g6NAxDbwug%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fshapeshiftos%2Ffiles%2Finstantnoodle%2FShapeShiftOS-2.6-Sceptile-OFFICIAL-instantnoodle-20210517-1120.zip%2Fdownload
unzip ss.zip
rm -r META-INF
rm payload_properties.txt
rm care_map.pb
mv payload.bin ../payload_dumper-master
cd ../../payload_dumper-master
python3 payload_dumper.py payload.bin
read -p "Please backup your device while the images are being extracted. Don't forget to backup WhatsApp! Press any key to continue with flashing."
cd output
echo "Rebooting to fastbootd and beginning flashing process."
adb reboot fastboot
sudo bash ~/instantnoodle-autotools-cli-main/rom/flash.sh
echo "Done flashing. Cleaning up desktop"
rm *.img
cd ../
rm payload.bin
cd ../rom/shapeshift
echo "done"
