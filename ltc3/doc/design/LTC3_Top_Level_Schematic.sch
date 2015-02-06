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
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
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
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="17.78" y1="60.96" x2="17.78" y2="43.18" width="0.1524" layer="94"/>
<wire x1="17.78" y1="43.18" x2="33.02" y2="43.18" width="0.1524" layer="94"/>
<wire x1="33.02" y1="43.18" x2="33.02" y2="60.96" width="0.1524" layer="94"/>
<wire x1="33.02" y1="60.96" x2="17.78" y2="60.96" width="0.1524" layer="94"/>
<wire x1="7.62" y1="60.96" x2="0" y2="60.96" width="0.1524" layer="94"/>
<wire x1="0" y1="60.96" x2="0" y2="55.88" width="0.1524" layer="94"/>
<wire x1="0" y1="55.88" x2="7.62" y2="55.88" width="0.1524" layer="94"/>
<wire x1="7.62" y1="55.88" x2="7.62" y2="60.96" width="0.1524" layer="94"/>
<wire x1="7.62" y1="53.34" x2="7.62" y2="48.26" width="0.1524" layer="94"/>
<wire x1="7.62" y1="48.26" x2="0" y2="48.26" width="0.1524" layer="94"/>
<wire x1="0" y1="48.26" x2="0" y2="53.34" width="0.1524" layer="94"/>
<wire x1="0" y1="53.34" x2="7.62" y2="53.34" width="0.1524" layer="94"/>
<wire x1="7.62" y1="45.72" x2="7.62" y2="40.64" width="0.1524" layer="94"/>
<wire x1="7.62" y1="40.64" x2="0" y2="40.64" width="0.1524" layer="94"/>
<wire x1="0" y1="40.64" x2="0" y2="45.72" width="0.1524" layer="94"/>
<wire x1="0" y1="45.72" x2="7.62" y2="45.72" width="0.1524" layer="94"/>
<text x="2.54" y="58.42" size="1.778" layer="95">R1</text>
<text x="2.54" y="50.8" size="1.778" layer="95">R2</text>
<text x="2.54" y="43.18" size="1.778" layer="95">R3</text>
<text x="2.54" y="40.64" size="1.778" layer="95">R3</text>
<text x="22.86" y="50.8" size="2.54" layer="95">BB</text>
<text x="22.86" y="43.18" size="1.778" layer="95">ETH</text>
<text x="22.86" y="58.42" size="1.778" layer="95">USB</text>
<wire x1="17.78" y1="71.12" x2="17.78" y2="76.2" width="0.1524" layer="94"/>
<wire x1="17.78" y1="76.2" x2="33.02" y2="76.2" width="0.1524" layer="94"/>
<wire x1="33.02" y1="76.2" x2="33.02" y2="71.12" width="0.1524" layer="94"/>
<wire x1="33.02" y1="71.12" x2="17.78" y2="71.12" width="0.1524" layer="94"/>
<text x="21.59" y="72.898" size="1.778" layer="95">802.11</text>
<wire x1="25.4" y1="88.9" x2="33.02" y2="96.52" width="0.1524" layer="94"/>
<wire x1="33.02" y1="96.52" x2="17.78" y2="96.52" width="0.1524" layer="94"/>
<wire x1="17.78" y1="96.52" x2="25.4" y2="88.9" width="0.1524" layer="94"/>
<text x="20.32" y="48.26" size="1.778" layer="95" rot="R90">GPIO</text>
<text x="33.02" y="48.26" size="1.778" layer="95" rot="R90">GPIO</text>
<wire x1="43.18" y1="60.96" x2="43.18" y2="55.88" width="0.1524" layer="94"/>
<wire x1="43.18" y1="55.88" x2="50.8" y2="55.88" width="0.1524" layer="94"/>
<wire x1="50.8" y1="55.88" x2="50.8" y2="60.96" width="0.1524" layer="94"/>
<wire x1="50.8" y1="60.96" x2="43.18" y2="60.96" width="0.1524" layer="94"/>
<text x="45.72" y="57.658" size="1.778" layer="95">OI</text>
<wire x1="45.72" y1="71.12" x2="45.72" y2="63.5" width="0.1524" layer="94"/>
<wire x1="45.72" y1="63.5" x2="60.96" y2="63.5" width="0.1524" layer="94"/>
<wire x1="60.96" y1="63.5" x2="60.96" y2="71.12" width="0.1524" layer="94"/>
<wire x1="60.96" y1="71.12" x2="45.72" y2="71.12" width="0.1524" layer="94"/>
<text x="53.34" y="68.58" size="2.54" layer="95" align="top-center">RRR</text>
<wire x1="55.88" y1="53.34" x2="55.88" y2="48.26" width="0.1524" layer="94"/>
<wire x1="55.88" y1="48.26" x2="63.5" y2="48.26" width="0.1524" layer="94"/>
<wire x1="63.5" y1="48.26" x2="63.5" y2="53.34" width="0.1524" layer="94"/>
<wire x1="63.5" y1="53.34" x2="55.88" y2="53.34" width="0.1524" layer="94"/>
<wire x1="55.88" y1="45.72" x2="55.88" y2="40.64" width="0.1524" layer="94"/>
<wire x1="55.88" y1="40.64" x2="63.5" y2="40.64" width="0.1524" layer="94"/>
<wire x1="63.5" y1="40.64" x2="63.5" y2="45.72" width="0.1524" layer="94"/>
<wire x1="63.5" y1="45.72" x2="55.88" y2="45.72" width="0.1524" layer="94"/>
<wire x1="73.66" y1="63.5" x2="78.74" y2="63.5" width="0.1524" layer="94"/>
<text x="73.66" y="58.42" size="1.778" layer="96">+19V</text>
<text x="73.66" y="50.8" size="1.778" layer="96">RR</text>
<text x="73.66" y="43.18" size="1.778" layer="96">!CON</text>
<text x="73.66" y="35.56" size="1.778" layer="96">ETH</text>
<wire x1="73.66" y1="63.5" x2="73.66" y2="22.86" width="0.1524" layer="94"/>
<wire x1="73.66" y1="22.86" x2="78.74" y2="22.86" width="0.1524" layer="94"/>
<wire x1="12.7" y1="20.32" x2="12.7" y2="27.94" width="0.1524" layer="94"/>
<wire x1="12.7" y1="27.94" x2="43.18" y2="27.94" width="0.1524" layer="94"/>
<wire x1="43.18" y1="27.94" x2="43.18" y2="20.32" width="0.1524" layer="94"/>
<wire x1="43.18" y1="20.32" x2="12.7" y2="20.32" width="0.1524" layer="94"/>
<text x="58.42" y="50.8" size="1.778" layer="95">?</text>
<text x="58.42" y="43.18" size="1.778" layer="95">?</text>
<text x="22.098" y="23.114" size="1.778" layer="95">E SWITCH</text>
</plain>
<instances>
<instance part="GND1" gate="1" x="30.48" y="38.1"/>
<instance part="P+1" gate="1" x="30.48" y="66.04"/>
<instance part="P+2" gate="1" x="68.58" y="63.5" smashed="yes"/>
<instance part="GND2" gate="1" x="68.58" y="22.86"/>
<instance part="P+3" gate="1" x="15.24" y="33.02"/>
<instance part="GND3" gate="1" x="15.24" y="15.24"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<wire x1="30.48" y1="43.18" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="73.66" y1="27.94" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<wire x1="68.58" y1="27.94" x2="68.58" y2="25.4" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="15.24" y1="20.32" x2="15.24" y2="17.78" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="17.78" y1="53.34" x2="12.7" y2="53.34" width="0.1524" layer="91"/>
<wire x1="12.7" y1="53.34" x2="12.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="12.7" y1="58.42" x2="7.62" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="17.78" y1="50.8" x2="7.62" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="17.78" y1="48.26" x2="12.7" y2="48.26" width="0.1524" layer="91"/>
<wire x1="12.7" y1="48.26" x2="12.7" y2="43.18" width="0.1524" layer="91"/>
<wire x1="12.7" y1="43.18" x2="7.62" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<wire x1="30.48" y1="60.96" x2="30.48" y2="63.5" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="15.24" y1="30.48" x2="15.24" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="25.4" y1="60.96" x2="25.4" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="25.4" y1="76.2" x2="25.4" y2="81.28" width="0.1524" layer="91"/>
<wire x1="27.94" y1="78.74" x2="25.4" y2="81.28" width="0.1524" layer="91"/>
<wire x1="25.4" y1="81.28" x2="22.86" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="22.86" y1="81.28" x2="25.4" y2="83.82" width="0.1524" layer="91"/>
<wire x1="25.4" y1="83.82" x2="27.94" y2="81.28" width="0.1524" layer="91"/>
<wire x1="25.4" y1="83.82" x2="25.4" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="33.02" y1="53.34" x2="38.1" y2="53.34" width="0.1524" layer="91"/>
<wire x1="38.1" y1="53.34" x2="38.1" y2="58.42" width="0.1524" layer="91"/>
<wire x1="38.1" y1="58.42" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="50.8" y1="58.42" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="53.34" y1="58.42" x2="53.34" y2="63.5" width="0.1524" layer="91"/>
<wire x1="53.34" y1="58.42" x2="53.34" y2="50.8" width="0.1524" layer="91"/>
<wire x1="53.34" y1="50.8" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="33.02" y1="48.26" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<wire x1="35.56" y1="48.26" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
<wire x1="35.56" y1="43.18" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="63.5" y1="50.8" x2="73.66" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="63.5" y1="43.18" x2="73.66" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="73.66" y1="58.42" x2="68.58" y2="58.42" width="0.1524" layer="91"/>
<wire x1="68.58" y1="58.42" x2="68.58" y2="60.96" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<wire x1="25.4" y1="43.18" x2="25.4" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="20.32" y1="20.32" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="17.78" y1="10.16" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="22.86" y1="10.16" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="17.78" y1="7.62" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
<wire x1="22.86" y1="7.62" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
<wire x1="20.32" y1="5.08" x2="20.32" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<wire x1="25.4" y1="20.32" x2="25.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="27.94" y1="15.24" x2="25.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="22.86" y1="15.24" x2="25.4" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="22.86" y1="12.7" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="27.94" y1="12.7" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<wire x1="30.48" y1="20.32" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
<wire x1="33.02" y1="10.16" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
<wire x1="30.48" y1="7.62" x2="27.94" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="33.02" y1="7.62" x2="30.48" y2="5.08" width="0.1524" layer="91"/>
<wire x1="30.48" y1="5.08" x2="27.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="30.48" y1="5.08" x2="30.48" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<wire x1="35.56" y1="20.32" x2="35.56" y2="12.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="15.24" x2="35.56" y2="12.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="12.7" x2="33.02" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="38.1" y1="12.7" x2="35.56" y2="10.16" width="0.1524" layer="91"/>
<wire x1="35.56" y1="10.16" x2="33.02" y2="12.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="10.16" x2="35.56" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<wire x1="73.66" y1="35.56" x2="50.8" y2="35.56" width="0.1524" layer="91"/>
<wire x1="50.8" y1="35.56" x2="50.8" y2="15.24" width="0.1524" layer="91"/>
<wire x1="50.8" y1="15.24" x2="40.64" y2="15.24" width="0.1524" layer="91"/>
<wire x1="40.64" y1="15.24" x2="40.64" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
