Questions for Design Review III
###############################


Misc
====
1. Include master power disconnect switch?
   Between external power input and battery pack, and the rest of the
   LTC.  Or between the BB and 5V rail (when BB is down, 12V and 19V
   rails are inhibited).


Battery Protection
==================
1. Replace bq w/ IC that protects, balances, *and* provides fuel
   gauging (eliminating the need for the LTC2990 voltage/current sense
   IC)?


DC-DC Converters
================
1. Buffer between BeagleBone GPIOs and convert INHIBIT inputs?
   E.g., Schmitt trigger, transistor, etc.


Rocket Interface / Ignition Schematic
=====================================
1. How many conductor pairs in rocket Ethernet connection?
2. Replace individual, somewhat confusing LEDs with A) a "bar chart"
   sequence of LEDs that indicate increasing levels of un-safe-ness as
   each stage in the ignition circuit becomes active, and B) separate
   signal-status LEDs?
   
   Bar chart, e.g., how close to the away box connector is the
   ignition battery power?
   a. ignition battery present
   b. ignition power to ROCKET_IGNITE relay
   d. ignition power to arming switch (ROCKET_IGNITE active)
   e. ignition power to shorting bar
   f. ignition power to away box connector (BAKERCON 1!! RUN AWAY!!)

   LEDs indicating signal status:
   a. ROCKET_READY active
   b. shore power (19 VDC rail) active
   c. ROCKET_IGNITE active
   d. rocket umbilical connected


External Devices
================
1. Replace PolyFuse/PPTC devices with resettable breakers?  E.g.,
   Potter&Brumfeld panel-mount push-to-reset type:
   http://www.digikey.com/product-detail/en/W28-XQ1A-1/PB182-ND/45056
