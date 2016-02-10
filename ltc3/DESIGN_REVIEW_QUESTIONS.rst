Questions for Design Review III
###############################


Misc
====
1. Include master power disconnect switch?
   Between external power input and battery pack, and the rest of the
   LTC.  Or between the BB and 5V rail (when BB is down, 12V and 19V
   rails are inhibited).

   A: There should be a manual power switch, but it should go between
   the power system and the rest of the system (shore power
   connection, ignition, BBB).  There's not really a reason to
   manually disconnect the rails or the battery pack. That said, the
   batteries do need to be connectorized so we can take them out for
   long term storage purposes.


Battery Protection
==================
1. Replace bq w/ IC that protects, balances, *and* provides fuel
   gauging (eliminating the need for the LTC2990 voltage/current sense
   IC)?

   A: It's been about six months since we did our first market survey.
   Take an hour to do a new check, but not more than an hour. Don't
   worry about it that much.


DC-DC Converters
================
1. Buffer between BeagleBone GPIOs and convert INHIBIT inputs?
   E.g., Schmitt trigger, transistor, etc.

   A: No need.


Rocket Interface / Ignition Schematic
=====================================
1. How many conductor pairs in rocket Ethernet connection?

   A: Four; the center-most conductors.

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

   A: Yes to both; we can remove the LEDs on the disconnected relay
   outputs and our bar chart is a good idea.


External Devices
================
1. Replace PolyFuse/PPTC devices with resettable breakers?  E.g.,
   Potter&Brumfeld panel-mount push-to-reset type:
   http://www.digikey.com/product-detail/en/W28-XQ1A-1/PB182-ND/45056
