# LTC3 Design Review


## Questions

1. The LT8490 (battery charge management and DC-DC converter) requires
   the presence of a battery to function properly:

       ...the LT8490 is not designed to provide power directly to a
       load without the presence of a battery.

   Do we care about this restriction?  If not, should we design in
   measures to prevent the LTC3 from operating if the battery is removed?

2. The MatLab script used to calculate component values for the LT8490
   circuit is having a difficult time getting us to precisely 33.6.
   [The Internet][1] tells us that a variance of ±50mV per cell is
   acceptable.  Presumably, it is preferable to be slightly under-
   as opposed to over-voltage.  Thoughts?

   [1]: http://batteryuniversity.com/learn/article/charging_lithium_ion_batteries
