cd rom/shapeshift
echo "Downloading ShapeShift OS v2.6 Sceptile for OnePlus 8 (instantnoodle)"
wget -O ss.zip https://downloads.sourceforge.net/project/shapeshiftos/instantnoodle/ShapeShiftOS-2.7-Solosis-OFFICIAL-instantnoodle-20210808-1345.zip?ts=gAAAAABhHYGb-BvnzYVb5JW5p_YHml75ZqAiGhtTQ0o9M3xuCDDBSW0OVEcmUm2ikDXzJ5kwjdzuw1uzSrxlUBs-63szrYY9Bw%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fshapeshiftos%2Ffiles%2Finstantnoodle%2FShapeShiftOS-2.7-Solosis-OFFICIAL-instantnoodle-20210808-1345.zip%2Fdownload
read -p "press any key to continue after ROM has finished downloading"
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
echo "Rebooting to fastboot and beginning flashing process."
adb reboot fastboot
sudo fastboot erase system
sudo fastboot erase userdata
sudo bash ../fastboot-flash.sh
echo "ShapeShift OS successfully installed!"
rm *.img
cd ../
rm payload.bin
cd ../
sudo fastboot reboot recovery
echo "factory reset your device and then reboot"
