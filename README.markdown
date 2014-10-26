PSAS Launch Tower Computer (LTC)
================================

PSAS has had three generations of launch tower computers:

- [LTC v1 (2005-2012)](http://psas.pdx.edu/Lv2LaunchTowerElectronics/)
   - PC-104+ 486 running Linux 2.4 talking CAN to PIC18F-based boards with relays and analog
   - Lucent "Wavelan" PCMCIA WiFi card
   - 12V SLA battery powered with 30W solar panel
   - Metal IP66 case on independent
- [LTC v2 (2012 - 2014)](http://psas.pdx.edu/GroundTeamHome/launch_tower_v2/)
   - Beagle board talking USB to Phidget relay and analog boards
   - Alpha WiFi board
   - Ethernet umbilical cord
   - 12V SLA battery powered with 30W solar panel
   - Medium sized plastic IP67 enclosure
- LTC v3
   - BeagleBone Black using GPIO and analog mounted on a single custom carrier PCB
   - 14.7V LiPo pack with solar charger.
   - Smaller case
   

This repo contains everything related to the launch tower computer
(LTC), with the exception of the userspace software, which is
contained in the [launch-tower-comm repo](https://github.com/psas/launch-tower-comm).


Contents
========

- doc
   - Documentation, what there is of it.

- eagle
   - Schematics and PCB layouts, made with [Eagle](http://www.cadsoftusa.com/).

- laser_cut_drawings
   - Line art of the power and ignition boards' mounting panels, suitable for use with a laser cutter.

- ltc3
   - Everything related to the design and manufacture of the third generation launch tower computer, LTC3. 

- os
   - Everything needed to bring up a fresh, bootable Debian GNU/Linux system, just the way we like it.
