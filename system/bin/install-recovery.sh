#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25971950:6565ac373a79fc8825949d34c75fd520130cd98d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:19707114:5aaac5d68bd7eb4a650389a0609eadcfdea7b497 EMMC:/dev/block/bootdevice/by-name/recovery 6565ac373a79fc8825949d34c75fd520130cd98d 25971950 5aaac5d68bd7eb4a650389a0609eadcfdea7b497:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
