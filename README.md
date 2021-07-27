# ChipDip-DAC-driver-RaspberryPi

1) Install git

sudo apt install git

2) Clone git repository

git clone https://github.com/chipdipru/ChipDip-DAC-driver-RaspberryPi

3) 

sudo cp ChipDip-DAC-driver-RaspberryPi/snd-soc-chipdip-dac.ko /lib/modules/`uname -r`/kernel/sound/soc/bcm/snd-soc-chipdip-dac.ko

sudo cp ChipDip-DAC-driver-RaspberryPi/chipdip-dac.dtbo /boot/overlays/chipdip-dac.dtbo

4)

sudo depmod

5)

sudo nano /boot/config.txt

Change dtparam=audio=on to #dtparam=audio=on
At the end of file add
dtoverlay=chipdip-dac-gpio

6) reboot
