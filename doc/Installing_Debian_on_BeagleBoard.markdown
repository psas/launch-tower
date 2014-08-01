# Installing Debian On A BeagleBoard



## Download The NetInstall

These files create bootable SD with basic installation setup for downloading full package
Pay attention to what directory the ./mk_mmc.sh file uses for TEMP files:

    git clone git://github.com/RobertCNelson/netinstall.git
    cd netinstall
    sudo ./mk_mmc.sh --mmc /dev/mmcblk0 --uboot beagle_xm --distro squeeze
    #sudo ./mk_mmc.sh --mmc /dev/mmcblk0 --uboot beagle_xm --distro squeeze --serial-mode



## Modify uEnv.txt

Makes output go to serial.
NB: That is the capital letter o - not a zero:

    console=ttyO2,115200n8



## Unzip And Copy File To Memory Stick

Have to do this because script corrupts file when it copies first
time.

* -c option leaves the original .gz file in place
* Uses the TEMP directory from the ./mk_mmc.sh file install
* /media/boot/ is the path to SD card ('boot' name is set in the ./mk_mmc.sh file):

    zcat -c /tmp/tmp.SmlqaejIAl/initrd.mod.gz > /media/boot/initrd.net



## Unmount The "boot" Drive

Must do this or the files can become corrupted and install will fail.



## Continued Installation On Beagleboard

* Plugged network into the Eathernet port
* This image can run off USB power - though you need wall power to
  have enough for USB devices
* Booted up computer
* Got keyboard error
* Setup the network on "eth0" and installation continued
  * NB: Had to run DHCP twice to get an IP address - this is a common
    issue
* Selected Continue without installing a kernel?: "yes"
* Set root password: "root"
* Set new user - real name: "LTC Computer"
* Set new user - username: "ltc"
* Set new user - password: "ltc"
* Selected timezone: "Pacific"
* Selected Partition: "Guided - use the largest continuous free space"
* Selected Partitioning scheme: "All files in one partition
  (recommended for new users)"
* Selected: "Finish partitioning and write changes to disk"
* Write changes to disk: "yes"
* [Installer will format the SD card]
* [Installer will download and install the base system]
  * NB: This takes a LONG time - maybe more than 1hr
* Selected Continue without installing a kernel?: "yes"
* Disabled security and volatile updates - we want a stable setup to
  reamin stable
* Participate with survey: "no"
* Installed packages: "Web Server", "SSH Server"
* No boot loader: "Continue"
* [Installer will complete and go to a prompt - this can also take as
  long as an hour]
* Login as the root user


[Now we need to install the latest Kernel]

[Follow instructions on getting Kernel from
http://elinux.org/BeagleBoardDebian#Debian_Squeeze]

Ran into issue with downloading file so I just called the file:
http://rcn-ee.net/deb/squeeze-armel/LATEST-omap

Looked at that file which game me the latest Kernel URL and then ran:
    wget http://rcn-ee.net/deb/squeeze-armel/v3.2.19-x13/install-me.sh

    $ /bin/bash install-me.sh [Ran installer]

Got an error that SUDO was not installed - script should have used SU
but i just downloaded SUDO

    $ apt-get -y install sudo [get and install SUDO]
    $ /bin/bash install-me.sh [Re-ran installer]


[NOTE : CREATE A DUPLICATE OF CARD AT THIS POINT SO NO LOSS CAN
HAPPEN - INSTRUCTIONS BELOW]



## Install The Linux Driver For Phidgets

Make sure a C compiler, make, and USB drivers are installed:

    $ apt-get -y install gcc [Installs the GCC comiler]
    $ apt-get -y install make [Installs MAKE]
    $ apt-get -y install libusb-dev [Installs lib-usb]

[NOTE : http://sewiki.iai.uni-bonn.de/service/knowhow/phidgets/start]

    $ wget http://www.phidgets.com/downloads/libraries/libphidget_2.1.8.20120514.tar.gz [download the lib]
    $ wget http://www.phidgets.com/downloads/libraries/phidgetwebservice_2.1.8.20120514.tar.gz [download the WEB SERVICE]
    $ tar -zxvf libphidget_2.1.8.20120514.tar.gz [UNPACK THE ARCHIVE]
    $ mv libphidget_2.1.8.20120514 phidget21 [Rename folder]
    $ mv phidget21 .. [move folder up to the root directory]
    $ cd phidget21 [go into folder]
    $ ./configure
    $ make
    $ make install

The phidget library will be built on the computer - can take a long
time - more than 20 minutes

    $ cd [go back to the root home directory and install webservice]
    $ tar -zxvf phidgetwebservice_2.1.8.20120514.tar.gz [UNPACK THE WEBSERVICE ARCHIVE]
    $ mv phidgetwebservice-2.1.8.20120514 phidgetwebservice [Rename folder]
    $ mv phidgetwebservice .. [move folder up to the root directory]
    $ cd phidgetwebservice [go into folder]
    $ ./configure
    $ make
    $ make install



## Configure Network Interface Card

    $ ip address show [find the IP address for the device - eth0]
    $ ip address del 192.168.1.100/24 dev eth0 [remove old IP address from eth0]
    $ ip address add 192.168.0.100/24 brd + dev eth0 [add the new ip address to eth0]



## Install WiFi Network Card

[NOTE : We are using an Alfa Networks AWUS051NH 802.11a/b/g/n USB adapter]


### Step #1 - Install The Drivers For RT2870

[NOTE - the below failed - think its because there are unbuntu drivers that do not work with BB-Debian]

Install the drivers onto the BeagleBoard

* I used WinSCP to copy drivers from CD-rom on my machine to the tmp
  drive on the BeagleBoard
* The file was unpacked on my machine and the folder transferred
  (saved installing bzunzip utility)

    $ cd [move to root home folder]
    $ cd /drivers/2010_0709_RT2870_Linux_STA_v2.4.0.1 [move into folder]

[NOTE : Followed instructions from http://wiki.debian.org/rt2870sta]

    $ sensible-editor /etc/apt/sources.list [edit the list file]
    ADD "http://ftp.us.debian.org/debian squeeze main contrib non-free" [add non-free repository]
    $ aptitude update
    $ aptitude install firmware-ralink wireless-tools   [this will also install iwconfig]


### Step #2 - Install Daemon For WPA2 Encryption

[NOTE : following instructions from:
http://wiki.debian.org/WiFi/HowToUse#wpasupplicant]

    $ apt-get install -y wpasupplicant [installs daemon needed for WPA encryption]


### Step #3 - Set Default Configuration Settings For Wireless LAN

    $ chmod 0600 /etc/network/interfaces    [Restrict the permissions of /etc/network/interfaces, to prevent pre-shared key (PSK) disclosure]
    $ sensible-editor /etc/network/interfaces   [edit the network interface file]
        auto wlan0
        iface wlan0 inet static
            address 192.168.0.100
            netmask 255.255.255.0
            gateway 192.168.0.1
            wpa-ssid mynetworkname
            wpa-psk mysecretpassphrase

[NOTE : sensible-editor screw up this file by wrapping the first line
comment. I had to go back into the file and add a # symbol on the
second line]

    $ ifup wlan0    [Bring your interface up. This will start wpa_supplicant as a background process.]
    $ rebot -t now  [reboot so all settings engage - came up before but did not get online until reboot]
    $ wget http://www.google.com  [test that we are online]

Disable the Ethernet connection at boot:

    $ sensible-editor /etc/rc.local
    ifconfig eth0 down



## Turn Off Exim

Slows boot and causing issues:

    $update-rc.d -f exim4 (I think, that's untested)



## Auto-Run Script

[NOTE : Need to put in a script so webservice starts at every boot]

[NOTE : Instructions: http://www.debian-administration.org/articles/28]

/etc/init.d/phidgetswebservice:

    #! /bin/sh
    #
    # Filename: /etc/init.d/phidgetswebservice
    # Description: Starts the Phidgets Web Service
    # Created By: Richard Witherspoon
    # Last Updated: June 17, 2011
    
    
    # Some things that run always
    #/phidgetwebservice/phidgetwebservice21 -v
    
    # Carry out specific functions when asked to by the system
    case "$1" in
      start)
        echo "Starting script phidgetswebservice "
        /phidgetwebservice/phidgetwebservice21 -v
        ;;
      stop)
        echo "Stopping script phidgetswebservice"
        /phidgetwebservice/phidgetwebservice21 stop
        ;;
      *)
        echo "Usage: /etc/init.d/phidgetswebservice {start|stop}"
        exit 1
        ;;
    esac
    
    exit 0


    $ update-rc.d phidgetswebservice defaults       [Adds the script to startup sequence]
    $ update-rc.d -f  phidgetswebservice remove     [REMOVE FROM STARTUP]

Modify /etc/rc.local file to make this run at the very end (or it can hang up other processes:

    # START THE PHDGETS WEB SERVIE
    /etc/init.d/phidgetswebservice start



## Copying SD Card

Note: Wherever file is copied to must have space for full maount of
card. If you are copying a 2GB card the temp file will take 2GB
regardless of actual files on card.

1. Booted computer to linux
2. Inserted the SD card with image
3. dd if=/dev/mmcblk0 of=/media/see/sd-card.bin [Copy files to HDD (/media/see)]
4. Inserted new blank SD card
5. fdisk -l [Found the card name]
6. dd if=/media/see/sd-card.bin of=/dev/mmcblk0 [Copy file of original card to new card]
7. Unmounted and remounted card to verify complete copy with partitions

Note: When you boot up the next time with a copied SD card theres a
good chance it will error on check and require a reboot and scan.



## Useful Commands

See what drives are mounted where:

    mount

Stop Postgres:

    pg_dropcluster --stop 8.4 main

See what SQL packages running:

    dpkg --get-selections | grep sql

Remove postgres:

    aptitude purge postgresql-8.4

Find the temp file:

    find / -name "initrd.mod.gz"

Go to the temp directory:

    cd /tmp/[TEMP NAME HERE]

Expand gzip file:

    gunzip -c initrd.mod.gz > initrd.net
    zcat -c initrd.mod.gz > initrd.net

Diff the files to make sure:

    diff initrd.net /media/boot/initrd.net

Get file size:

    ls -l initrd.net

Copy file to memory stick:

    cp initrd.net /media/boot/initrd.net
    cp initrd.mod.gz /media/boot/initrd.net		# bad - will NOT unpack the file
