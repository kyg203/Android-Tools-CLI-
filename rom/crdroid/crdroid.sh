cd rom/crdroid
echo "Downloading ROM... after ROM is downloaded, you can come away from the computer if needed. ROM donwload takes about 3 minutes."
wget -O crdroid.zip https://downloads.sourceforge.net/project/crdroid/instantnoodle/7.x/crDroidAndroid-11.0-20210813-instantnoodle-v7.9.zip?ts=gAAAAABhHYMNctI0gWpQC7lF8G8WXx_NINoxOYtZzv-oLl3uhdDtpdA8FJock6DwZsn07nuhe3MyJICV93i576EMoxvvSztW6Q%3D%3D&use_mirror=master&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fcrdroid%2Ffiles%2Finstantnoodle%2F7.x%2FcrDroidAndroid-11.0-20210813-instantnoodle-v7.9.zip%2Fdownload%3Fuse_mirror%3Dmaster
read -p "Press any key when download is finished. You can move away from the computer after this is finsihed."
echo "Decompressing zipped folder."
unzip crdroid.zip
echo "moving payload.bin and cleaning unused files."
mv payload.bin ../../payload_dumper-master/
rm -r META-INF
rm *.pb
rm *.txt
rm *.zip
echo "Extracting fastboot images from payload.bin..."
cd ../../payload_dumper-master
python3 payload_dumper.py payload.bin
cd output
echo "Beginning the flashing process. Your phone will reboot"
adb reboot fastboot
sudo bash ../../rom/fastboot-flash.sh
rm *.img
cd ../
rm payload.bin
cd ../rom/crdroid
echo "crDroid installed! Rebooting to Recovery. Press Apply Update > Via ADB > Enable ADB"
sudo fastboot reboot recovery
wget -O nikgapps.zip https://downloads.sourceforge.net/project/nikgapps/Releases/NikGapps-R/12-Jun-2021/NikGapps-core-arm64-11-20210612-signed.zip?ts=gAAAAABgyPca__nqN1b5OXC1IrFiteAG_u_vUA1MD38Vmb2ZX8IKPqX1zpJQPH0uZAbIgsS-g_hNyxy_vsQp0CorHX1bbL-YJg%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fnikgapps%2Ffiles%2FReleases%2FNikGapps-R%2F12-Jun-2021%2FNikGapps-core-arm64-11-20210612-signed.zip%2Fdownload
read -p "press any key to continue once GAPPS are downloaded"
echo "flashing NikGapps"
adb sideload nikgapps.zip
echo "GAPPS flashed. Factory reset and then reboot! Cleaning up temporary files..."
rm nikgapps.zip
cd ../../
