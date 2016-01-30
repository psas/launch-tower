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


External Devices
================
1. Replace PolyFuse/PPTC devices with resettable breakers?  E.g.,
   Potter&Brumfeld panel-mount push-to-reset type:
   http://www.digikey.com/product-detail/en/W28-XQ1A-1/PB182-ND/45056
