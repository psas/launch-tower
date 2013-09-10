<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="launch-tower">
<packages>
<package name="LEMO-12">
<pad name="P7" x="-1.27" y="3.81" drill="0.7"/>
<pad name="P6" x="1.27" y="3.81" drill="0.7"/>
<pad name="P8" x="-3.81" y="1.27" drill="0.7"/>
<pad name="P12" x="-1.27" y="1.27" drill="0.7"/>
<pad name="P11" x="1.27" y="1.27" drill="0.7"/>
<pad name="P5" x="3.81" y="1.27" drill="0.7"/>
<pad name="P1" x="-3.81" y="-1.27" drill="0.7"/>
<pad name="P9" x="-1.27" y="-1.27" drill="0.7"/>
<pad name="P10" x="1.27" y="-1.27" drill="0.7"/>
<pad name="P4" x="3.81" y="-1.27" drill="0.7"/>
<pad name="P2" x="-1.27" y="-3.81" drill="0.7"/>
<pad name="P3" x="1.27" y="-3.81" drill="0.7"/>
</package>
<package name="SCREW-TERM-5MM">
<wire x1="5.0165" y1="-4.9657" x2="5.0165" y2="4.9657" width="0.127" layer="21"/>
<wire x1="5.0165" y1="4.9657" x2="-5.0165" y2="4.9657" width="0.127" layer="21"/>
<wire x1="-5.0165" y1="4.9657" x2="-5.0165" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-5.0165" y1="-4.318" x2="-5.0165" y2="-4.572" width="0.127" layer="21"/>
<wire x1="-5.0165" y1="-4.572" x2="-5.0165" y2="-4.9657" width="0.127" layer="21"/>
<wire x1="-5.0165" y1="-4.9657" x2="5.0165" y2="-4.9657" width="0.127" layer="21"/>
<pad name="2" x="2.54" y="0" drill="1.27" shape="square" rot="R180"/>
<pad name="1" x="-2.54" y="0" drill="1.27" shape="square" rot="R180"/>
<wire x1="-5.0165" y1="-4.572" x2="-5.207" y2="-4.572" width="0.127" layer="21"/>
<wire x1="-5.207" y1="-4.572" x2="-5.207" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-5.207" y1="-4.318" x2="-5.0165" y2="-4.318" width="0.127" layer="21"/>
<text x="-3.81" y="5.08" size="1.27" layer="25">&gt;name</text>
<wire x1="4.9657" y1="-3.81" x2="-4.9657" y2="-3.81" width="0.127" layer="21"/>
<text x="-3.81" y="1.27" size="1.27" layer="27">&gt;value</text>
</package>
<package name="MOLEX-3">
<pad name="P1" x="-2.54" y="0" drill="1.1"/>
<pad name="P2" x="0" y="0" drill="1.1"/>
<pad name="P3" x="2.54" y="0" drill="1.1"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-10.16" x2="-1.27" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-10.16" x2="1.27" y2="-10.16" width="0.127" layer="21"/>
<wire x1="1.27" y1="-10.16" x2="5.08" y2="-10.16" width="0.127" layer="21"/>
<wire x1="5.08" y1="-10.16" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-10.16" x2="-1.27" y2="-8.89" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-8.89" x2="1.27" y2="-8.89" width="0.127" layer="21"/>
<wire x1="1.27" y1="-8.89" x2="1.27" y2="-10.16" width="0.127" layer="21"/>
<text x="-3.81" y="-5.08" size="1.27" layer="25">&gt;name</text>
</package>
<package name="MOLEX-4">
<pad name="P1" x="-2.54" y="0" drill="1.1"/>
<pad name="P2" x="0" y="0" drill="1.1"/>
<pad name="P3" x="2.54" y="0" drill="1.1"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-10.16" x2="0" y2="-10.16" width="0.127" layer="21"/>
<wire x1="0" y1="-10.16" x2="2.54" y2="-10.16" width="0.127" layer="21"/>
<wire x1="2.54" y1="-10.16" x2="7.62" y2="-10.16" width="0.127" layer="21"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-10.16" x2="0" y2="-8.89" width="0.127" layer="21"/>
<wire x1="0" y1="-8.89" x2="2.54" y2="-8.89" width="0.127" layer="21"/>
<wire x1="2.54" y1="-8.89" x2="2.54" y2="-10.16" width="0.127" layer="21"/>
<pad name="P4" x="5.08" y="0" drill="1.1"/>
<text x="-2.54" y="-5.08" size="1.27" layer="25">&gt;name</text>
</package>
</packages>
<symbols>
<symbol name="LAYOUT_LEMO_12PIN">
<pin name="TEMPERATURE+" x="25.4" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="TEMPERATURE-" x="27.94" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="TEMPERATURE_DATA" x="30.48" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="HUMIDITY+" x="2.54" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="HUMIDITY-" x="5.08" y="20.32" visible="pin" length="short" rot="R270"/>
<text x="-24.13" y="20.32" size="1.27" layer="94">SENSORS</text>
<text x="-24.13" y="22.86" size="1.27" layer="94">EXTERIOR</text>
<pin name="HUMIDITY_DATA" x="7.62" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="WINDSPEED1" x="-5.08" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="WINDSPEED2" x="-2.54" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="WIND_DIRECTION_1" x="12.7" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="WIND_DIRECTION_2" x="15.24" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="WIND_DIRECTION_3" x="17.78" y="20.32" visible="pin" length="short" rot="R270"/>
<pin name="WIND_DIRECTION_4" x="20.32" y="20.32" visible="pin" length="short" rot="R270"/>
<circle x="-24.13" y="6.35" radius="1.27" width="0.254" layer="94"/>
<circle x="-21.59" y="6.35" radius="1.27" width="0.254" layer="94"/>
<circle x="-22.86" y="3.81" radius="1.27" width="0.254" layer="94"/>
<circle x="-24.13" y="10.16" radius="1.27" width="0.254" layer="94"/>
<circle x="-21.59" y="-1.27" radius="1.27" width="0.254" layer="94"/>
<circle x="-27.94" y="6.35" radius="1.27" width="0.254" layer="94"/>
<circle x="-17.78" y="6.35" radius="1.27" width="0.254" layer="94"/>
<circle x="-19.05" y="8.89" radius="1.27" width="0.254" layer="94"/>
<circle x="-26.67" y="8.89" radius="1.27" width="0.254" layer="94"/>
<circle x="-26.67" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="-19.05" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="-24.13" y="-1.27" radius="1.27" width="0.254" layer="94"/>
<wire x1="-21.59" y1="2.54" x2="-13.97" y2="2.54" width="0.254" layer="92"/>
<wire x1="-17.78" y1="6.35" x2="-11.43" y2="6.35" width="0.254" layer="92"/>
<wire x1="-20.32" y1="3.81" x2="-12.7" y2="3.81" width="0.254" layer="92"/>
<wire x1="-20.32" y1="-2.54" x2="-17.78" y2="-2.54" width="0.254" layer="92"/>
<wire x1="-17.78" y1="-1.27" x2="-16.51" y2="-1.27" width="0.254" layer="92"/>
<wire x1="-24.13" y1="-1.27" x2="-22.86" y2="-3.81" width="0.254" layer="92"/>
<wire x1="-22.86" y1="-3.81" x2="-19.05" y2="-3.81" width="0.254" layer="92"/>
<wire x1="-26.67" y1="0" x2="-24.13" y2="-5.08" width="0.254" layer="92"/>
<wire x1="-24.13" y1="-5.08" x2="-20.32" y2="-5.08" width="0.254" layer="92"/>
<wire x1="-19.05" y1="8.89" x2="-17.78" y2="8.89" width="0.254" layer="92"/>
<wire x1="-17.78" y1="8.89" x2="-16.51" y2="7.62" width="0.254" layer="92"/>
<wire x1="-21.59" y1="2.54" x2="-22.86" y2="3.81" width="0.254" layer="92"/>
<wire x1="-20.32" y1="3.81" x2="-20.32" y2="5.08" width="0.254" layer="92"/>
<wire x1="-20.32" y1="5.08" x2="-21.59" y2="6.35" width="0.254" layer="92"/>
<wire x1="-24.13" y1="6.35" x2="-25.4" y2="5.08" width="0.254" layer="92"/>
<wire x1="-25.4" y1="5.08" x2="-25.4" y2="2.54" width="0.254" layer="92"/>
<wire x1="-25.4" y1="2.54" x2="-24.13" y2="1.27" width="0.254" layer="92"/>
<wire x1="-24.13" y1="1.27" x2="-15.24" y2="1.27" width="0.254" layer="92"/>
<wire x1="-21.59" y1="-1.27" x2="-20.32" y2="-2.54" width="0.254" layer="92"/>
<wire x1="-19.05" y1="0" x2="-17.78" y2="-1.27" width="0.254" layer="92"/>
<wire x1="-19.05" y1="12.7" x2="-25.4" y2="12.7" width="0.254" layer="94" curve="-315"/>
<wire x1="-25.4" y1="12.7" x2="-25.4" y2="15.24" width="0.254" layer="94"/>
<wire x1="-25.4" y1="15.24" x2="-19.05" y2="15.24" width="0.254" layer="94"/>
<wire x1="-19.05" y1="15.24" x2="-19.05" y2="12.7" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-5.08" x2="-19.05" y2="-6.35" width="0.254" layer="92"/>
<wire x1="-19.05" y1="-6.35" x2="-19.05" y2="-19.05" width="0.254" layer="92"/>
<wire x1="-19.05" y1="-19.05" x2="-17.78" y2="-20.32" width="0.254" layer="92"/>
<wire x1="-17.78" y1="-20.32" x2="20.32" y2="-20.32" width="0.254" layer="92"/>
<wire x1="20.32" y1="-20.32" x2="20.32" y2="-7.62" width="0.254" layer="92"/>
<wire x1="17.78" y1="-7.62" x2="17.78" y2="-19.05" width="0.254" layer="92"/>
<wire x1="17.78" y1="-19.05" x2="-16.51" y2="-19.05" width="0.254" layer="92"/>
<wire x1="-16.51" y1="-19.05" x2="-17.78" y2="-17.78" width="0.254" layer="92"/>
<wire x1="-17.78" y1="-17.78" x2="-17.78" y2="-5.08" width="0.254" layer="92"/>
<wire x1="-17.78" y1="-5.08" x2="-19.05" y2="-3.81" width="0.254" layer="92"/>
<wire x1="-17.78" y1="-2.54" x2="-16.51" y2="-3.81" width="0.254" layer="92"/>
<wire x1="-16.51" y1="-3.81" x2="-16.51" y2="-16.51" width="0.254" layer="92"/>
<wire x1="-16.51" y1="-16.51" x2="-15.24" y2="-17.78" width="0.254" layer="92"/>
<wire x1="-15.24" y1="-17.78" x2="15.24" y2="-17.78" width="0.254" layer="92"/>
<wire x1="15.24" y1="-17.78" x2="15.24" y2="-7.62" width="0.254" layer="92"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="-16.51" width="0.254" layer="92"/>
<wire x1="12.7" y1="-16.51" x2="-13.97" y2="-16.51" width="0.254" layer="92"/>
<wire x1="-13.97" y1="-16.51" x2="-15.24" y2="-15.24" width="0.254" layer="92"/>
<wire x1="-15.24" y1="-15.24" x2="-15.24" y2="-2.54" width="0.254" layer="92"/>
<wire x1="-15.24" y1="-2.54" x2="-16.51" y2="-1.27" width="0.254" layer="92"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="-15.24" width="0.254" layer="92"/>
<wire x1="7.62" y1="-15.24" x2="-12.7" y2="-15.24" width="0.254" layer="92"/>
<wire x1="-12.7" y1="-15.24" x2="-13.97" y2="-13.97" width="0.254" layer="92"/>
<wire x1="-13.97" y1="-13.97" x2="-13.97" y2="0" width="0.254" layer="92"/>
<wire x1="-13.97" y1="0" x2="-15.24" y2="1.27" width="0.254" layer="92"/>
<wire x1="-13.97" y1="2.54" x2="-12.7" y2="1.27" width="0.254" layer="92"/>
<wire x1="-12.7" y1="1.27" x2="-12.7" y2="-12.7" width="0.254" layer="92"/>
<wire x1="-12.7" y1="-12.7" x2="-11.43" y2="-13.97" width="0.254" layer="92"/>
<wire x1="-11.43" y1="-13.97" x2="5.08" y2="-13.97" width="0.254" layer="92"/>
<wire x1="5.08" y1="-13.97" x2="5.08" y2="1.27" width="0.254" layer="92"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-12.7" width="0.254" layer="92"/>
<wire x1="2.54" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="92"/>
<wire x1="-10.16" y1="-12.7" x2="-11.43" y2="-11.43" width="0.254" layer="92"/>
<wire x1="-11.43" y1="-11.43" x2="-11.43" y2="2.54" width="0.254" layer="92"/>
<wire x1="-11.43" y1="2.54" x2="-12.7" y2="3.81" width="0.254" layer="92"/>
<wire x1="-11.43" y1="6.35" x2="-10.16" y2="5.08" width="0.254" layer="92"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-10.16" width="0.254" layer="92"/>
<wire x1="-10.16" y1="-10.16" x2="-8.89" y2="-11.43" width="0.254" layer="92"/>
<wire x1="-8.89" y1="-11.43" x2="-2.54" y2="-11.43" width="0.254" layer="92"/>
<wire x1="-2.54" y1="-11.43" x2="-2.54" y2="1.27" width="0.254" layer="92"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-10.16" width="0.254" layer="92"/>
<wire x1="-5.08" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="92"/>
<wire x1="-7.62" y1="-10.16" x2="-8.89" y2="-8.89" width="0.254" layer="92"/>
<wire x1="-8.89" y1="-8.89" x2="-8.89" y2="6.35" width="0.254" layer="92"/>
<wire x1="-8.89" y1="6.35" x2="-10.16" y2="7.62" width="0.254" layer="92"/>
<wire x1="-10.16" y1="7.62" x2="-16.51" y2="7.62" width="0.254" layer="92"/>
<wire x1="25.4" y1="-3.81" x2="25.4" y2="-21.59" width="0.254" layer="92"/>
<wire x1="25.4" y1="-21.59" x2="-19.05" y2="-21.59" width="0.254" layer="92"/>
<wire x1="-19.05" y1="-21.59" x2="-20.32" y2="-20.32" width="0.254" layer="92"/>
<wire x1="-20.32" y1="-20.32" x2="-20.32" y2="-7.62" width="0.254" layer="92"/>
<wire x1="-20.32" y1="-7.62" x2="-21.59" y2="-6.35" width="0.254" layer="92"/>
<wire x1="-21.59" y1="-6.35" x2="-27.94" y2="-6.35" width="0.254" layer="92"/>
<wire x1="-27.94" y1="-6.35" x2="-29.21" y2="-5.08" width="0.254" layer="92"/>
<wire x1="-29.21" y1="-5.08" x2="-29.21" y2="5.08" width="0.254" layer="92"/>
<wire x1="-29.21" y1="5.08" x2="-27.94" y2="6.35" width="0.254" layer="92"/>
<wire x1="-26.67" y1="8.89" x2="-29.21" y2="8.89" width="0.254" layer="92"/>
<wire x1="-29.21" y1="8.89" x2="-30.48" y2="7.62" width="0.254" layer="92"/>
<wire x1="-30.48" y1="7.62" x2="-30.48" y2="-6.35" width="0.254" layer="92"/>
<wire x1="-30.48" y1="-6.35" x2="-29.21" y2="-7.62" width="0.254" layer="92"/>
<wire x1="-29.21" y1="-7.62" x2="-22.86" y2="-7.62" width="0.254" layer="92"/>
<wire x1="-22.86" y1="-7.62" x2="-21.59" y2="-8.89" width="0.254" layer="92"/>
<wire x1="-21.59" y1="-8.89" x2="-21.59" y2="-21.59" width="0.254" layer="92"/>
<wire x1="-21.59" y1="-21.59" x2="-20.32" y2="-22.86" width="0.254" layer="92"/>
<wire x1="-20.32" y1="-22.86" x2="27.94" y2="-22.86" width="0.254" layer="92"/>
<wire x1="27.94" y1="-22.86" x2="27.94" y2="-3.81" width="0.254" layer="92"/>
<wire x1="30.48" y1="-8.89" x2="30.48" y2="-24.13" width="0.254" layer="92"/>
<wire x1="30.48" y1="-24.13" x2="-21.59" y2="-24.13" width="0.254" layer="92"/>
<wire x1="-21.59" y1="-24.13" x2="-22.86" y2="-22.86" width="0.254" layer="92"/>
<wire x1="-22.86" y1="-22.86" x2="-22.86" y2="-10.16" width="0.254" layer="92"/>
<wire x1="-22.86" y1="-10.16" x2="-24.13" y2="-8.89" width="0.254" layer="92"/>
<wire x1="-24.13" y1="-8.89" x2="-30.48" y2="-8.89" width="0.254" layer="92"/>
<wire x1="-30.48" y1="-8.89" x2="-31.75" y2="-7.62" width="0.254" layer="92"/>
<wire x1="-31.75" y1="-7.62" x2="-31.75" y2="8.89" width="0.254" layer="92"/>
<wire x1="-31.75" y1="8.89" x2="-30.48" y2="10.16" width="0.254" layer="92"/>
<wire x1="-30.48" y1="10.16" x2="-24.13" y2="10.16" width="0.254" layer="92"/>
</symbol>
<symbol name="SCREW-TERM">
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="2.54" width="0.4064" layer="94"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<pin name="1" x="5.08" y="-2.54" visible="off" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="off" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="3.302" size="1.778" layer="95">&gt;name</text>
<text x="3.81" y="-4.572" size="1.27" layer="95">1</text>
<text x="3.81" y="0.762" size="1.27" layer="95">2</text>
<text x="-2.54" y="-7.62" size="1.778" layer="96">&gt;value</text>
</symbol>
<symbol name="MOLEX-3">
<pin name="DATA" x="-2.54" y="5.08" length="middle" rot="R270"/>
<pin name="+5V" x="0" y="5.08" length="middle" rot="R270"/>
<pin name="GND" x="2.54" y="5.08" length="middle" rot="R270"/>
</symbol>
<symbol name="MOLEX-4">
<pin name="P$1" x="-5.08" y="5.08" length="middle" rot="R270"/>
<pin name="P$2" x="-2.54" y="5.08" length="middle" rot="R270"/>
<pin name="P$3" x="0" y="5.08" length="middle" rot="R270"/>
<pin name="P$4" x="2.54" y="5.08" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LAYOUT-LEMO-12PIN">
<gates>
<gate name="G$1" symbol="LAYOUT_LEMO_12PIN" x="-2.54" y="2.54"/>
</gates>
<devices>
<device name="" package="LEMO-12">
<connects>
<connect gate="G$1" pin="HUMIDITY+" pad="P12"/>
<connect gate="G$1" pin="HUMIDITY-" pad="P9"/>
<connect gate="G$1" pin="HUMIDITY_DATA" pad="P2"/>
<connect gate="G$1" pin="TEMPERATURE+" pad="P7"/>
<connect gate="G$1" pin="TEMPERATURE-" pad="P8"/>
<connect gate="G$1" pin="TEMPERATURE_DATA" pad="P1"/>
<connect gate="G$1" pin="WINDSPEED1" pad="P6"/>
<connect gate="G$1" pin="WINDSPEED2" pad="P5"/>
<connect gate="G$1" pin="WIND_DIRECTION_1" pad="P11"/>
<connect gate="G$1" pin="WIND_DIRECTION_2" pad="P10"/>
<connect gate="G$1" pin="WIND_DIRECTION_3" pad="P3"/>
<connect gate="G$1" pin="WIND_DIRECTION_4" pad="P4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SCREW-TERMINAL-5MM">
<gates>
<gate name="G$1" symbol="SCREW-TERM" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SCREW-TERM-5MM">
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
<deviceset name="MOLEX-3">
<gates>
<gate name="G$1" symbol="MOLEX-3" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="MOLEX-3">
<connects>
<connect gate="G$1" pin="+5V" pad="P2"/>
<connect gate="G$1" pin="DATA" pad="P1"/>
<connect gate="G$1" pin="GND" pad="P3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOLEX-4">
<gates>
<gate name="G$1" symbol="MOLEX-4" x="2.54" y="-2.54"/>
</gates>
<devices>
<device name="" package="MOLEX-4">
<connects>
<connect gate="G$1" pin="P$1" pad="P1"/>
<connect gate="G$1" pin="P$2" pad="P2"/>
<connect gate="G$1" pin="P$3" pad="P3"/>
<connect gate="G$1" pin="P$4" pad="P4"/>
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
<part name="U$1" library="launch-tower" deviceset="LAYOUT-LEMO-12PIN" device=""/>
<part name="U$2" library="launch-tower" deviceset="SCREW-TERMINAL-5MM" device="" value="WINDSPEED"/>
<part name="HUMIDITY" library="launch-tower" deviceset="MOLEX-3" device=""/>
<part name="TEMP" library="launch-tower" deviceset="MOLEX-3" device=""/>
<part name="WINDDIRECTION" library="launch-tower" deviceset="MOLEX-4" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="43.18" y="48.26"/>
<instance part="U$2" gate="G$1" x="30.48" y="93.98" rot="R270"/>
<instance part="HUMIDITY" gate="G$1" x="48.26" y="93.98" rot="R180"/>
<instance part="TEMP" gate="G$1" x="71.12" y="93.98" rot="R180"/>
<instance part="WINDDIRECTION" gate="G$1" x="58.42" y="93.98" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="1"/>
<wire x1="27.94" y1="88.9" x2="27.94" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="WINDSPEED1"/>
<wire x1="27.94" y1="73.66" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
<wire x1="38.1" y1="73.66" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="2"/>
<wire x1="30.48" y1="88.9" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="WINDSPEED2"/>
<wire x1="30.48" y1="76.2" x2="40.64" y2="76.2" width="0.1524" layer="91"/>
<wire x1="40.64" y1="76.2" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="WIND_DIRECTION_2"/>
<pinref part="WINDDIRECTION" gate="G$1" pin="P$3"/>
<wire x1="58.42" y1="88.9" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="WIND_DIRECTION_4"/>
<pinref part="WINDDIRECTION" gate="G$1" pin="P$1"/>
<wire x1="63.5" y1="88.9" x2="63.5" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="WIND_DIRECTION_3"/>
<pinref part="WINDDIRECTION" gate="G$1" pin="P$2"/>
<wire x1="60.96" y1="88.9" x2="60.96" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="WIND_DIRECTION_1"/>
<pinref part="WINDDIRECTION" gate="G$1" pin="P$4"/>
<wire x1="55.88" y1="88.9" x2="55.88" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TEMPERATURE_DATA"/>
<pinref part="TEMP" gate="G$1" pin="DATA"/>
<wire x1="73.66" y1="68.58" x2="73.66" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TEMPERATURE-"/>
<wire x1="71.12" y1="68.58" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
<wire x1="71.12" y1="76.2" x2="66.04" y2="76.2" width="0.1524" layer="91"/>
<wire x1="66.04" y1="76.2" x2="66.04" y2="83.82" width="0.1524" layer="91"/>
<pinref part="TEMP" gate="G$1" pin="GND"/>
<wire x1="66.04" y1="83.82" x2="68.58" y2="83.82" width="0.1524" layer="91"/>
<wire x1="68.58" y1="83.82" x2="68.58" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TEMPERATURE+"/>
<wire x1="68.58" y1="68.58" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<pinref part="TEMP" gate="G$1" pin="+5V"/>
<wire x1="68.58" y1="81.28" x2="71.12" y2="81.28" width="0.1524" layer="91"/>
<wire x1="71.12" y1="81.28" x2="71.12" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="HUMIDITY_DATA"/>
<pinref part="HUMIDITY" gate="G$1" pin="DATA"/>
<wire x1="50.8" y1="68.58" x2="50.8" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="HUMIDITY+"/>
<wire x1="45.72" y1="68.58" x2="45.72" y2="81.28" width="0.1524" layer="91"/>
<pinref part="HUMIDITY" gate="G$1" pin="+5V"/>
<wire x1="45.72" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
<wire x1="48.26" y1="81.28" x2="48.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="HUMIDITY-"/>
<wire x1="48.26" y1="68.58" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<wire x1="48.26" y1="76.2" x2="43.18" y2="76.2" width="0.1524" layer="91"/>
<wire x1="43.18" y1="76.2" x2="43.18" y2="83.82" width="0.1524" layer="91"/>
<pinref part="HUMIDITY" gate="G$1" pin="GND"/>
<wire x1="43.18" y1="83.82" x2="45.72" y2="83.82" width="0.1524" layer="91"/>
<wire x1="45.72" y1="83.82" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
