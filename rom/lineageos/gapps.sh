title="GAPPS"
prompt="Would you like to install GAPPS?"
options=("Yes")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "No"; do 
case "$REPLY" in
    1) echo "installing GAPPS"
       wget https://mva1.androidfilehost.com/dl/aXSzKFZcQIHFskQUXaw_pA/1622857514/2188818919693781601/MindTheGapps-11.0.0-arm64-20210412_124247.zip
       sudo fastboot reboot recovery
       read -p "if the device did not reboot to reocvery, please reboot to recovery. Press Apply Update > Via ADB > Enable ADB. Press any key when ready"
       adb sideload MindTheGapps-11.0.0-arm64-20210412_124247.zip
       rm MindTheGapps-11.0.0-arm64-20210412_124247.zip
       break
       ;;
    $((${#options[@]}+1))) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;
    esac
done
