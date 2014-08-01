# Building Debian Linux onto Beagleboard



## Introduction

I just bought a Beagleboard xM for a project and the preference is to
run Debain Linux on it so the common packages needed for the project
are easily accessible.  The Beaglebaord will also be running drivers
for a Phidgets interface card (over USB) so those need to get
integrated.

Since I know nothing about building a Linux kernel, this is my
personal tutorial which starts from a basic level.



## References

* http://elinux.org/BeagleBoardDebian
* http://www.ibm.com/developerworks/linux/library/l-beagleboard-xm/
* http://www.lirtex.com/embedded/building-a-custom-debian-kernel-for-the-beagleboard/#more-96



## Format The Sd Card So It Can Take Images

A normal SD card doesn't have proper formatting or partitions so we have to
go through the formatting steps.

* First off I wanted to do this in Windows XP because that's my
  desktop system - pretty much don't think that you can.
    + So I've setup up a program called co-linux that will let me
      switch between windows and ubuntu linux. This will hopefully
      allow me to format the card under a linux OS.
        - If this doesn't work I'll setup a boot from flash drive with
          linux on it - and manage the formatting that way.
            * Using the software from
              http://www.pendrivelinux.com/yumi-multiboot-usb-creator/
        - Yea, coLinux didnlt work for some reason so I've started the
          YUMI software. I'm using a SD card in a USB card reader, so
          I leave the normal SD reader open for MicroSD formatting.
        - I'm telling it to format with “Debian Live Gnome” image -
          using Debian because maybe that makes formatting easier?
        - Had to download the Debian image - but the software handled
          that for me. It's a 1GB image though so its gonna take a
          while to download.
        - Now the ISO has ben downloaded and I'm formatting the SD
          card. Once that's done I should be able to boot up into
          Linux and format the SD card - assuming the Debian package has drivers
          to access CD card reader on this computer.
        - I'm curious to see if I can just use YUMI to stick the
          Debian image on the microSD card so I'm putting gthe image
          there and will try to boot BeaglBoard from that.
            * This totally failed. I think its because the BeagleBoard
              needs a specific bootloader on the SD card in order to
              work.
            * Now I'm gonna have to kill my current Windows XP session
              and boot into linux so I can try to format the card.

Information about Beagleboard issue with Phidgets:
http://www.phidgets.com/phorum/viewtopic.php?f=2&t=2828
