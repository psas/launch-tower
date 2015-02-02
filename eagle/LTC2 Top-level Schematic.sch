<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="special">
<description>&lt;b&gt;Special Devices&lt;/b&gt;&lt;p&gt;
7-segment displays, switches, heatsinks, crystals, transformers, etc.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FUSE">
<description>&lt;B&gt;FUSE&lt;/B&gt;&lt;p&gt;
5 x 20 mm</description>
<wire x1="-11.43" y1="1.905" x2="-12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-10.795" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.81" x2="-6.985" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-6.985" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-10.795" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.81" x2="-10.795" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.81" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="6.985" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.81" x2="10.795" y2="3.81" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="10.795" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="6.985" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.81" x2="6.985" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-3.81" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.43" y1="1.905" x2="12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.794" x2="5.715" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.794" x2="5.715" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.524" x2="5.08" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.524" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.524" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.127" width="0.1524" layer="21"/>
<pad name="1" x="-11.43" y="0" drill="1.3208" shape="long"/>
<pad name="2" x="11.43" y="0" drill="1.3208" shape="long"/>
<text x="-5.08" y="3.302" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-12.065" y1="1.905" x2="-10.795" y2="3.175" layer="21"/>
<rectangle x1="-12.065" y1="-3.175" x2="-10.795" y2="-1.905" layer="21"/>
<rectangle x1="-11.43" y1="-2.54" x2="-10.795" y2="2.54" layer="51"/>
<rectangle x1="-6.985" y1="1.905" x2="-5.715" y2="3.175" layer="21"/>
<rectangle x1="-6.985" y1="-3.175" x2="-5.715" y2="-1.905" layer="21"/>
<rectangle x1="-6.985" y1="-2.54" x2="-6.35" y2="2.54" layer="21"/>
<rectangle x1="-10.795" y1="0.762" x2="-6.985" y2="2.54" layer="21"/>
<rectangle x1="-10.795" y1="-2.54" x2="-6.985" y2="-0.762" layer="21"/>
<rectangle x1="5.715" y1="1.905" x2="6.985" y2="3.175" layer="21"/>
<rectangle x1="5.715" y1="-3.175" x2="6.985" y2="-1.905" layer="21"/>
<rectangle x1="6.35" y1="-2.54" x2="6.985" y2="2.54" layer="21"/>
<rectangle x1="10.795" y1="1.905" x2="12.065" y2="3.175" layer="21"/>
<rectangle x1="10.795" y1="-3.175" x2="12.065" y2="-1.905" layer="21"/>
<rectangle x1="10.795" y1="-2.54" x2="11.43" y2="2.54" layer="51"/>
<rectangle x1="6.985" y1="0.762" x2="10.795" y2="2.54" layer="21"/>
<rectangle x1="6.985" y1="-2.54" x2="10.795" y2="-0.762" layer="21"/>
</package>
<package name="BATTERY">
<description>&lt;B&gt;BATTERY&lt;/B&gt;&lt;p&gt;
22 mm</description>
<wire x1="0.635" y1="2.54" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-3.175" x2="2.54" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="1.905" y2="-3.81" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="11.43" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="10.2362" width="0.1524" layer="21"/>
<pad name="-" x="-5.715" y="0" drill="1.016" shape="long"/>
<pad name="+" x="9.525" y="-5.08" drill="1.016" shape="long"/>
<pad name="+@1" x="9.525" y="5.08" drill="1.016" shape="long"/>
<text x="-4.1656" y="6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="3.81" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.635" y1="-1.27" x2="0" y2="1.27" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="FUSE">
<wire x1="-5.08" y1="0" x2="-3.556" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="-2.54" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.889" y1="-1.4986" x2="2.4892" y2="0" width="0.254" layer="94"/>
<wire x1="-3.5992" y1="1.4912" x2="-3.048" y2="1.7272" width="0.254" layer="94" curve="-46.337037" cap="flat"/>
<wire x1="-3.048" y1="1.7272" x2="-2.496" y2="1.491" width="0.254" layer="94" curve="-46.403624" cap="flat"/>
<wire x1="0.4572" y1="-1.778" x2="0.8965" y2="-1.4765" width="0.254" layer="94" curve="63.169357" cap="flat"/>
<wire x1="-0.0178" y1="-1.508" x2="0.4572" y2="-1.7778" width="0.254" layer="94" curve="64.986119" cap="flat"/>
<text x="-5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-7.62" y="0" visible="off" length="short" direction="pas" function="dot" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" function="dot" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="BATTERY">
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="1.27" y1="3.81" x2="1.27" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.524" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-6.35" size="1.778" layer="96">&gt;VALUE</text>
<pin name="-" x="5.08" y="0" visible="off" length="short" direction="pwr" rot="R180"/>
<pin name="+" x="-5.08" y="0" visible="off" length="short" direction="pwr"/>
<pin name="+@1" x="-2.54" y="0" visible="off" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FUSE" prefix="F" uservalue="yes">
<description>&lt;B&gt;FUSE&lt;/B&gt;&lt;p&gt;
5 x 20 mm</description>
<gates>
<gate name="G$1" symbol="FUSE" x="12.7" y="0"/>
</gates>
<devices>
<device name="" package="FUSE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BATTERY" prefix="BAT" uservalue="yes">
<description>&lt;B&gt;BATTERY&lt;/B&gt;</description>
<gates>
<gate name="G$1" symbol="BATTERY" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BATTERY">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="+@1" pad="+@1"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="10Custom">
<packages>
</packages>
<symbols>
<symbol name="CUST_IGNITER">
<wire x1="-7.62" y1="0" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-2.54" y2="15.24" width="0.254" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="0" y2="10.16" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="2.54" y2="15.24" width="0.254" layer="94"/>
<wire x1="2.54" y1="15.24" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<text x="-7.62" y="15.24" size="1.778" layer="95">Name</text>
<text x="-2.54" y="0" size="1.778" layer="96">value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="IGNITOR">
<gates>
<gate name="G$1" symbol="CUST_IGNITER" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="launch-tower">
<packages>
<package name="G5LA">
<wire x1="-9.9" y1="7.9" x2="9.9" y2="7.9" width="0.127" layer="21"/>
<wire x1="9.9" y1="7.9" x2="9.9" y2="-7.9" width="0.127" layer="21"/>
<wire x1="9.9" y1="-7.9" x2="-9.9" y2="-7.9" width="0.127" layer="21"/>
<wire x1="-9.9" y1="-7.9" x2="-9.9" y2="7.9" width="0.127" layer="21"/>
<text x="-2.27" y="-0.38" size="1.27" layer="25">&gt;name</text>
<pad name="PIN1" x="-8.5" y="0" drill="1.3"/>
<pad name="PIN2" x="-6.5" y="5.9" drill="1.1"/>
<pad name="PIN5" x="-6.5" y="-6.1" drill="1.1"/>
<pad name="PIN4" x="5.7" y="-6.1" drill="1.1"/>
<pad name="PIN3" x="5.7" y="5.9" drill="1.1"/>
</package>
</packages>
<symbols>
<symbol name="RELAY-2">
<text x="-15.24" y="2.54" size="1.27" layer="95" rot="R90">&gt;name</text>
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<pin name="SOURCE" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="COUT" x="-5.08" y="10.16" length="middle" rot="R270"/>
<pin name="CIN" x="-5.08" y="-10.16" length="middle" rot="R90"/>
<pin name="NC" x="5.08" y="-10.16" length="middle" rot="R90"/>
<pin name="NO" x="5.08" y="10.16" length="middle" rot="R270"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="0" width="0.254" layer="94" curve="-180"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-2.54" width="0.254" layer="94" curve="-180"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-5.08" width="0.254" layer="94" curve="-180"/>
<circle x="5" y="2.46" radius="0.2" width="0.254" layer="94"/>
<circle x="5" y="-2.46" radius="0.2" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="10.16" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="10.16" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="2.54" width="0.254" layer="94" curve="-180"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-3.81" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RELAY-2">
<gates>
<gate name="G$1" symbol="RELAY-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="G5LA">
<connects>
<connect gate="G$1" pin="CIN" pad="PIN5"/>
<connect gate="G$1" pin="COUT" pad="PIN2"/>
<connect gate="G$1" pin="NC" pad="PIN4"/>
<connect gate="G$1" pin="NO" pad="PIN3"/>
<connect gate="G$1" pin="SOURCE" pad="PIN1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch-coto">
<description>&lt;b&gt;COTO TECHNOLOGY&lt;/b&gt;&lt;p&gt;
Reed switch&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="CT10-XXXX-A2">
<description>&lt;b&gt;CT10 Series Molded Switch&lt;/b&gt;&lt;p&gt;
Source: www.cotorelay.com .. Coto_Technology__CT10-1530-G1.pdf</description>
<wire x1="-6.275" y1="1.1" x2="6.3" y2="1.1" width="0.2032" layer="21"/>
<wire x1="6.3" y1="1.1" x2="6.3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="6.3" y1="-1.1" x2="-6.3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-6.3" y1="-1.1" x2="-6.3" y2="1.1" width="0.2032" layer="21"/>
<wire x1="-6.5" y1="-1.3" x2="-6.5" y2="1.3" width="0" layer="20"/>
<wire x1="-6.5" y1="1.3" x2="6.5" y2="1.3" width="0" layer="20"/>
<wire x1="6.5" y1="1.3" x2="6.5" y2="-1.3" width="0" layer="20"/>
<wire x1="6.5" y1="-1.3" x2="-6.5" y2="-1.3" width="0" layer="20"/>
<smd name="1" x="-7.5" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="7.5" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-8.32" y="1.3302" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.32" y="-3.1082" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-7.85" y1="-0.575" x2="-6.25" y2="0.575" layer="51"/>
<rectangle x1="6.3" y1="-0.575" x2="7.85" y2="0.575" layer="51"/>
</package>
<package name="CT10-XXXX-G1">
<description>&lt;b&gt;CT10 Series Molded Switch&lt;/b&gt;&lt;p&gt;
Source: www.cotorelay.com .. Coto_Technology__CT10-1530-G1.pdf</description>
<wire x1="-6.275" y1="1.1" x2="6.3" y2="1.1" width="0.2032" layer="21"/>
<wire x1="6.3" y1="1.1" x2="6.3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="6.3" y1="-1.1" x2="-6.3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-6.3" y1="-1.1" x2="-6.3" y2="1.1" width="0.2032" layer="21"/>
<smd name="1" x="-7.625" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="7.625" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-8.32" y="1.3302" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.32" y="-3.1082" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-8.2" y1="-0.575" x2="-6.4" y2="0.575" layer="51"/>
<rectangle x1="6.4" y1="-0.575" x2="8.2" y2="0.575" layer="51"/>
</package>
<package name="CT10-XXXX-G4">
<description>&lt;b&gt;CT10 Series Molded Switch&lt;/b&gt;&lt;p&gt;
Source: www.cotorelay.com .. Coto_Technology__CT10-1530-G1.pdf</description>
<wire x1="-6.275" y1="1.1" x2="6.3" y2="1.1" width="0.2032" layer="21"/>
<wire x1="6.3" y1="1.1" x2="6.3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="6.3" y1="-1.1" x2="-6.3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-6.3" y1="-1.1" x2="-6.3" y2="1.1" width="0.2032" layer="21"/>
<smd name="1" x="-9.2" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="9.225" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-8.32" y="1.3302" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.32" y="-3.1082" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-9.8" y1="-0.575" x2="-6.4" y2="0.575" layer="51"/>
<rectangle x1="6.4" y1="-0.575" x2="9.8" y2="0.575" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="SWITCH-NO">
<wire x1="-2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.2839" width="0" layer="94"/>
<circle x="2.54" y="0" radius="0.2839" width="0" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CT10-XXXX-" prefix="SW">
<description>&lt;b&gt;CT10 Series Molded Switch&lt;/b&gt;&lt;p&gt;
Source: www.cotorelay.com .. Coto_Technology__CT10-1530-G1.pdf</description>
<gates>
<gate name="G$1" symbol="SWITCH-NO" x="0" y="0"/>
</gates>
<devices>
<device name="A2" package="CT10-XXXX-A2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="G1" package="CT10-XXXX-G1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="G4" package="CT10-XXXX-G4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="F1" library="special" deviceset="FUSE" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="F2" library="special" deviceset="FUSE" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="U$4" library="launch-tower" deviceset="RELAY-2" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="V_SOLAR" library="supply1" deviceset="VCC" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="BAT1" library="special" deviceset="BATTERY" device=""/>
<part name="BAT2" library="special" deviceset="BATTERY" device=""/>
<part name="ARM" library="switch-coto" deviceset="CT10-XXXX-" device="A2"/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="V_SOLAR1" library="supply1" deviceset="VCC" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="P+6" library="supply1" deviceset="+5V" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="0" y1="0" x2="0" y2="25.4" width="0.1524" layer="94"/>
<wire x1="0" y1="25.4" x2="15.24" y2="25.4" width="0.1524" layer="94"/>
<wire x1="15.24" y1="25.4" x2="15.24" y2="0" width="0.1524" layer="94"/>
<wire x1="15.24" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<text x="2.032" y="25.654" size="1.778" layer="94">AWAY BOX</text>
<wire x1="7.62" y1="20.32" x2="129.54" y2="20.32" width="0.1524" layer="94"/>
<wire x1="129.54" y1="20.32" x2="129.54" y2="40.64" width="0.1524" layer="94"/>
<wire x1="134.62" y1="45.72" x2="134.62" y2="20.32" width="0.1524" layer="94"/>
<wire x1="134.62" y1="20.32" x2="157.48" y2="20.32" width="0.1524" layer="94"/>
<wire x1="7.62" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="94"/>
<wire x1="20.32" y1="7.62" x2="20.32" y2="15.24" width="0.1524" layer="94"/>
<wire x1="20.32" y1="15.24" x2="162.56" y2="15.24" width="0.1524" layer="94"/>
<wire x1="134.62" y1="45.72" x2="96.52" y2="45.72" width="0.1524" layer="94"/>
<wire x1="129.54" y1="40.64" x2="96.52" y2="40.64" width="0.1524" layer="94"/>
<wire x1="96.52" y1="40.64" x2="96.52" y2="35.56" width="0.1524" layer="94"/>
<wire x1="96.52" y1="35.56" x2="91.44" y2="35.56" width="0.1524" layer="94"/>
<wire x1="88.9" y1="38.1" x2="91.44" y2="35.56" width="0.1524" layer="94"/>
<wire x1="88.9" y1="33.02" x2="91.44" y2="35.56" width="0.1524" layer="94"/>
<wire x1="96.52" y1="45.72" x2="96.52" y2="50.8" width="0.1524" layer="94"/>
<wire x1="96.52" y1="50.8" x2="91.44" y2="50.8" width="0.1524" layer="94"/>
<wire x1="88.9" y1="53.34" x2="91.44" y2="50.8" width="0.1524" layer="94"/>
<wire x1="88.9" y1="48.26" x2="91.44" y2="50.8" width="0.1524" layer="94"/>
<wire x1="81.28" y1="50.8" x2="86.36" y2="48.26" width="0.1524" layer="94"/>
<wire x1="86.36" y1="48.26" x2="81.28" y2="45.72" width="0.1524" layer="94"/>
<wire x1="81.28" y1="45.72" x2="86.36" y2="43.18" width="0.1524" layer="94"/>
<wire x1="86.36" y1="43.18" x2="81.28" y2="40.64" width="0.1524" layer="94"/>
<wire x1="81.28" y1="40.64" x2="86.36" y2="38.1" width="0.1524" layer="94"/>
<wire x1="86.36" y1="38.1" x2="81.28" y2="35.56" width="0.1524" layer="94"/>
<wire x1="81.28" y1="35.56" x2="88.9" y2="35.56" width="0.1524" layer="94"/>
<wire x1="111.76" y1="53.34" x2="111.76" y2="33.02" width="0.1524" layer="97"/>
<wire x1="111.76" y1="33.02" x2="144.78" y2="33.02" width="0.1524" layer="97"/>
<wire x1="144.78" y1="33.02" x2="144.78" y2="53.34" width="0.1524" layer="97"/>
<wire x1="144.78" y1="53.34" x2="111.76" y2="53.34" width="0.1524" layer="97"/>
<wire x1="106.68" y1="27.94" x2="149.86" y2="27.94" width="0.1524" layer="97"/>
<wire x1="149.86" y1="27.94" x2="149.86" y2="7.62" width="0.1524" layer="97"/>
<wire x1="149.86" y1="7.62" x2="106.68" y2="7.62" width="0.1524" layer="97"/>
<wire x1="106.68" y1="7.62" x2="106.68" y2="27.94" width="0.1524" layer="97"/>
<text x="121.92" y="48.26" size="1.778" layer="95">IGN BOX</text>
<text x="119.38" y="10.16" size="1.778" layer="95">LTC IGN BOX</text>
<text x="76.2" y="43.18" size="1.778" layer="95">IGN</text>
<wire x1="165.1" y1="17.78" x2="162.56" y2="15.24" width="0.1524" layer="94"/>
<wire x1="162.56" y1="15.24" x2="165.1" y2="12.7" width="0.1524" layer="94"/>
<wire x1="167.64" y1="17.78" x2="165.1" y2="15.24" width="0.1524" layer="94"/>
<wire x1="165.1" y1="15.24" x2="167.64" y2="12.7" width="0.1524" layer="94"/>
<wire x1="170.18" y1="17.78" x2="167.64" y2="15.24" width="0.1524" layer="94"/>
<wire x1="167.64" y1="15.24" x2="170.18" y2="12.7" width="0.1524" layer="94"/>
<wire x1="167.64" y1="15.24" x2="180.34" y2="15.24" width="0.1524" layer="94"/>
<wire x1="180.34" y1="15.24" x2="180.34" y2="12.7" width="0.1524" layer="94"/>
<wire x1="160.02" y1="22.86" x2="157.48" y2="20.32" width="0.1524" layer="94"/>
<wire x1="160.02" y1="17.78" x2="157.48" y2="20.32" width="0.1524" layer="94"/>
<wire x1="162.56" y1="22.86" x2="160.02" y2="20.32" width="0.1524" layer="94"/>
<wire x1="162.56" y1="17.78" x2="160.02" y2="20.32" width="0.1524" layer="94"/>
<wire x1="160.02" y1="20.32" x2="205.74" y2="20.32" width="0.1524" layer="94"/>
<wire x1="205.74" y1="20.32" x2="205.74" y2="38.1" width="0.1524" layer="94"/>
<wire x1="205.74" y1="48.26" x2="205.74" y2="68.58" width="0.1524" layer="94"/>
<wire x1="205.74" y1="68.58" x2="198.12" y2="76.2" width="0.1524" layer="94"/>
<wire x1="198.12" y1="76.2" x2="193.04" y2="76.2" width="0.1524" layer="94"/>
<wire x1="172.72" y1="66.04" x2="172.72" y2="63.5" width="0.1524" layer="94"/>
<wire x1="172.72" y1="60.96" x2="172.72" y2="63.5" width="0.1524" layer="94"/>
<wire x1="172.72" y1="63.5" x2="182.88" y2="63.5" width="0.1524" layer="94"/>
<wire x1="182.88" y1="63.5" x2="182.88" y2="66.04" width="0.1524" layer="94"/>
<wire x1="182.88" y1="86.36" x2="182.88" y2="91.44" width="0.1524" layer="94"/>
<wire x1="157.48" y1="104.14" x2="157.48" y2="60.96" width="0.1524" layer="97"/>
<wire x1="157.48" y1="60.96" x2="195.58" y2="60.96" width="0.1524" layer="97"/>
<wire x1="195.58" y1="60.96" x2="195.58" y2="104.14" width="0.1524" layer="97"/>
<wire x1="195.58" y1="104.14" x2="157.48" y2="104.14" width="0.1524" layer="97"/>
<text x="129.54" y="33.02" size="1.778" layer="97">IGNITOR</text>
<text x="170.18" y="101.6" size="1.778" layer="97">IGN BOARD</text>
<wire x1="187.96" y1="106.68" x2="187.96" y2="104.14" width="0.1524" layer="94"/>
<wire x1="175.26" y1="104.14" x2="175.26" y2="132.08" width="0.1524" layer="94"/>
<wire x1="175.26" y1="132.08" x2="193.04" y2="132.08" width="0.1524" layer="94"/>
<wire x1="200.66" y1="124.46" x2="193.04" y2="124.46" width="0.1524" layer="97"/>
<wire x1="193.04" y1="165.1" x2="200.66" y2="165.1" width="0.1524" layer="97"/>
<text x="203.2" y="144.78" size="1.778" layer="97">UMB</text>
<text x="193.04" y="132.08" size="1.778" layer="97">RR</text>
<wire x1="193.04" y1="142.24" x2="187.96" y2="142.24" width="0.1524" layer="94"/>
<wire x1="193.04" y1="147.32" x2="187.96" y2="147.32" width="0.1524" layer="94"/>
<wire x1="187.96" y1="147.32" x2="187.96" y2="149.86" width="0.1524" layer="94"/>
<text x="193.04" y="157.48" size="1.778" layer="97">ETH</text>
<wire x1="193.04" y1="157.48" x2="124.46" y2="157.48" width="0.1524" layer="94"/>
<wire x1="124.46" y1="157.48" x2="124.46" y2="172.72" width="0.1524" layer="94"/>
<wire x1="124.46" y1="172.72" x2="111.76" y2="172.72" width="0.1524" layer="94"/>
<wire x1="111.76" y1="172.72" x2="101.6" y2="172.72" width="0.1524" layer="94"/>
<wire x1="101.6" y1="172.72" x2="99.06" y2="172.72" width="0.1524" layer="94"/>
<wire x1="99.06" y1="172.72" x2="99.06" y2="139.7" width="0.1524" layer="94"/>
<wire x1="99.06" y1="139.7" x2="111.76" y2="139.7" width="0.1524" layer="94"/>
<wire x1="111.76" y1="139.7" x2="124.46" y2="139.7" width="0.1524" layer="94"/>
<wire x1="124.46" y1="139.7" x2="124.46" y2="157.48" width="0.1524" layer="94"/>
<wire x1="101.6" y1="175.26" x2="101.6" y2="172.72" width="0.1524" layer="94"/>
<wire x1="111.76" y1="172.72" x2="111.76" y2="182.88" width="0.1524" layer="94"/>
<wire x1="111.76" y1="182.88" x2="99.06" y2="182.88" width="0.1524" layer="94"/>
<wire x1="99.06" y1="182.88" x2="99.06" y2="190.5" width="0.1524" layer="94"/>
<wire x1="99.06" y1="190.5" x2="111.76" y2="190.5" width="0.1524" layer="94"/>
<wire x1="111.76" y1="190.5" x2="124.46" y2="190.5" width="0.1524" layer="94"/>
<wire x1="124.46" y1="190.5" x2="124.46" y2="182.88" width="0.1524" layer="94"/>
<wire x1="124.46" y1="182.88" x2="111.76" y2="182.88" width="0.1524" layer="94"/>
<wire x1="111.76" y1="190.5" x2="111.76" y2="200.66" width="0.1524" layer="94"/>
<wire x1="109.22" y1="198.12" x2="111.76" y2="200.66" width="0.1524" layer="94"/>
<wire x1="111.76" y1="200.66" x2="114.3" y2="198.12" width="0.1524" layer="94"/>
<wire x1="109.22" y1="200.66" x2="111.76" y2="203.2" width="0.1524" layer="94"/>
<wire x1="114.3" y1="200.66" x2="111.76" y2="203.2" width="0.1524" layer="94"/>
<wire x1="111.76" y1="203.2" x2="111.76" y2="213.36" width="0.1524" layer="94"/>
<wire x1="111.76" y1="213.36" x2="104.14" y2="220.98" width="0.1524" layer="94"/>
<wire x1="104.14" y1="220.98" x2="119.38" y2="220.98" width="0.1524" layer="94"/>
<wire x1="119.38" y1="220.98" x2="111.76" y2="213.36" width="0.1524" layer="94"/>
<text x="109.22" y="185.42" size="1.778" layer="95">ALFA</text>
<text x="104.14" y="154.94" size="1.778" layer="95">BEAGLEBONE</text>
<wire x1="111.76" y1="139.7" x2="111.76" y2="129.54" width="0.1524" layer="94"/>
<wire x1="111.76" y1="129.54" x2="99.06" y2="129.54" width="0.1524" layer="94"/>
<wire x1="99.06" y1="129.54" x2="99.06" y2="114.3" width="0.1524" layer="94"/>
<wire x1="99.06" y1="114.3" x2="124.46" y2="114.3" width="0.1524" layer="94"/>
<wire x1="124.46" y1="114.3" x2="124.46" y2="129.54" width="0.1524" layer="94"/>
<wire x1="124.46" y1="129.54" x2="111.76" y2="129.54" width="0.1524" layer="94"/>
<wire x1="104.14" y1="124.46" x2="104.14" y2="119.38" width="0.1524" layer="94"/>
<wire x1="104.14" y1="119.38" x2="106.68" y2="119.38" width="0.1524" layer="94"/>
<wire x1="106.68" y1="119.38" x2="119.38" y2="119.38" width="0.1524" layer="94"/>
<wire x1="119.38" y1="119.38" x2="119.38" y2="124.46" width="0.1524" layer="94"/>
<wire x1="119.38" y1="124.46" x2="104.14" y2="124.46" width="0.1524" layer="94"/>
<text x="106.934" y="120.904" size="1.778" layer="95">USB HUB</text>
<text x="112.522" y="125.73" size="1.778" layer="95">PHIDGET</text>
<text x="111.76" y="134.62" size="1.778" layer="95">USB</text>
<text x="111.76" y="177.8" size="1.778" layer="95">USB</text>
<wire x1="106.68" y1="119.38" x2="106.68" y2="106.68" width="0.1524" layer="94"/>
<wire x1="106.68" y1="106.68" x2="99.06" y2="106.68" width="0.1524" layer="94"/>
<wire x1="99.06" y1="106.68" x2="91.44" y2="106.68" width="0.1524" layer="94"/>
<wire x1="91.44" y1="106.68" x2="91.44" y2="96.52" width="0.1524" layer="94"/>
<wire x1="91.44" y1="96.52" x2="93.98" y2="96.52" width="0.1524" layer="94"/>
<wire x1="93.98" y1="96.52" x2="96.52" y2="96.52" width="0.1524" layer="94"/>
<wire x1="96.52" y1="96.52" x2="99.06" y2="96.52" width="0.1524" layer="94"/>
<wire x1="99.06" y1="96.52" x2="106.68" y2="96.52" width="0.1524" layer="94"/>
<wire x1="106.68" y1="96.52" x2="114.3" y2="96.52" width="0.1524" layer="94"/>
<wire x1="114.3" y1="96.52" x2="116.84" y2="96.52" width="0.1524" layer="94"/>
<wire x1="116.84" y1="96.52" x2="119.38" y2="96.52" width="0.1524" layer="94"/>
<wire x1="119.38" y1="96.52" x2="121.92" y2="96.52" width="0.1524" layer="94"/>
<wire x1="121.92" y1="96.52" x2="121.92" y2="106.68" width="0.1524" layer="94"/>
<wire x1="121.92" y1="106.68" x2="114.3" y2="106.68" width="0.1524" layer="94"/>
<wire x1="114.3" y1="106.68" x2="106.68" y2="106.68" width="0.1524" layer="94"/>
<wire x1="99.06" y1="106.68" x2="99.06" y2="96.52" width="0.1524" layer="94"/>
<wire x1="106.68" y1="106.68" x2="106.68" y2="96.52" width="0.1524" layer="94"/>
<wire x1="114.3" y1="106.68" x2="114.3" y2="96.52" width="0.1524" layer="94"/>
<text x="109.22" y="106.68" size="1.778" layer="95">USB RELAY</text>
<text x="93.98" y="101.6" size="1.778" layer="95">R1</text>
<text x="101.6" y="101.6" size="1.778" layer="95">R2</text>
<text x="109.22" y="101.6" size="1.778" layer="95">R3</text>
<text x="116.84" y="101.6" size="1.778" layer="95">R4</text>
<wire x1="182.88" y1="91.44" x2="96.52" y2="91.44" width="0.1524" layer="94"/>
<wire x1="96.52" y1="91.44" x2="96.52" y2="96.52" width="0.1524" layer="94"/>
<wire x1="93.98" y1="96.52" x2="93.98" y2="91.44" width="0.1524" layer="94"/>
<wire x1="93.98" y1="91.44" x2="83.82" y2="91.44" width="0.1524" layer="94"/>
<wire x1="83.82" y1="91.44" x2="83.82" y2="86.36" width="0.1524" layer="94"/>
<text x="71.12" y="73.66" size="1.778" layer="95">IGN_BATT
16V</text>
<text x="208.28" y="43.18" size="1.778" layer="95">ARM</text>
<text x="185.42" y="104.14" size="1.778" layer="95" rot="R90">V_SP</text>
<wire x1="193.04" y1="165.1" x2="193.04" y2="124.46" width="0.1524" layer="95"/>
<text x="193.04" y="147.32" size="1.778" layer="95">V_SP</text>
<wire x1="187.96" y1="142.24" x2="187.96" y2="139.7" width="0.1524" layer="94"/>
<wire x1="119.38" y1="96.52" x2="119.38" y2="93.98" width="0.1524" layer="94"/>
<wire x1="119.38" y1="93.98" x2="129.54" y2="93.98" width="0.1524" layer="94"/>
<wire x1="129.54" y1="96.52" x2="129.54" y2="93.98" width="0.1524" layer="94"/>
<text x="127" y="93.98" size="1.778" layer="95" rot="R90">V_SP</text>
<wire x1="116.84" y1="96.52" x2="116.84" y2="60.96" width="0.1524" layer="94"/>
<wire x1="116.84" y1="60.96" x2="58.42" y2="60.96" width="0.1524" layer="94"/>
<wire x1="58.42" y1="66.04" x2="58.42" y2="55.88" width="0.1524" layer="94"/>
<wire x1="58.42" y1="55.88" x2="50.8" y2="55.88" width="0.1524" layer="94"/>
<wire x1="50.8" y1="55.88" x2="43.18" y2="55.88" width="0.1524" layer="94"/>
<wire x1="43.18" y1="55.88" x2="43.18" y2="60.96" width="0.1524" layer="94"/>
<wire x1="43.18" y1="60.96" x2="43.18" y2="66.04" width="0.1524" layer="94"/>
<wire x1="43.18" y1="66.04" x2="58.42" y2="66.04" width="0.1524" layer="94"/>
<wire x1="50.8" y1="55.88" x2="50.8" y2="53.34" width="0.1524" layer="94"/>
<wire x1="43.18" y1="60.96" x2="38.1" y2="60.96" width="0.1524" layer="94"/>
<wire x1="38.1" y1="60.96" x2="38.1" y2="63.5" width="0.1524" layer="94"/>
<text x="48.26" y="60.96" size="1.778" layer="95">19V</text>
<wire x1="165.1" y1="104.14" x2="165.1" y2="106.68" width="0.1524" layer="94"/>
<text x="35.56" y="60.96" size="1.778" layer="95" rot="R90">VBATT</text>
<wire x1="43.18" y1="96.52" x2="43.18" y2="91.44" width="0.1524" layer="94"/>
<wire x1="43.18" y1="91.44" x2="43.18" y2="86.36" width="0.1524" layer="94"/>
<wire x1="43.18" y1="86.36" x2="50.8" y2="86.36" width="0.1524" layer="94"/>
<wire x1="50.8" y1="86.36" x2="58.42" y2="86.36" width="0.1524" layer="94"/>
<wire x1="58.42" y1="86.36" x2="58.42" y2="91.44" width="0.1524" layer="94"/>
<wire x1="58.42" y1="91.44" x2="58.42" y2="96.52" width="0.1524" layer="94"/>
<wire x1="58.42" y1="96.52" x2="43.18" y2="96.52" width="0.1524" layer="94"/>
<wire x1="43.18" y1="91.44" x2="38.1" y2="91.44" width="0.1524" layer="94"/>
<wire x1="38.1" y1="91.44" x2="38.1" y2="93.98" width="0.1524" layer="94"/>
<wire x1="58.42" y1="91.44" x2="63.5" y2="91.44" width="0.1524" layer="94"/>
<wire x1="63.5" y1="91.44" x2="63.5" y2="93.98" width="0.1524" layer="94"/>
<wire x1="50.8" y1="86.36" x2="50.8" y2="83.82" width="0.1524" layer="94"/>
<text x="48.26" y="91.44" size="1.778" layer="95">5V</text>
<text x="45.72" y="88.9" size="1.778" layer="95">DC-DC</text>
<text x="35.56" y="91.44" size="1.778" layer="95" rot="R90">VBATT</text>
<text x="185.42" y="147.32" size="1.778" layer="95" rot="R90">19V</text>
<text x="68.58" y="93.98" size="1.778" layer="95" rot="R90">5V</text>
<wire x1="81.28" y1="50.8" x2="88.9" y2="50.8" width="0.1524" layer="94"/>
<wire x1="50.8" y1="111.76" x2="50.8" y2="114.3" width="0.1524" layer="94"/>
<wire x1="50.8" y1="114.3" x2="43.18" y2="114.3" width="0.1524" layer="94"/>
<wire x1="45.72" y1="116.84" x2="43.18" y2="114.3" width="0.1524" layer="94"/>
<wire x1="43.18" y1="114.3" x2="45.72" y2="111.76" width="0.1524" layer="94"/>
<wire x1="43.18" y1="116.84" x2="40.64" y2="114.3" width="0.1524" layer="94"/>
<wire x1="43.18" y1="111.76" x2="40.64" y2="114.3" width="0.1524" layer="94"/>
<wire x1="40.64" y1="114.3" x2="35.56" y2="114.3" width="0.1524" layer="94"/>
<wire x1="35.56" y1="114.3" x2="35.56" y2="119.38" width="0.1524" layer="94"/>
<wire x1="35.56" y1="119.38" x2="43.18" y2="119.38" width="0.1524" layer="94"/>
<wire x1="43.18" y1="119.38" x2="43.18" y2="129.54" width="0.1524" layer="94"/>
<wire x1="43.18" y1="129.54" x2="35.56" y2="129.54" width="0.1524" layer="94"/>
<wire x1="35.56" y1="129.54" x2="27.94" y2="129.54" width="0.1524" layer="94"/>
<wire x1="27.94" y1="129.54" x2="27.94" y2="119.38" width="0.1524" layer="94"/>
<wire x1="27.94" y1="119.38" x2="35.56" y2="119.38" width="0.1524" layer="94"/>
<wire x1="35.56" y1="129.54" x2="35.56" y2="134.62" width="0.1524" layer="94"/>
<wire x1="35.56" y1="134.62" x2="43.18" y2="134.62" width="0.1524" layer="94"/>
<wire x1="45.72" y1="137.16" x2="43.18" y2="134.62" width="0.1524" layer="94"/>
<wire x1="45.72" y1="132.08" x2="43.18" y2="134.62" width="0.1524" layer="94"/>
<wire x1="48.26" y1="137.16" x2="45.72" y2="134.62" width="0.1524" layer="94"/>
<wire x1="45.72" y1="134.62" x2="48.26" y2="132.08" width="0.1524" layer="94"/>
<wire x1="45.72" y1="134.62" x2="76.2" y2="134.62" width="0.1524" layer="94"/>
<wire x1="76.2" y1="134.62" x2="76.2" y2="157.48" width="0.1524" layer="94"/>
<wire x1="76.2" y1="157.48" x2="71.12" y2="157.48" width="0.1524" layer="94"/>
<wire x1="71.12" y1="157.48" x2="71.12" y2="152.4" width="0.1524" layer="94"/>
<wire x1="71.12" y1="152.4" x2="63.5" y2="152.4" width="0.1524" layer="94"/>
<wire x1="63.5" y1="152.4" x2="55.88" y2="152.4" width="0.1524" layer="94"/>
<wire x1="55.88" y1="152.4" x2="55.88" y2="157.48" width="0.1524" layer="94"/>
<wire x1="55.88" y1="157.48" x2="55.88" y2="162.56" width="0.1524" layer="94"/>
<wire x1="55.88" y1="162.56" x2="68.58" y2="162.56" width="0.1524" layer="94"/>
<wire x1="68.58" y1="162.56" x2="71.12" y2="162.56" width="0.1524" layer="94"/>
<wire x1="71.12" y1="162.56" x2="71.12" y2="157.48" width="0.1524" layer="94"/>
<wire x1="63.5" y1="152.4" x2="63.5" y2="149.86" width="0.1524" layer="94"/>
<wire x1="68.58" y1="162.56" x2="68.58" y2="165.1" width="0.1524" layer="94"/>
<wire x1="55.88" y1="157.48" x2="45.72" y2="157.48" width="0.1524" layer="94"/>
<wire x1="48.26" y1="154.94" x2="45.72" y2="157.48" width="0.1524" layer="94"/>
<wire x1="48.26" y1="160.02" x2="45.72" y2="157.48" width="0.1524" layer="94"/>
<wire x1="45.72" y1="154.94" x2="43.18" y2="157.48" width="0.1524" layer="94"/>
<wire x1="43.18" y1="157.48" x2="45.72" y2="160.02" width="0.1524" layer="94"/>
<wire x1="43.18" y1="157.48" x2="2.54" y2="157.48" width="0.1524" layer="94"/>
<wire x1="2.54" y1="157.48" x2="2.54" y2="152.4" width="0.1524" layer="94"/>
<wire x1="2.54" y1="152.4" x2="10.16" y2="152.4" width="0.1524" layer="94"/>
<wire x1="10.16" y1="152.4" x2="10.16" y2="142.24" width="0.1524" layer="94"/>
<wire x1="10.16" y1="142.24" x2="2.54" y2="142.24" width="0.1524" layer="94"/>
<wire x1="2.54" y1="142.24" x2="-5.08" y2="142.24" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="142.24" x2="-5.08" y2="152.4" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="152.4" x2="2.54" y2="152.4" width="0.1524" layer="94"/>
<wire x1="2.54" y1="142.24" x2="2.54" y2="137.16" width="0.1524" layer="94"/>
<wire x1="2.54" y1="137.16" x2="12.7" y2="137.16" width="0.1524" layer="94"/>
<wire x1="15.24" y1="139.7" x2="12.7" y2="137.16" width="0.1524" layer="94"/>
<wire x1="12.7" y1="137.16" x2="15.24" y2="134.62" width="0.1524" layer="94"/>
<wire x1="17.78" y1="139.7" x2="15.24" y2="137.16" width="0.1524" layer="94"/>
<wire x1="15.24" y1="137.16" x2="17.78" y2="134.62" width="0.1524" layer="94"/>
<wire x1="15.24" y1="137.16" x2="22.86" y2="137.16" width="0.1524" layer="94"/>
<wire x1="22.86" y1="137.16" x2="22.86" y2="134.62" width="0.1524" layer="94"/>
<text x="1.016" y="146.304" size="1.778" layer="95">PV</text>
<text x="57.404" y="155.194" size="1.778" layer="95">LINEAR PV
CHARGER</text>
<text x="29.972" y="123.698" size="1.778" layer="95">12V BATT</text>
</plain>
<instances>
<instance part="F1" gate="G$1" x="7.62" y="15.24" rot="R90"/>
<instance part="GND1" gate="1" x="180.34" y="10.16"/>
<instance part="F2" gate="G$1" x="195.58" y="15.24" rot="R90"/>
<instance part="GND2" gate="1" x="195.58" y="5.08"/>
<instance part="U$4" gate="G$1" x="177.8" y="76.2"/>
<instance part="GND4" gate="1" x="172.72" y="58.42"/>
<instance part="P+1" gate="1" x="165.1" y="109.22"/>
<instance part="V_SOLAR" gate="VCC" x="187.96" y="109.22" smashed="yes"/>
<instance part="P+3" gate="VCC" x="187.96" y="152.4" smashed="yes"/>
<instance part="P+4" gate="1" x="101.6" y="177.8"/>
<instance part="GND5" gate="1" x="101.6" y="137.16"/>
<instance part="BAT1" gate="G$1" x="83.82" y="81.28" smashed="yes" rot="R270">
<attribute name="VALUE" x="77.47" y="85.09" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="BAT2" gate="G$1" x="83.82" y="73.66" smashed="yes" rot="R270">
<attribute name="VALUE" x="77.47" y="77.47" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="ARM" gate="G$1" x="205.74" y="43.18" smashed="yes" rot="R90"/>
<instance part="GND3" gate="1" x="187.96" y="137.16"/>
<instance part="V_SOLAR1" gate="VCC" x="129.54" y="99.06" smashed="yes"/>
<instance part="GND6" gate="1" x="50.8" y="50.8"/>
<instance part="P+2" gate="1" x="38.1" y="66.04" smashed="yes"/>
<instance part="P+5" gate="1" x="38.1" y="96.52" smashed="yes"/>
<instance part="P+6" gate="1" x="63.5" y="96.52" smashed="yes"/>
<instance part="GND7" gate="1" x="50.8" y="81.28"/>
<instance part="GND8" gate="1" x="50.8" y="109.22"/>
<instance part="GND9" gate="1" x="22.86" y="132.08"/>
<instance part="GND10" gate="1" x="63.5" y="147.32"/>
<instance part="P+7" gate="1" x="68.58" y="167.64" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="F2" gate="G$1" pin="1"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="BAT1" gate="G$1" pin="-"/>
<pinref part="BAT2" gate="G$1" pin="+@1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
