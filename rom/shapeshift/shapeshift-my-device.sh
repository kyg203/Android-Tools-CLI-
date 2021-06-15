echo "Downloading ShapeShift OS v2.6 Sceptile for OnePlus 8 (instantnoodle)"
wget -O ss.zip https://downloads.sourceforge.net/project/shapeshiftos/instantnoodle/ShapeShiftOS-2.6-Sceptile-OFFICIAL-instantnoodle-20210517-1120.zip?ts=gAAAAABguXso1WjsJlJGJFR2YUJrNdaVfnzx4G36T7djQJPDwzbKwWpWeC7eS9Fdph4e-zwY0zIKuFCI1BIUA0b2g6NAxDbwug%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fshapeshiftos%2Ffiles%2Finstantnoodle%2FShapeShiftOS-2.6-Sceptile-OFFICIAL-instantnoodle-20210517-1120.zip%2Fdownload
read -p "Press any key to continue after the ROM has downloaded"
echo "Extracting payload.bin file from .zip"
unzip ss.zip
rm -r META-INF
rm payload_properties.txt
rm care_map.pb
rm *.zip
mv payload.bin ../../payload_dumper-master
cd ../../payload_dumper-master
python3 payload_dumper.py payload.bin
cd output
echo "Rebooting to fastbootd and beginning flashing process."
adb reboot fastboot
sudo bash ../fastboot-flash.sh
echo "Done flashing. Cleaning up desktop"
rm *.img
cd ../
rm payload.bin
cd ../
echo "done"
