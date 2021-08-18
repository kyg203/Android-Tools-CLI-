cd rom/pixelexperience
wget -O pe.zip https://download.pixelexperience.org/get/VW5HaDFpZy92U0RJZ1lPVUdZVktKTWJJeG1SM0tmbzkxczFiWXpwOEVnRmdaR0dIcXkvSDdTYVpMM3ZpUmdXS1IzaXVoZlRaZm5PcURNdkp6eWY5OWpLMWR0a0o0Ym9KT3ErTDg3cm9aY2M9
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
sudo bash ../fastboot-flash.sh
sudo fastboot reboot
rm *.img
cd ../
rm payload.bin
cd ../
