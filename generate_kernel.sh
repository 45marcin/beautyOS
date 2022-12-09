#!/bin/bash 


echo "Generating kernel & modules"
sudo MACHINE=imx8mm-var-dart ./var_make_debian.sh -c kernel
sudo MACHINE=imx8mm-var-dart ./var_make_debian.sh -c modules
sudo cp output/Image.gz /media/marcin/rootfs/boot/Image.gz
sudo cp output/imx8mm-var-dart-dt8mcustomboard-legacy.dtb /media/marcin/rootfs/boot/imx8mm-var-dart-dt8mcustomboard-legacy.dtb
sudo sync
sudo umount /media/marcinamc/rootfs 

echo "Sdcard ready for device"
