wget -O pe.zip https://link.us1.storjshare.io/s/jxhmwyjvyhoi4aw6qyr7xc6efgca/pixelexperience8a55844831018ff94dc3320e472ff3cb/instantnoodle/PixelExperience_Plus_instantnoodle-11.0-20210518-1444-OFFICIAL.zip?download
unzip pe.zip
mv payload.bin ~/instantnoodle-autotools-cli-main/payload_dumper-master
rm care_map.pb
rm -r META-INF
rm payload_properties.txt
rm pe.zip
cd ../../payload_dumper-master
python3 payload_dumper.py payload.bin
cd output
read -p "Before Pixelization, please backup your phone!"
adb reboot fastboot
sudo bash ~/instantnoodle-autotools-cli-main/rom/fastboot-img-flash.sh
sudo fastboot reboot
rm *.img
cd ../
rm payload.bin
done
