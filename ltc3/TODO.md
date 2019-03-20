# LTC3 Master To-Do List

More or less in order of priority.  Many tasks can be completed in
parallel.


* Finish off-board schematic.  [Paul]

* Update design files and BOMs (parts subsitutions made during board
  assembly; layout errors discovered; etc.)  [Paul]
  * Replace PI2127 ideal diodes with single SPDT toggle switch.
  * Fix air-trace on LTC3.
  * Tag commit that contains the design files (and Gerbers) from which
    the rev 1 boards were made.
 
* Figure out how to replace PI2127 ideal diodes on charge controller
  with an off-board switch and mod wires.  [Andy]

* Assemble LTC3 board.  [Andy]

* Buy a battery with a connector that gives us access between each of
  the cells.  OR  Shop for custom battery.  [Paul]

* Shop for remaining parts (mostly off-board, e.g. switches,
  connectors, etc.).  [Paul]

* Finish design documentation (it should at least match the existing
  design).

* Devise a test plan for each board.

* Simulate charge controller.  [Andy]

* Shop for an enclosure.  [Paul]

* Bring up Linux on the BeagleBone.  [Paul]

* Create some proof-of-concept software that can at least twiddle the
  various GPIOs, relays, etc.  [Paul]
