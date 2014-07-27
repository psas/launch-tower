# Setup the Launch Tower Computer

## BeagleBone Black
 1. Download the eMMC flashing version of Debian from the BBB site.
 1. Uncompress it with a 7zip tool
 1. Copy to SD card by `sudo dd bs=1M if=the-debian-image of=/dev/the-sd-card-device
 1. This can take 15-30 minutes.
 1. Place card in the unpowered BeagleBoard.
 1. Hold down the "User Boot" button, it is the button near the SD card end of the board.
 1. Keep holding down the button and apply power.
 1. Keep holding down the button until the bank of 4 LED's light up for a few seconds. You may now release the button
 1. The system will boot into Debian while the OS is copied onto the eMMC.
 1. When it finishes, the 4 LED's will light up and then it should power itself off.
 1. Remove the SD card and power it up.

## System Setup
 1. Update the package list `apt-get update`
 1. Install all updates. `apt-get upgrade`
 1. Install packages we want `apt-get install vim htop lsof tcpdump iptraf wavemon` 
 1. Change hostname to ltc 
     1. `echo ltc > /etc/hostname`
     1. `sed -i 's/beaglebone/ltc/' /etc/hosts`
 1. Update password to the PSAS standard with `passwd`
 1. Update `/etc/network/interfaces` (see file in this directory)
 1. Disable the `wicd` network connection manager by editing `/etc/default/wicd` and setting `START_DAEMON=no`
 1. Enable ipv4 forwarding in `/etc/sysctl.conf` uncomment the line `#net.ipv4.ip_forward=1`
 1. Install the phidgets library and webservice
 1. Add the phidgetswebservice init.d script to `/etc/init.d/`
 1. Register the script with `update-rc.d phidgetswebservice defaults`
 1. Start phidgets with `/etc/init.d/phidgetswebservice start`
 1. Check that launch-tower-comm runs and connects without errors
 1. Prevent the OS from enumerating different wifi dongles, do the following
     1. `touch /etc/udev/rules.d/75-persistent-net-generator.r`
     1. `rm /etc/udev/rules.d/70-persistent-net.rules`
     1. Reboot and see if networking comes up with wlan0.
     1. Reboot with a different wifi dongle and it should also come up as wlan0.
