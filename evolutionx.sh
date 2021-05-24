mkdir EvolutionX
cd EvolutionX
wget -O EvolutionX.zip https://sourceforge.net/projects/evolution-x/files/polaris/EvolutionX_5.7_polaris-11-20210519-0450-OFFICIAL.zip/download#
wget -O recovery.img https://mirrorbits.lineageos.org/recovery/instantnoodle/20210522/lineage-18.1-20210522-recovery-instantnoodle.img
adb reboot bootloader
sudo fastboot flash recovery recovery.img
sudo fastboot -w
sudo fastboot reboot recovery
adb sideload EvolutionX.zip
    
