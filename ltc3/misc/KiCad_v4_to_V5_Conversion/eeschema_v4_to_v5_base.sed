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

