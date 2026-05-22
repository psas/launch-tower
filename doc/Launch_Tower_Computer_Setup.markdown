# Setup the Launch Tower Computer

## BeagleBone Black
 1. Download [beagleboard imager](https://www.beagleboard.org/bb-imager)
 2. Use the imager to flash a microsd card with your image of choice
 3. Insert the microsd into the beaglebone and power it up
 4. Place card in the unpowered BeagleBoard.
 5. Hold down the "User Boot" button, it is the button near the SD card end of the board.
 6. Keep holding down the button and apply power.
 7. Keep holding down the button until the bank of 4 LED's light up for a few seconds. You may now release the button
 8. The system will boot into Debian while the OS is copied onto the eMMC.
 9. When it finishes, the 4 LED's will light up and then it should power itself off.
 10. Remove the SD card and power it up.

## System Setup
 1. Update the package list `apt-get update`
 2. Install all updates. `apt-get upgrade`
 3. Update password to the PSAS standard with `passwd`
 4. Install the [phidgets](https://www.phidgets.com/docs/Phidget22admin_Guide) library and webservice
 5. Check that [launch-tower-comm](https://github.com/psas/launch-tower-comm) runs and connects without errors using the prefconfigured usb network on the bbb


## Configure Systemd Networkd

[Systemd Networkd](https://man7.org/linux/man-pages/man8/systemd-networkd.8.html)

 1. Create a link file to give a persistent name to the network interface

 eg. /etc/systemd/network/10-wifi-dongle.link

 ```
 [Match]
 MACAddress=8c:ef:d5:f6:6a:80

 [Link]
 Name=wlan_dongle
 ```
 Use the actual MACAddress of the wifi dongle you plan to use

 2. Edit /etc/network/interfaces.d/10-wlan-dongle.conf (create this file first)

 ```
 iface wlan_dongle inet static
         hostapd /etc/hostapd/hostapd.conf
 ```

 This will tell systemd to give this interface a static ip address, and let hostapd control it.

## Configure Hostapd

[hostapd](https://manpages.debian.org/testing/hostapd/hostapd.8.en.html)

 1. Edit /etc/hostapd/hostapd.conf

 ```
 interface=wlan_dongle

 # a simply means 5GHz
 # g simply means 2.4GHz band
 hw_mode=g

 # the channel to use
 channel=11

 # limit the frequencies used to those allowed in the country
 #ieee80211d=1
 # the country code
 #country_code=US

 # 802.11n support
 ieee80211n=1
 # QoS support, also required for full speed on 802.11n/ac/ax
 wmm_enabled=1

 ssid=psas-tower-link

 # 1=wpa, 2=wep, 3=both
 auth_algs=1
 wpa=2
 wpa_key_mgmt=WPA-PSK
 wpa_pairwise=TKIP
 rsn_pairwise=CCMP
 wpa_passphrase=psasrocket

 macaddr_acl=0
 ignore_broadcast_ssid=0

 logger_syslog=-1
 logger_syslog_level=2
 ```

This configures the network interface and sets its ssid and passkey
