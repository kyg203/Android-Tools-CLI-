sudo fastboot -w
sudo fastboot flash boot_a boot.img
sudo fastboot flash boot_b boot.img
sudo fastboot flash dtbo_a dtbo.img
sudo fastboot flash dtbo_b dtbo.img
sudo fastboot flash odm_a odm.img
sudo fastboot flash odm_b odm.img
sudo fastboot flash product_a product.img
sudo fastboot flash product_b product.img
sudo fastboot flash recovery_a recovery.img
sudo fastboot flash recovery_b recovery.img
sudo fastboot flash system_a system.img
sudo fastboot flash system_b system.img
sudo fastboot flash system_ext_a system_ext.img
sudo fastboot flash system_ext_b system_ext.img
sudo fastboot --disable-verity flash vbmeta_a vbmeta.img
sudo fastboot --disable-verity flash vbmeta_b vbmeta.img
sudo fastboot --disable-verity flash vbmeta_system_a vbmeta_system.img
sudo fastboot --disable-verity flash vbmeta_system_b vbmeta_system.img
sudo fastboot flash vendor_a vendor.img
sudo fastboot flash vendor_b vendor.img
