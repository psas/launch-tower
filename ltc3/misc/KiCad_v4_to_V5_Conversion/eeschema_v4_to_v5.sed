# Metadata, etc.
#

s/^EESchema Schematic File Version 2/EESchema Schematic File Version 4/
/^LIBS:.*$/ d


# KiCAD Stock Symbols
#

s/^L GND /L power:GND /
s/^L GNDREF /L power:GNDREF /
s/^L VCC /L power:VCC /
s/^L +12V /L power:+12V /
s/^L +5V /L power:+5V /

s/^L R /L Device:R /
s/^L C /L Device:C /
s/^L CP /L Device:CP /
s/^L CP1 /L Device:CP1 /
s/^L INDUCTOR /L Device:L /
s/^L D /L Device:D /
s/^L CP /L Device:CP /
s/^L ZENER /L Device:D_Zener /
s/^L LED /L Device:LED /

s/^L FUSE /L Device:Fuse /
s/^L TEST /L Connector:TestPoint_2Pole /
s/^L TEST_1P /L Connector:TestPoint /
s/^L RJ45 /L Connector:RJ45_Shielded /
s/^L JUMPER3 /L Jumper:Jumper_3_Open /
s/^L Jumper_\(N[CO]\)_Small /L Device:Jumper_\1_Small /
s/^L SW_PUSH_SMALL /L Switch:SW_Push /

s/^L Q_NPN_\([[:alpha:]]\{3\}\) /L Device:Q_NPN_\1 /
s/^L Q_NMOS_\([[:alpha:]]\{3\}\) /L Device:Q_NMOS_\1 /
s/^L 4N25 /L Isolator:4N25 /
s/^L CONN_\([[:digit:]][[:digit:]]\)X\([[:digit:]][[:digit:]]\) /L Connector:Conn_\1x\2_Male /


# Local Symbols
#

s/^L 4N35 /L 4n35:4N35 /
s/^L 741G08 /L 741g08:741G08 /
s/^L 1Cell_Battery /L battery_single_cell:1Cell_Battery /
s/^L Battery /L battery_single_cell:Battery /
s/^L BeagleBone_Black_Expansion_Header_P8 /L BeagleBone_Black:BeagleBone_Black_Expansion_Header_P8 /
s/^L BeagleBone_Black_Expansion_Header_P9 /L BeagleBone_Black:BeagleBone_Black_Expansion_Header_P9 /
s/^L BQ77PL900 /L bq77PL900:BQ77PL900 /
s/^L BREAKER_1P /L breakers:BREAKER_1P /
s/^L CD74HC14 /L CD74HC14:CD74HC14 /
s/^L 24C256 /L EEPROMs:24C256 /
s/^L LT8490 /L LT8490:LT8490 /
s/^L LTC2990 /L LTC299x:LTC2990 /
s/^L LTC2991 /L LTC299x:LTC2991 /
s/^L Q_NMOS_SO8 /L MOSFET_SO8:Q_NMOS_SO8 /
s/^L Q_PMOS_SO8 /L MOSFET_SO8:Q_PMOS_SO8 /
s/^L Q_NMOS_SOT26 /L MOSFET_SOT26:Q_NMOS_SOT26 /
s/^L PI2127 /L PI2127:PI2127 /
s/^L PMV45EN /L PMV45EN:PMV45EN /
s/^L +19V /L power_nodes:+19V /
s/^L GND_IGN /L power_nodes:GND_IGN /
s/^L VBATT /L power_nodes:VBATT /
s/^L VIN /L power_nodes:VIN /
s/^L PTN78020H /L PTN78020n:PTN78020H /
s/^L PTN78020W /L PTN78020n:PTN78020W /
s/^L RELAY_1C /L relay_1c:RELAY_1C /
s/^L SN65220DBV /L SNx52x0:SN65220DBV /
s/^L SUM110P08-11 /L SUM110P08-11:SUM110P08-11 /
s/^L SPST /L switches2:SPST /
s/^L TLP3542 /L TLP:TLP3542 /
