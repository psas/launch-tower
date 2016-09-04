###########
LTC3 To-Dos
###########


Charge Controller
=================

Schematic
---------
x Remove 3.3V/5.0V connector?  Remove 3.3V; combine with I2C
  connector.
x Add pin header/connector for LT8490 STATUS UART.
x Add voltage divider to both sides of LTC299x current sense
  resistors.
x Separate ground node for low-voltage (3.3V/5.0V) bus.

PCB
---

o Remove thermals from all high-current copper fills.
o Add ground plane copper fills to all layers.
o Add ground plane stapling.
o Move LT8490 current sense filter components closer to IC.


Cell Protection
===============

Schematic
---------
x Add low-voltage power connector (5V for LTC2990).
x Move LTC2990 sense resistor from battery side to input side.
x Add voltage divider to both sides of LTC299x current sense
  resistors.
x Connector-ize LTC2900 temp-sensing BJT (so it can be taped to
  battery).
x Separate ground node for low-voltage (3.3V/5.0V) bus.

PCB
---
o Move by-pass caps (C1, C3) closer to IC.
o Remove thermals from all high-current copper fills.
o Add ground plane copper fills to all layers.
o Add ground plane stapling.


LTC
===

Schematic
---------
x Remove front panel DC-DC converter inhibit switches.  Replace w/
  single switch that grounds all converters' nINHIBIT pins.
x Add jumpers to ground to each converters' nINHIBIT pin.
x Add voltage divider to both sides of LTC299x current sense
  resistors.
x Replace ext. trigger breakers with 100 ohm current-limiting
  resistors.
x Change GROUND_IGN symbol.
x Replace external I2C connector w/ combined I2C/low-voltage.

PCB
---

o Remove thermals from all high-current copper fills.
o Add ground plane copper fills to all layers.
o Add ground plane stapling.
