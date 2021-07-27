#!/bin/sh

echo "Installing ChipDip DACs..."

sudo cp ChipDip-DAC-driver-RaspberryPi/snd-soc-chipdip-dac.ko /lib/modules/`uname -r`/kernel/sound/soc/bcm/snd-soc-chipdip-dac.ko
sudo cp ChipDip-DAC-driver-RaspberryPi/chipdip-dac.dtbo /boot/overlays/chipdip-dac.dtbo
sudo depmod
sudo sed -i 's/^dtparam=audio=on/#dtparam=audio=on/g' /boot/config.txt
sudo sed -i -e '$adtoverlay=chipdip-dac' /boot/config.txt

echo "Reboot to complete installation"
