<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.1.0">
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
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
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
<library name="senior_proj_8-1_mux">
<packages>
<package name="D16">
<smd name="1" x="-2.3622" y="4.445" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="2" x="-2.3622" y="3.175" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="3" x="-2.3622" y="1.905" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="4" x="-2.3622" y="0.635" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="5" x="-2.3622" y="-0.635" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="6" x="-2.3622" y="-1.905" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="7" x="-2.3622" y="-3.175" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="8" x="-2.3622" y="-4.445" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="9" x="2.3622" y="-4.445" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="10" x="2.3622" y="-3.175" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="11" x="2.3622" y="-1.905" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="12" x="2.3622" y="-0.635" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="13" x="2.3622" y="0.635" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="14" x="2.3622" y="1.905" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="15" x="2.3622" y="3.175" dx="2.1844" dy="0.5588" layer="1"/>
<smd name="16" x="2.3622" y="4.445" dx="2.1844" dy="0.5588" layer="1"/>
<wire x1="-1.9812" y1="4.191" x2="-2.0066" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="4.699" x2="-3.0988" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="4.699" x2="-3.0988" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="4.191" x2="-1.9812" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.921" x2="-2.0066" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="3.429" x2="-3.0988" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="3.429" x2="-3.0988" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.921" x2="-1.9812" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="1.651" x2="-1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.381" x2="-1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.889" x2="-1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.159" x2="-1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.9812" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.921" x2="-3.0988" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.921" x2="-3.0988" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-3.429" x2="-1.9812" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-4.699" x2="-1.9812" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-4.191" x2="-3.0988" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-4.191" x2="-3.0988" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-4.699" x2="-1.9812" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-4.191" x2="2.0066" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-4.699" x2="3.0988" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-4.699" x2="3.0988" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-4.191" x2="1.9812" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.921" x2="1.9812" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-3.429" x2="3.0988" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-3.429" x2="3.0988" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.921" x2="1.9812" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-1.651" x2="1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.381" x2="1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.889" x2="1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.159" x2="1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="3.429" x2="1.9812" y2="2.921" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.921" x2="3.0988" y2="2.921" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.921" x2="3.0988" y2="3.429" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="3.429" x2="1.9812" y2="3.429" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="4.699" x2="1.9812" y2="4.191" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="4.191" x2="3.0988" y2="4.191" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="4.191" x2="3.0988" y2="4.699" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="4.699" x2="1.9812" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-5.0038" x2="1.9812" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-5.0038" x2="1.9812" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="5.0038" x2="0.3048" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="5.0038" x2="-1.9812" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="5.0038" x2="-1.9812" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="3.6576" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-2.1336" y1="-5.1308" x2="2.1336" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="5.1308" x2="-2.1336" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="3.9624" y="-2.9845"/>
<vertex x="3.9624" y="-3.3655"/>
<vertex x="3.7084" y="-3.3655"/>
<vertex x="3.7084" y="-2.9845"/>
</polygon>
<text x="-3.2004" y="4.8768" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="D16-M">
<smd name="1" x="-2.413" y="4.445" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="2" x="-2.413" y="3.175" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="3" x="-2.413" y="1.905" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="4" x="-2.413" y="0.635" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="5" x="-2.413" y="-0.635" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="6" x="-2.413" y="-1.905" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="7" x="-2.413" y="-3.175" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="8" x="-2.413" y="-4.445" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="9" x="2.413" y="-4.445" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="10" x="2.413" y="-3.175" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="11" x="2.413" y="-1.905" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="12" x="2.413" y="-0.635" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="13" x="2.413" y="0.635" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="14" x="2.413" y="1.905" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="15" x="2.413" y="3.175" dx="2.4892" dy="0.6096" layer="1"/>
<smd name="16" x="2.413" y="4.445" dx="2.4892" dy="0.6096" layer="1"/>
<wire x1="-1.9812" y1="4.191" x2="-2.0066" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="4.699" x2="-3.0988" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="4.699" x2="-3.0988" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="4.191" x2="-1.9812" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.921" x2="-2.0066" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="3.429" x2="-3.0988" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="3.429" x2="-3.0988" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.921" x2="-1.9812" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="1.651" x2="-1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.381" x2="-1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.889" x2="-1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.159" x2="-1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.9812" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.921" x2="-3.0988" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.921" x2="-3.0988" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-3.429" x2="-1.9812" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-4.699" x2="-1.9812" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-4.191" x2="-3.0988" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-4.191" x2="-3.0988" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-4.699" x2="-1.9812" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-4.191" x2="2.0066" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-4.699" x2="3.0988" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-4.699" x2="3.0988" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-4.191" x2="1.9812" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.921" x2="1.9812" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-3.429" x2="3.0988" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-3.429" x2="3.0988" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.921" x2="1.9812" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-1.651" x2="1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.381" x2="1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.889" x2="1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.159" x2="1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="3.429" x2="1.9812" y2="2.921" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.921" x2="3.0988" y2="2.921" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.921" x2="3.0988" y2="3.429" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="3.429" x2="1.9812" y2="3.429" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="4.699" x2="1.9812" y2="4.191" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="4.191" x2="3.0988" y2="4.191" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="4.191" x2="3.0988" y2="4.699" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="4.699" x2="1.9812" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-5.0038" x2="1.9812" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-5.0038" x2="1.9812" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="5.0038" x2="0.3048" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="5.0038" x2="-1.9812" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="5.0038" x2="-1.9812" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="3.6576" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-2.1336" y1="-5.1308" x2="2.1336" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="5.1308" x2="-2.1336" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="4.1656" y="-2.9845"/>
<vertex x="4.1656" y="-3.3655"/>
<vertex x="3.9116" y="-3.3655"/>
<vertex x="3.9116" y="-2.9845"/>
</polygon>
<text x="-3.2512" y="4.9276" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="D16-L">
<smd name="1" x="-2.3114" y="4.445" dx="1.8796" dy="0.508" layer="1"/>
<smd name="2" x="-2.3114" y="3.175" dx="1.8796" dy="0.508" layer="1"/>
<smd name="3" x="-2.3114" y="1.905" dx="1.8796" dy="0.508" layer="1"/>
<smd name="4" x="-2.3114" y="0.635" dx="1.8796" dy="0.508" layer="1"/>
<smd name="5" x="-2.3114" y="-0.635" dx="1.8796" dy="0.508" layer="1"/>
<smd name="6" x="-2.3114" y="-1.905" dx="1.8796" dy="0.508" layer="1"/>
<smd name="7" x="-2.3114" y="-3.175" dx="1.8796" dy="0.508" layer="1"/>
<smd name="8" x="-2.3114" y="-4.445" dx="1.8796" dy="0.508" layer="1"/>
<smd name="9" x="2.3114" y="-4.445" dx="1.8796" dy="0.508" layer="1"/>
<smd name="10" x="2.3114" y="-3.175" dx="1.8796" dy="0.508" layer="1"/>
<smd name="11" x="2.3114" y="-1.905" dx="1.8796" dy="0.508" layer="1"/>
<smd name="12" x="2.3114" y="-0.635" dx="1.8796" dy="0.508" layer="1"/>
<smd name="13" x="2.3114" y="0.635" dx="1.8796" dy="0.508" layer="1"/>
<smd name="14" x="2.3114" y="1.905" dx="1.8796" dy="0.508" layer="1"/>
<smd name="15" x="2.3114" y="3.175" dx="1.8796" dy="0.508" layer="1"/>
<smd name="16" x="2.3114" y="4.445" dx="1.8796" dy="0.508" layer="1"/>
<wire x1="-1.9812" y1="4.191" x2="-2.0066" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="4.699" x2="-3.0988" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="4.699" x2="-3.0988" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="4.191" x2="-1.9812" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.921" x2="-2.0066" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="3.429" x2="-3.0988" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="3.429" x2="-3.0988" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.921" x2="-1.9812" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="1.651" x2="-1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="2.159" x2="-3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.381" x2="-1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="0.889" x2="-3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.889" x2="-1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-0.381" x2="-3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.159" x2="-1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-1.651" x2="-3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.9812" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-2.921" x2="-3.0988" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-2.921" x2="-3.0988" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-3.429" x2="-1.9812" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-4.699" x2="-1.9812" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-4.191" x2="-3.0988" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-4.191" x2="-3.0988" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-3.0988" y1="-4.699" x2="-1.9812" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-4.191" x2="2.0066" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-4.699" x2="3.0988" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-4.699" x2="3.0988" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-4.191" x2="1.9812" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.921" x2="1.9812" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-3.429" x2="3.0988" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-3.429" x2="3.0988" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.921" x2="1.9812" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-1.651" x2="1.9812" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-2.159" x2="3.0988" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="1.9812" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.381" x2="1.9812" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.889" x2="3.0988" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="1.9812" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.889" x2="1.9812" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="0.381" x2="3.0988" y2="0.381" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="1.9812" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.159" x2="1.9812" y2="1.651" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="1.651" x2="3.0988" y2="1.651" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="1.9812" y2="2.159" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="3.429" x2="1.9812" y2="2.921" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="2.921" x2="3.0988" y2="2.921" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="2.921" x2="3.0988" y2="3.429" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="3.429" x2="1.9812" y2="3.429" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="4.699" x2="1.9812" y2="4.191" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="4.191" x2="3.0988" y2="4.191" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="4.191" x2="3.0988" y2="4.699" width="0.1524" layer="51"/>
<wire x1="3.0988" y1="4.699" x2="1.9812" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="-5.0038" x2="1.9812" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-5.0038" x2="1.9812" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="5.0038" x2="0.3048" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="5.0038" x2="-1.9812" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.9812" y1="5.0038" x2="-1.9812" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="51" curve="-180"/>
<text x="-2.1844" y="3.6576" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-2.1336" y1="-5.1308" x2="2.1336" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="5.1308" x2="-2.1336" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="3.7592" y="-2.9845"/>
<vertex x="3.7592" y="-3.3655"/>
<vertex x="3.5052" y="-3.3655"/>
<vertex x="3.5052" y="-2.9845"/>
</polygon>
<text x="-3.1496" y="4.826" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="CD74HC4051M96">
<pin name="CHANNELIN/OUTA4" x="2.54" y="0" length="middle"/>
<pin name="CHANNELIN/OUTA6" x="2.54" y="-2.54" length="middle"/>
<pin name="COMOUT/INA" x="2.54" y="-5.08" length="middle"/>
<pin name="CHANNELIN/OUTA7" x="2.54" y="-7.62" length="middle"/>
<pin name="CHANNELIN/OUTA5" x="2.54" y="-10.16" length="middle"/>
<pin name="!E" x="2.54" y="-12.7" length="middle" direction="in"/>
<pin name="VEE" x="2.54" y="-15.24" length="middle" direction="pwr"/>
<pin name="GND" x="2.54" y="-17.78" length="middle" direction="pwr"/>
<pin name="ADDRESSSELECTS2" x="104.14" y="-17.78" length="middle" direction="in" rot="R180"/>
<pin name="ADDRESSSELECTS1" x="104.14" y="-15.24" length="middle" direction="in" rot="R180"/>
<pin name="ADDRESSSELECTS0" x="104.14" y="-12.7" length="middle" direction="in" rot="R180"/>
<pin name="CHANNELIN/OUTA3" x="104.14" y="-10.16" length="middle" rot="R180"/>
<pin name="CHANNELIN/OUTA0" x="104.14" y="-7.62" length="middle" rot="R180"/>
<pin name="CHANNELIN/OUTA1" x="104.14" y="-5.08" length="middle" rot="R180"/>
<pin name="CHANNELIN/OUTA2" x="104.14" y="-2.54" length="middle" rot="R180"/>
<pin name="VCC" x="104.14" y="0" length="middle" direction="pwr" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="99.06" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="99.06" y1="-22.86" x2="99.06" y2="5.08" width="0.1524" layer="94"/>
<wire x1="99.06" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="48.6156" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="47.9806" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CD74HC4051M96" prefix="U">
<gates>
<gate name="A" symbol="CD74HC4051M96" x="0" y="0"/>
</gates>
<devices>
<device name="" package="D16">
<connects>
<connect gate="A" pin="!E" pad="6"/>
<connect gate="A" pin="ADDRESSSELECTS0" pad="11"/>
<connect gate="A" pin="ADDRESSSELECTS1" pad="10"/>
<connect gate="A" pin="ADDRESSSELECTS2" pad="9"/>
<connect gate="A" pin="CHANNELIN/OUTA0" pad="13"/>
<connect gate="A" pin="CHANNELIN/OUTA1" pad="14"/>
<connect gate="A" pin="CHANNELIN/OUTA2" pad="15"/>
<connect gate="A" pin="CHANNELIN/OUTA3" pad="12"/>
<connect gate="A" pin="CHANNELIN/OUTA4" pad="1"/>
<connect gate="A" pin="CHANNELIN/OUTA5" pad="5"/>
<connect gate="A" pin="CHANNELIN/OUTA6" pad="2"/>
<connect gate="A" pin="CHANNELIN/OUTA7" pad="4"/>
<connect gate="A" pin="COMOUT/INA" pad="3"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="VCC" pad="16"/>
<connect gate="A" pin="VEE" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="CD74HC4051M96" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
<device name="D16-M" package="D16-M">
<connects>
<connect gate="A" pin="!E" pad="6"/>
<connect gate="A" pin="ADDRESSSELECTS0" pad="11"/>
<connect gate="A" pin="ADDRESSSELECTS1" pad="10"/>
<connect gate="A" pin="ADDRESSSELECTS2" pad="9"/>
<connect gate="A" pin="CHANNELIN/OUTA0" pad="13"/>
<connect gate="A" pin="CHANNELIN/OUTA1" pad="14"/>
<connect gate="A" pin="CHANNELIN/OUTA2" pad="15"/>
<connect gate="A" pin="CHANNELIN/OUTA3" pad="12"/>
<connect gate="A" pin="CHANNELIN/OUTA4" pad="1"/>
<connect gate="A" pin="CHANNELIN/OUTA5" pad="5"/>
<connect gate="A" pin="CHANNELIN/OUTA6" pad="2"/>
<connect gate="A" pin="CHANNELIN/OUTA7" pad="4"/>
<connect gate="A" pin="COMOUT/INA" pad="3"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="VCC" pad="16"/>
<connect gate="A" pin="VEE" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="CD74HC4051M96" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
<device name="D16-L" package="D16-L">
<connects>
<connect gate="A" pin="!E" pad="6"/>
<connect gate="A" pin="ADDRESSSELECTS0" pad="11"/>
<connect gate="A" pin="ADDRESSSELECTS1" pad="10"/>
<connect gate="A" pin="ADDRESSSELECTS2" pad="9"/>
<connect gate="A" pin="CHANNELIN/OUTA0" pad="13"/>
<connect gate="A" pin="CHANNELIN/OUTA1" pad="14"/>
<connect gate="A" pin="CHANNELIN/OUTA2" pad="15"/>
<connect gate="A" pin="CHANNELIN/OUTA3" pad="12"/>
<connect gate="A" pin="CHANNELIN/OUTA4" pad="1"/>
<connect gate="A" pin="CHANNELIN/OUTA5" pad="5"/>
<connect gate="A" pin="CHANNELIN/OUTA6" pad="2"/>
<connect gate="A" pin="CHANNELIN/OUTA7" pad="4"/>
<connect gate="A" pin="COMOUT/INA" pad="3"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="VCC" pad="16"/>
<connect gate="A" pin="VEE" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="CD74HC4051M96" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="senior_project_3-1_mux">
<packages>
<package name="DCU8">
<smd name="1" x="-1.3716" y="0.75" dx="1.1684" dy="0.254" layer="1"/>
<smd name="2" x="-1.3716" y="0.25" dx="1.1684" dy="0.254" layer="1"/>
<smd name="3" x="-1.3716" y="-0.25" dx="1.1684" dy="0.254" layer="1"/>
<smd name="4" x="-1.3716" y="-0.75" dx="1.1684" dy="0.254" layer="1"/>
<smd name="5" x="1.3716" y="-0.75" dx="1.1684" dy="0.254" layer="1"/>
<smd name="6" x="1.3716" y="-0.25" dx="1.1684" dy="0.254" layer="1"/>
<smd name="7" x="1.3716" y="0.25" dx="1.1684" dy="0.254" layer="1"/>
<smd name="8" x="1.3716" y="0.75" dx="1.1684" dy="0.254" layer="1"/>
<wire x1="-1.1938" y1="0.635" x2="-1.1938" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.889" x2="-1.6002" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.889" x2="-1.6002" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.635" x2="-1.1938" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.127" x2="-1.1938" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.381" x2="-1.6002" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.381" x2="-1.6002" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.127" x2="-1.1938" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.381" x2="-1.1938" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.127" x2="-1.6002" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.127" x2="-1.6002" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.381" x2="-1.1938" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.889" x2="-1.1938" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.635" x2="-1.6002" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.635" x2="-1.6002" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.889" x2="-1.1938" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.635" x2="1.1938" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.889" x2="1.6002" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.889" x2="1.6002" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.635" x2="1.1938" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.127" x2="1.1938" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.381" x2="1.6002" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.381" x2="1.6002" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.127" x2="1.1938" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.381" x2="1.1938" y2="0.127" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.127" x2="1.6002" y2="0.127" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.127" x2="1.6002" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.381" x2="1.1938" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.889" x2="1.1938" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.635" x2="1.6002" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.635" x2="1.6002" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.889" x2="1.1938" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-1.0668" x2="1.1938" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-1.0668" x2="1.1938" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="1.0668" x2="0.3048" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.0668" x2="-1.1938" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="1.0668" x2="-1.1938" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.0668" x2="-0.3048" y2="1.0414" width="0.1524" layer="51" curve="-180"/>
<text x="-1.397" y="-0.3048" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.6604" y1="-1.1684" x2="0.6604" y2="-1.1684" width="0.1524" layer="21"/>
<wire x1="0.6604" y1="1.1684" x2="-0.6604" y2="1.1684" width="0.1524" layer="21"/>
<text x="-2.2098" y="0.889" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="DCU8-M">
<smd name="1" x="-1.4224" y="0.75" dx="1.4732" dy="0.254" layer="1"/>
<smd name="2" x="-1.4224" y="0.25" dx="1.4732" dy="0.254" layer="1"/>
<smd name="3" x="-1.4224" y="-0.25" dx="1.4732" dy="0.254" layer="1"/>
<smd name="4" x="-1.4224" y="-0.75" dx="1.4732" dy="0.254" layer="1"/>
<smd name="5" x="1.4224" y="-0.75" dx="1.4732" dy="0.254" layer="1"/>
<smd name="6" x="1.4224" y="-0.25" dx="1.4732" dy="0.254" layer="1"/>
<smd name="7" x="1.4224" y="0.25" dx="1.4732" dy="0.254" layer="1"/>
<smd name="8" x="1.4224" y="0.75" dx="1.4732" dy="0.254" layer="1"/>
<wire x1="-1.1938" y1="0.635" x2="-1.1938" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.889" x2="-1.6002" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.889" x2="-1.6002" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.635" x2="-1.1938" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.127" x2="-1.1938" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.381" x2="-1.6002" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.381" x2="-1.6002" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.127" x2="-1.1938" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.381" x2="-1.1938" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.127" x2="-1.6002" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.127" x2="-1.6002" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.381" x2="-1.1938" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.889" x2="-1.1938" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.635" x2="-1.6002" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.635" x2="-1.6002" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.889" x2="-1.1938" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.635" x2="1.1938" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.889" x2="1.6002" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.889" x2="1.6002" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.635" x2="1.1938" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.127" x2="1.1938" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.381" x2="1.6002" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.381" x2="1.6002" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.127" x2="1.1938" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.381" x2="1.1938" y2="0.127" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.127" x2="1.6002" y2="0.127" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.127" x2="1.6002" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.381" x2="1.1938" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.889" x2="1.1938" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.635" x2="1.6002" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.635" x2="1.6002" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.889" x2="1.1938" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-1.0668" x2="1.1938" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-1.0668" x2="1.1938" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="1.0668" x2="0.3048" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.0668" x2="-1.1938" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="1.0668" x2="-1.1938" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.0668" x2="-0.3048" y2="1.0414" width="0.1524" layer="51" curve="-180"/>
<text x="-1.397" y="-0.3048" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.5588" y1="-1.1684" x2="0.5588" y2="-1.1684" width="0.1524" layer="21"/>
<wire x1="0.5588" y1="1.1684" x2="-0.5588" y2="1.1684" width="0.1524" layer="21"/>
<text x="-2.2606" y="0.889" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="DCU8-L">
<smd name="1" x="-1.3208" y="0.75" dx="0.8636" dy="0.254" layer="1"/>
<smd name="2" x="-1.3208" y="0.25" dx="0.8636" dy="0.254" layer="1"/>
<smd name="3" x="-1.3208" y="-0.25" dx="0.8636" dy="0.254" layer="1"/>
<smd name="4" x="-1.3208" y="-0.75" dx="0.8636" dy="0.254" layer="1"/>
<smd name="5" x="1.3208" y="-0.75" dx="0.8636" dy="0.254" layer="1"/>
<smd name="6" x="1.3208" y="-0.25" dx="0.8636" dy="0.254" layer="1"/>
<smd name="7" x="1.3208" y="0.25" dx="0.8636" dy="0.254" layer="1"/>
<smd name="8" x="1.3208" y="0.75" dx="0.8636" dy="0.254" layer="1"/>
<wire x1="-1.1938" y1="0.635" x2="-1.1938" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.889" x2="-1.6002" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.889" x2="-1.6002" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.635" x2="-1.1938" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.127" x2="-1.1938" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.381" x2="-1.6002" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.381" x2="-1.6002" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="0.127" x2="-1.1938" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.381" x2="-1.1938" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.127" x2="-1.6002" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.127" x2="-1.6002" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.381" x2="-1.1938" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.889" x2="-1.1938" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.635" x2="-1.6002" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.635" x2="-1.6002" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="-0.889" x2="-1.1938" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.635" x2="1.1938" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.889" x2="1.6002" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.889" x2="1.6002" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.635" x2="1.1938" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.127" x2="1.1938" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.381" x2="1.6002" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.381" x2="1.6002" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-0.127" x2="1.1938" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.381" x2="1.1938" y2="0.127" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.127" x2="1.6002" y2="0.127" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.127" x2="1.6002" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.381" x2="1.1938" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.889" x2="1.1938" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.635" x2="1.6002" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.635" x2="1.6002" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="0.889" x2="1.1938" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-1.0668" x2="1.1938" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-1.0668" x2="1.1938" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="1.0668" x2="0.3048" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.0668" x2="-1.1938" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="1.0668" x2="-1.1938" y2="-1.0668" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.0668" x2="-0.3048" y2="1.0414" width="0.1524" layer="51" curve="-180"/>
<text x="-1.397" y="-0.3048" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.762" y1="-1.1684" x2="0.762" y2="-1.1684" width="0.1524" layer="21"/>
<wire x1="0.762" y1="1.1684" x2="-0.762" y2="1.1684" width="0.1524" layer="21"/>
<text x="-2.159" y="0.889" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="TS5A3359_DCU_8">
<pin name="NO0" x="2.54" y="0" length="middle" direction="out"/>
<pin name="NO1" x="2.54" y="-2.54" length="middle" direction="out"/>
<pin name="NO2" x="2.54" y="-5.08" length="middle" direction="out"/>
<pin name="GND" x="2.54" y="-7.62" length="middle" direction="pwr"/>
<pin name="IN2" x="53.34" y="-7.62" length="middle" direction="in" rot="R180"/>
<pin name="IN1" x="53.34" y="-5.08" length="middle" direction="in" rot="R180"/>
<pin name="COM" x="53.34" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="V+" x="53.34" y="0" length="middle" direction="pwr" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="48.26" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="48.26" y1="-12.7" x2="48.26" y2="5.08" width="0.1524" layer="94"/>
<wire x1="48.26" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="23.2156" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="22.5806" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TS5A3359DCUR" prefix="U">
<gates>
<gate name="A" symbol="TS5A3359_DCU_8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DCU8">
<connects>
<connect gate="A" pin="COM" pad="7"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="IN1" pad="6"/>
<connect gate="A" pin="IN2" pad="5"/>
<connect gate="A" pin="NO0" pad="1"/>
<connect gate="A" pin="NO1" pad="2"/>
<connect gate="A" pin="NO2" pad="3"/>
<connect gate="A" pin="V+" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="TS5A3359DCUR" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
<device name="DCU8-M" package="DCU8-M">
<connects>
<connect gate="A" pin="COM" pad="7"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="IN1" pad="6"/>
<connect gate="A" pin="IN2" pad="5"/>
<connect gate="A" pin="NO0" pad="1"/>
<connect gate="A" pin="NO1" pad="2"/>
<connect gate="A" pin="NO2" pad="3"/>
<connect gate="A" pin="V+" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="TS5A3359DCUR" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
<device name="DCU8-L" package="DCU8-L">
<connects>
<connect gate="A" pin="COM" pad="7"/>
<connect gate="A" pin="GND" pad="4"/>
<connect gate="A" pin="IN1" pad="6"/>
<connect gate="A" pin="IN2" pad="5"/>
<connect gate="A" pin="NO0" pad="1"/>
<connect gate="A" pin="NO1" pad="2"/>
<connect gate="A" pin="NO2" pad="3"/>
<connect gate="A" pin="V+" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="TS5A3359DCUR" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2081">
<description>.100" (2.54mm) Center Header - 8 Pin</description>
<wire x1="-10.16" y1="3.175" x2="10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="3.175" x2="10.16" y2="1.27" width="0.254" layer="21"/>
<wire x1="10.16" y1="1.27" x2="10.16" y2="-3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="-10.16" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-3.175" x2="-10.16" y2="1.27" width="0.254" layer="21"/>
<wire x1="-10.16" y1="1.27" x2="-10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="-10.16" y1="1.27" x2="10.16" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1" shape="long" rot="R90"/>
<text x="-10.16" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2081" prefix="X">
<description>.100" (2.54mm) Center Header - 8 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2081">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2081" constant="no"/>
<attribute name="OC_FARNELL" value="1756826" constant="no"/>
<attribute name="OC_NEWARK" value="01C7592" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="senior_project_01uf_cap">
<packages>
<package name="CC0603N">
<smd name="1" x="-0.7239" y="0" dx="0.8636" dy="0.8128" layer="1"/>
<smd name="2" x="0.7239" y="0" dx="0.8636" dy="0.8128" layer="1"/>
<text x="-2.5654" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">+</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-0.3048" y1="-0.4064" x2="-0.3048" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="0.4064" x2="-0.8128" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="-0.4064" x2="-0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.2794" y1="0.4064" x2="0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="-0.4064" x2="0.8128" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-0.4064" x2="0.7874" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.7874" y1="0.4064" x2="0.2794" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="-0.4064" x2="0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-0.4064" x2="0.8128" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="0.4064" x2="-0.3048" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="0.4064" x2="-0.8128" y2="-0.4064" width="0.1524" layer="51"/>
<text x="-2.5654" y="-0.635" size="1.27" layer="51" ratio="6" rot="SR0">+</text>
</package>
<package name="CC0603N-M">
<smd name="1" x="-0.8255" y="0" dx="1.0668" dy="0.9144" layer="1"/>
<smd name="2" x="0.8255" y="0" dx="1.0668" dy="0.9144" layer="1"/>
<text x="-2.7686" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">+</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-0.3048" y1="-0.4064" x2="-0.3048" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="0.4064" x2="-0.8128" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="-0.4064" x2="-0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.2794" y1="0.4064" x2="0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="-0.4064" x2="0.8128" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-0.4064" x2="0.7874" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.7874" y1="0.4064" x2="0.2794" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="-0.4064" x2="0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-0.4064" x2="0.8128" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="0.4064" x2="-0.3048" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="0.4064" x2="-0.8128" y2="-0.4064" width="0.1524" layer="51"/>
<text x="-2.7686" y="-0.635" size="1.27" layer="51" ratio="6" rot="SR0">+</text>
</package>
<package name="CC0603N-L">
<smd name="1" x="-0.6223" y="0" dx="0.6604" dy="0.8128" layer="1"/>
<smd name="2" x="0.6223" y="0" dx="0.6604" dy="0.8128" layer="1"/>
<text x="-2.3622" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">+</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-0.3048" y1="-0.4064" x2="-0.3048" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="0.4064" x2="-0.8128" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="-0.4064" x2="-0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.2794" y1="0.4064" x2="0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="-0.4064" x2="0.8128" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-0.4064" x2="0.7874" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.7874" y1="0.4064" x2="0.2794" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="-0.4064" x2="0.3048" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-0.4064" x2="0.8128" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="0.4064" x2="-0.3048" y2="0.4064" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="0.4064" x2="-0.8128" y2="-0.4064" width="0.1524" layer="51"/>
<text x="-2.3622" y="-0.635" size="1.27" layer="51" ratio="6" rot="SR0">+</text>
</package>
</packages>
<symbols>
<symbol name="PCAPH">
<pin name="22" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="11" x="0" y="0" visible="off" length="short" direction="pas"/>
<wire x1="2.2098" y1="0.635" x2="2.2098" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="3.4798" y1="0" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="1.5748" y1="1.27" x2="2.8448" y2="1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="4.7498" y1="-1.905" x2="4.7498" y2="1.905" width="0.1524" layer="94" curve="-74"/>
<text x="-5.1562" y="-5.5372" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-4.0894" y="2.0828" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="C0603C104J4RACTU" prefix="C">
<gates>
<gate name="A" symbol="PCAPH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CC0603N">
<connects>
<connect gate="A" pin="11" pad="1"/>
<connect gate="A" pin="22" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="C0603C104J4RACTU" constant="no"/>
<attribute name="VENDOR" value="Kemet" constant="no"/>
</technology>
</technologies>
</device>
<device name="CC0603N-M" package="CC0603N-M">
<connects>
<connect gate="A" pin="11" pad="1"/>
<connect gate="A" pin="22" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="C0603C104J4RACTU" constant="no"/>
<attribute name="VENDOR" value="Kemet" constant="no"/>
</technology>
</technologies>
</device>
<device name="CC0603N-L" package="CC0603N-L">
<connects>
<connect gate="A" pin="11" pad="1"/>
<connect gate="A" pin="22" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="C0603C104J4RACTU" constant="no"/>
<attribute name="VENDOR" value="Kemet" constant="no"/>
</technology>
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
<library name="senior_project_hall-effect-sensor">
<packages>
<package name="DBZ3">
<smd name="1" x="-0.95" y="-1.016" dx="0.5588" dy="1.3208" layer="1"/>
<smd name="2" x="0.95" y="-1.016" dx="0.5588" dy="1.3208" layer="1"/>
<smd name="3" x="0" y="0.88265" dx="0.5588" dy="1.5875" layer="1"/>
<wire x1="-0.6858" y1="-0.6858" x2="-1.1938" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.7112" x2="-1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-1.3208" x2="-0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="-1.3208" x2="-0.6858" y2="-0.6858" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.6858" x2="0.6858" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.7112" x2="0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-1.3208" x2="1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-1.3208" x2="1.1938" y2="-0.6858" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.6858" x2="0.254" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.7112" x2="0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.3208" x2="-0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.3208" x2="-0.254" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.7112" x2="1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.7112" x2="1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.7112" x2="-1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.7112" x2="-1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.4572" x2="-1.397" y2="-0.4572" width="0" layer="51" curve="-180"/>
<wire x1="-1.397" y1="-0.4572" x2="-1.143" y2="-0.4318" width="0" layer="51" curve="-180"/>
<wire x1="-0.3302" y1="-0.8128" x2="0.3302" y2="-0.8128" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-0.8128" x2="1.651" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.8128" x2="0.6096" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0.8128" x2="-1.651" y2="-0.8128" width="0.1524" layer="21"/>
<wire x1="-0.6096" y1="0.8128" x2="-1.651" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.3208" x2="-2.921" y2="-1.3208" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.921" y1="-1.3208" x2="-2.667" y2="-1.3208" width="0.1524" layer="21" curve="-180"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="DBZ3-M">
<smd name="1" x="-0.95" y="-1.0668" dx="0.6096" dy="1.6256" layer="1"/>
<smd name="2" x="0.95" y="-1.0668" dx="0.6096" dy="1.6256" layer="1"/>
<smd name="3" x="0" y="0.93345" dx="0.6096" dy="1.8923" layer="1"/>
<wire x1="-0.6858" y1="-0.6858" x2="-1.1938" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.7112" x2="-1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-1.3208" x2="-0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="-1.3208" x2="-0.6858" y2="-0.6858" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.6858" x2="0.6858" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.7112" x2="0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-1.3208" x2="1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-1.3208" x2="1.1938" y2="-0.6858" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.6858" x2="0.254" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.7112" x2="0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.3208" x2="-0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.3208" x2="-0.254" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.7112" x2="1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.7112" x2="1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.7112" x2="-1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.7112" x2="-1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.4572" x2="-1.397" y2="-0.4572" width="0" layer="51" curve="-180"/>
<wire x1="-1.397" y1="-0.4572" x2="-1.143" y2="-0.4318" width="0" layer="51" curve="-180"/>
<wire x1="-0.3048" y1="-0.8128" x2="0.3048" y2="-0.8128" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-0.8128" x2="1.651" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.8128" x2="0.635" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0.8128" x2="-1.651" y2="-0.8128" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.8128" x2="-1.651" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.3208" x2="-2.921" y2="-1.3208" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.921" y1="-1.3208" x2="-2.667" y2="-1.3208" width="0.1524" layer="21" curve="-180"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="DBZ3-L">
<smd name="1" x="-0.95" y="-0.9652" dx="0.508" dy="1.016" layer="1"/>
<smd name="2" x="0.95" y="-0.9652" dx="0.508" dy="1.016" layer="1"/>
<smd name="3" x="0" y="0.83185" dx="0.508" dy="1.2827" layer="1"/>
<wire x1="-0.6858" y1="-0.6858" x2="-1.1938" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.7112" x2="-1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-1.3208" x2="-0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="-1.3208" x2="-0.6858" y2="-0.6858" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.6858" x2="0.6858" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.7112" x2="0.6858" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-1.3208" x2="1.1938" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-1.3208" x2="1.1938" y2="-0.6858" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.6858" x2="0.254" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.7112" x2="0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.3208" x2="-0.254" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.3208" x2="-0.254" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.7112" x2="1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.7112" x2="1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.7112" x2="-1.524" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.7112" x2="-1.524" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.4572" x2="-1.397" y2="-0.4572" width="0" layer="51" curve="-180"/>
<wire x1="-1.397" y1="-0.4572" x2="-1.143" y2="-0.4318" width="0" layer="51" curve="-180"/>
<wire x1="-0.3556" y1="-0.8128" x2="0.3556" y2="-0.8128" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-0.8128" x2="1.651" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0.8128" x2="0.5842" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0.8128" x2="-1.651" y2="-0.8128" width="0.1524" layer="21"/>
<wire x1="-0.5842" y1="0.8128" x2="-1.651" y2="0.8128" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.3208" x2="-2.921" y2="-1.3208" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.921" y1="-1.3208" x2="-2.667" y2="-1.3208" width="0.1524" layer="21" curve="-180"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="DRV5053VAQDBZR">
<pin name="VCC" x="2.54" y="0" length="middle" direction="pwr"/>
<pin name="OUT" x="38.1" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="GND" x="38.1" y="0" length="middle" direction="pwr" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="33.02" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-7.62" x2="33.02" y2="5.08" width="0.1524" layer="94"/>
<wire x1="33.02" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="15.5956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="14.9606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DRV5053VAQDBZR" prefix="U">
<gates>
<gate name="A" symbol="DRV5053VAQDBZR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DBZ3">
<connects>
<connect gate="A" pin="GND" pad="3"/>
<connect gate="A" pin="OUT" pad="2"/>
<connect gate="A" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="drv5053vaqdbzr" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
<device name="DBZ3-M" package="DBZ3-M">
<connects>
<connect gate="A" pin="GND" pad="3"/>
<connect gate="A" pin="OUT" pad="2"/>
<connect gate="A" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="drv5053vaqdbzr" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
<device name="DBZ3-L" package="DBZ3-L">
<connects>
<connect gate="A" pin="GND" pad="3"/>
<connect gate="A" pin="OUT" pad="2"/>
<connect gate="A" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="drv5053vaqdbzr" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_D_L">
<frame x1="-431.8" y1="0" x2="431.8" y2="558.8" columns="16" rows="11" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_D_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt; D Size , 22 x 34 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_D_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="325.12" y="0" addlevel="always"/>
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
<part name="TILE_MAG2" library="senior_proj_8-1_mux" deviceset="CD74HC4051M96" device="D16-M"/>
<part name="TILE_MAG1" library="senior_proj_8-1_mux" deviceset="CD74HC4051M96" device="D16-M"/>
<part name="TILE_MAG0" library="senior_proj_8-1_mux" deviceset="CD74HC4051M96" device="D16-M"/>
<part name="MAG_MUX" library="senior_project_3-1_mux" deviceset="TS5A3359DCUR" device=""/>
<part name="X1" library="con-molex" deviceset="22-23-2081" device=""/>
<part name="C1" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="C2" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="C3" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="C4" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device="CC0603N-L"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="T0_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="C5" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T0_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+7" library="supply1" deviceset="VCC" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="C6" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T0_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+8" library="supply1" deviceset="VCC" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="C7" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T1_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+9" library="supply1" deviceset="VCC" device=""/>
<part name="GND16" library="supply1" deviceset="GND" device=""/>
<part name="GND17" library="supply1" deviceset="GND" device=""/>
<part name="C8" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T1_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+10" library="supply1" deviceset="VCC" device=""/>
<part name="GND18" library="supply1" deviceset="GND" device=""/>
<part name="GND19" library="supply1" deviceset="GND" device=""/>
<part name="C9" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T1_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+11" library="supply1" deviceset="VCC" device=""/>
<part name="GND20" library="supply1" deviceset="GND" device=""/>
<part name="GND21" library="supply1" deviceset="GND" device=""/>
<part name="C10" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T2_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+12" library="supply1" deviceset="VCC" device=""/>
<part name="GND22" library="supply1" deviceset="GND" device=""/>
<part name="GND23" library="supply1" deviceset="GND" device=""/>
<part name="C11" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T2_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+13" library="supply1" deviceset="VCC" device=""/>
<part name="GND24" library="supply1" deviceset="GND" device=""/>
<part name="GND25" library="supply1" deviceset="GND" device=""/>
<part name="C12" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T2_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+14" library="supply1" deviceset="VCC" device=""/>
<part name="GND26" library="supply1" deviceset="GND" device=""/>
<part name="GND27" library="supply1" deviceset="GND" device=""/>
<part name="C13" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T3_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+15" library="supply1" deviceset="VCC" device=""/>
<part name="GND28" library="supply1" deviceset="GND" device=""/>
<part name="GND29" library="supply1" deviceset="GND" device=""/>
<part name="C14" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T3_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+16" library="supply1" deviceset="VCC" device=""/>
<part name="GND30" library="supply1" deviceset="GND" device=""/>
<part name="GND31" library="supply1" deviceset="GND" device=""/>
<part name="C15" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T3_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+17" library="supply1" deviceset="VCC" device=""/>
<part name="GND32" library="supply1" deviceset="GND" device=""/>
<part name="GND33" library="supply1" deviceset="GND" device=""/>
<part name="C16" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T4_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+18" library="supply1" deviceset="VCC" device=""/>
<part name="GND34" library="supply1" deviceset="GND" device=""/>
<part name="GND35" library="supply1" deviceset="GND" device=""/>
<part name="C17" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T4_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+19" library="supply1" deviceset="VCC" device=""/>
<part name="GND36" library="supply1" deviceset="GND" device=""/>
<part name="GND37" library="supply1" deviceset="GND" device=""/>
<part name="C18" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T4_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+20" library="supply1" deviceset="VCC" device=""/>
<part name="GND38" library="supply1" deviceset="GND" device=""/>
<part name="GND39" library="supply1" deviceset="GND" device=""/>
<part name="C19" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T5_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+21" library="supply1" deviceset="VCC" device=""/>
<part name="GND40" library="supply1" deviceset="GND" device=""/>
<part name="GND41" library="supply1" deviceset="GND" device=""/>
<part name="C20" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T5_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+22" library="supply1" deviceset="VCC" device=""/>
<part name="GND42" library="supply1" deviceset="GND" device=""/>
<part name="GND43" library="supply1" deviceset="GND" device=""/>
<part name="C21" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T5_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+23" library="supply1" deviceset="VCC" device=""/>
<part name="GND44" library="supply1" deviceset="GND" device=""/>
<part name="GND45" library="supply1" deviceset="GND" device=""/>
<part name="C22" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T6_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+24" library="supply1" deviceset="VCC" device=""/>
<part name="GND46" library="supply1" deviceset="GND" device=""/>
<part name="GND47" library="supply1" deviceset="GND" device=""/>
<part name="C23" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T6_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+25" library="supply1" deviceset="VCC" device=""/>
<part name="GND48" library="supply1" deviceset="GND" device=""/>
<part name="GND49" library="supply1" deviceset="GND" device=""/>
<part name="C24" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T6_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+26" library="supply1" deviceset="VCC" device=""/>
<part name="GND50" library="supply1" deviceset="GND" device=""/>
<part name="GND51" library="supply1" deviceset="GND" device=""/>
<part name="C25" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T7_M0" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+27" library="supply1" deviceset="VCC" device=""/>
<part name="GND52" library="supply1" deviceset="GND" device=""/>
<part name="GND53" library="supply1" deviceset="GND" device=""/>
<part name="C26" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T7_M2" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+28" library="supply1" deviceset="VCC" device=""/>
<part name="GND54" library="supply1" deviceset="GND" device=""/>
<part name="GND55" library="supply1" deviceset="GND" device=""/>
<part name="C27" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="T7_M1" library="senior_project_hall-effect-sensor" deviceset="DRV5053VAQDBZR" device="DBZ3-M"/>
<part name="P+29" library="supply1" deviceset="VCC" device=""/>
<part name="GND56" library="supply1" deviceset="GND" device=""/>
<part name="GND57" library="supply1" deviceset="GND" device=""/>
<part name="C28" library="senior_project_01uf_cap" deviceset="C0603C104J4RACTU" device=""/>
<part name="FRAME1" library="frames" deviceset="FRAME_D_L" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="386.08" y="393.7" size="5.08" layer="91">TILE_0</text>
<text x="589.28" y="391.16" size="5.08" layer="91">TILE_1</text>
<text x="789.94" y="388.62" size="5.08" layer="91">TILE_2</text>
<text x="1000.76" y="386.08" size="5.08" layer="91">TILE_3</text>
<text x="378.46" y="238.76" size="5.08" layer="91">TILE_4</text>
<text x="586.74" y="236.22" size="5.08" layer="91">TILE_5</text>
<text x="789.94" y="236.22" size="5.08" layer="91">TILE_6</text>
<text x="1000.76" y="228.6" size="5.08" layer="91">TILE_7</text>
<text x="337.82" y="396.24" size="1.778" layer="91">MAG_0</text>
<text x="381" y="434.34" size="1.778" layer="91">MAG_2</text>
<text x="444.5" y="396.24" size="1.778" layer="91">MAG_1</text>
<text x="543.56" y="391.16" size="1.778" layer="91">MAG_0</text>
<text x="589.28" y="429.26" size="1.778" layer="91">MAG_2</text>
<text x="652.78" y="391.16" size="1.778" layer="91">MAG_1</text>
<text x="746.76" y="391.16" size="1.778" layer="91">MAG_0</text>
<text x="792.48" y="429.26" size="1.778" layer="91">MAG_2</text>
<text x="855.98" y="391.16" size="1.778" layer="91">MAG_1</text>
<text x="955.04" y="386.08" size="1.778" layer="91">MAG_0</text>
<text x="1000.76" y="424.18" size="1.778" layer="91">MAG_2</text>
<text x="1064.26" y="386.08" size="1.778" layer="91">MAG_1</text>
<text x="1064.26" y="236.22" size="1.778" layer="91">MAG_1</text>
<text x="998.22" y="274.32" size="1.778" layer="91">MAG_2</text>
<text x="952.5" y="236.22" size="1.778" layer="91">MAG_0</text>
<text x="855.98" y="241.3" size="1.778" layer="91">MAG_1</text>
<text x="789.94" y="279.4" size="1.778" layer="91">MAG_2</text>
<text x="744.22" y="241.3" size="1.778" layer="91">MAG_0</text>
<text x="652.78" y="241.3" size="1.778" layer="91">MAG_1</text>
<text x="589.28" y="279.4" size="1.778" layer="91">MAG_2</text>
<text x="541.02" y="241.3" size="1.778" layer="91">MAG_0</text>
<text x="444.5" y="246.38" size="1.778" layer="91">MAG_1</text>
<text x="381" y="284.48" size="1.778" layer="91">MAG_2</text>
<text x="332.74" y="246.38" size="1.778" layer="91">MAG_0</text>
<text x="556.26" y="48.26" size="5.08" layer="91">MAG_0 TILE MUX</text>
<text x="726.44" y="48.26" size="5.08" layer="91">MAG_1 TILE MUX</text>
<text x="906.78" y="45.72" size="5.08" layer="91">MAG_2 TILE MUX</text>
<text x="739.14" y="116.84" size="5.08" layer="91">MAG MUX</text>
</plain>
<instances>
<instance part="TILE_MAG2" gate="A" x="876.3" y="88.9"/>
<instance part="TILE_MAG1" gate="A" x="695.96" y="88.9"/>
<instance part="TILE_MAG0" gate="A" x="530.86" y="88.9"/>
<instance part="MAG_MUX" gate="A" x="723.9" y="137.16"/>
<instance part="X1" gate="-1" x="1041.4" y="162.56"/>
<instance part="X1" gate="-2" x="1041.4" y="160.02"/>
<instance part="X1" gate="-3" x="1041.4" y="157.48"/>
<instance part="X1" gate="-4" x="1041.4" y="154.94"/>
<instance part="X1" gate="-5" x="1041.4" y="152.4"/>
<instance part="X1" gate="-6" x="1041.4" y="149.86"/>
<instance part="X1" gate="-7" x="1041.4" y="147.32"/>
<instance part="X1" gate="-8" x="1041.4" y="144.78"/>
<instance part="C1" gate="A" x="982.98" y="101.6" rot="R90"/>
<instance part="C2" gate="A" x="802.64" y="93.98" rot="R90"/>
<instance part="C3" gate="A" x="637.54" y="96.52" rot="R90"/>
<instance part="C4" gate="A" x="779.78" y="144.78" rot="R90"/>
<instance part="GND1" gate="1" x="970.28" y="111.76" rot="R270"/>
<instance part="GND2" gate="1" x="795.02" y="109.22" rot="R270"/>
<instance part="GND3" gate="1" x="624.84" y="104.14" rot="R270"/>
<instance part="GND4" gate="1" x="772.16" y="154.94" rot="R270"/>
<instance part="GND5" gate="1" x="1003.3" y="160.02" rot="R270"/>
<instance part="GND6" gate="1" x="863.6" y="73.66" rot="R270"/>
<instance part="GND7" gate="1" x="680.72" y="73.66" rot="R270"/>
<instance part="GND8" gate="1" x="515.62" y="73.66" rot="R270"/>
<instance part="GND9" gate="1" x="706.12" y="129.54" rot="R270"/>
<instance part="P+1" gate="VCC" x="1028.7" y="167.64"/>
<instance part="P+2" gate="VCC" x="995.68" y="93.98"/>
<instance part="P+3" gate="VCC" x="815.34" y="93.98"/>
<instance part="P+4" gate="VCC" x="650.24" y="93.98"/>
<instance part="P+5" gate="VCC" x="792.48" y="142.24"/>
<instance part="T0_M0" gate="A" x="317.5" y="408.94"/>
<instance part="P+6" gate="VCC" x="297.18" y="416.56"/>
<instance part="GND10" gate="1" x="299.72" y="426.72" rot="R270"/>
<instance part="GND11" gate="1" x="375.92" y="408.94" rot="R90"/>
<instance part="C5" gate="A" x="309.88" y="414.02" rot="R90"/>
<instance part="T0_M2" gate="A" x="363.22" y="447.04"/>
<instance part="P+7" gate="VCC" x="342.9" y="454.66"/>
<instance part="GND12" gate="1" x="345.44" y="464.82" rot="R270"/>
<instance part="GND13" gate="1" x="414.02" y="447.04" rot="R90"/>
<instance part="C6" gate="A" x="355.6" y="452.12" rot="R90"/>
<instance part="T0_M1" gate="A" x="426.72" y="408.94"/>
<instance part="P+8" gate="VCC" x="406.4" y="416.56"/>
<instance part="GND14" gate="1" x="408.94" y="426.72" rot="R270"/>
<instance part="GND15" gate="1" x="485.14" y="408.94" rot="R90"/>
<instance part="C7" gate="A" x="419.1" y="414.02" rot="R90"/>
<instance part="T1_M0" gate="A" x="525.78" y="403.86"/>
<instance part="P+9" gate="VCC" x="505.46" y="411.48"/>
<instance part="GND16" gate="1" x="508" y="421.64" rot="R270"/>
<instance part="GND17" gate="1" x="584.2" y="403.86" rot="R90"/>
<instance part="C8" gate="A" x="518.16" y="408.94" rot="R90"/>
<instance part="T1_M2" gate="A" x="571.5" y="441.96"/>
<instance part="P+10" gate="VCC" x="551.18" y="449.58"/>
<instance part="GND18" gate="1" x="553.72" y="459.74" rot="R270"/>
<instance part="GND19" gate="1" x="622.3" y="441.96" rot="R90"/>
<instance part="C9" gate="A" x="563.88" y="447.04" rot="R90"/>
<instance part="T1_M1" gate="A" x="635" y="403.86"/>
<instance part="P+11" gate="VCC" x="614.68" y="411.48"/>
<instance part="GND20" gate="1" x="617.22" y="421.64" rot="R270"/>
<instance part="GND21" gate="1" x="693.42" y="403.86" rot="R90"/>
<instance part="C10" gate="A" x="627.38" y="408.94" rot="R90"/>
<instance part="T2_M0" gate="A" x="728.98" y="403.86"/>
<instance part="P+12" gate="VCC" x="708.66" y="411.48"/>
<instance part="GND22" gate="1" x="711.2" y="421.64" rot="R270"/>
<instance part="GND23" gate="1" x="787.4" y="403.86" rot="R90"/>
<instance part="C11" gate="A" x="721.36" y="408.94" rot="R90"/>
<instance part="T2_M2" gate="A" x="774.7" y="441.96"/>
<instance part="P+13" gate="VCC" x="754.38" y="449.58"/>
<instance part="GND24" gate="1" x="756.92" y="459.74" rot="R270"/>
<instance part="GND25" gate="1" x="825.5" y="441.96" rot="R90"/>
<instance part="C12" gate="A" x="767.08" y="447.04" rot="R90"/>
<instance part="T2_M1" gate="A" x="838.2" y="403.86"/>
<instance part="P+14" gate="VCC" x="817.88" y="411.48"/>
<instance part="GND26" gate="1" x="820.42" y="421.64" rot="R270"/>
<instance part="GND27" gate="1" x="896.62" y="403.86" rot="R90"/>
<instance part="C13" gate="A" x="830.58" y="408.94" rot="R90"/>
<instance part="T3_M0" gate="A" x="937.26" y="398.78"/>
<instance part="P+15" gate="VCC" x="916.94" y="406.4"/>
<instance part="GND28" gate="1" x="919.48" y="416.56" rot="R270"/>
<instance part="GND29" gate="1" x="995.68" y="398.78" rot="R90"/>
<instance part="C14" gate="A" x="929.64" y="403.86" rot="R90"/>
<instance part="T3_M2" gate="A" x="982.98" y="436.88"/>
<instance part="P+16" gate="VCC" x="962.66" y="444.5"/>
<instance part="GND30" gate="1" x="965.2" y="454.66" rot="R270"/>
<instance part="GND31" gate="1" x="1033.78" y="436.88" rot="R90"/>
<instance part="C15" gate="A" x="975.36" y="441.96" rot="R90"/>
<instance part="T3_M1" gate="A" x="1046.48" y="398.78"/>
<instance part="P+17" gate="VCC" x="1026.16" y="406.4"/>
<instance part="GND32" gate="1" x="1028.7" y="416.56" rot="R270"/>
<instance part="GND33" gate="1" x="1104.9" y="398.78" rot="R90"/>
<instance part="C16" gate="A" x="1038.86" y="403.86" rot="R90"/>
<instance part="T4_M0" gate="A" x="317.5" y="259.08"/>
<instance part="P+18" gate="VCC" x="297.18" y="266.7"/>
<instance part="GND34" gate="1" x="299.72" y="276.86" rot="R270"/>
<instance part="GND35" gate="1" x="375.92" y="259.08" rot="R90"/>
<instance part="C17" gate="A" x="309.88" y="264.16" rot="R90"/>
<instance part="T4_M2" gate="A" x="363.22" y="297.18"/>
<instance part="P+19" gate="VCC" x="342.9" y="304.8"/>
<instance part="GND36" gate="1" x="345.44" y="314.96" rot="R270"/>
<instance part="GND37" gate="1" x="414.02" y="297.18" rot="R90"/>
<instance part="C18" gate="A" x="355.6" y="302.26" rot="R90"/>
<instance part="T4_M1" gate="A" x="426.72" y="259.08"/>
<instance part="P+20" gate="VCC" x="406.4" y="266.7"/>
<instance part="GND38" gate="1" x="408.94" y="276.86" rot="R270"/>
<instance part="GND39" gate="1" x="485.14" y="259.08" rot="R90"/>
<instance part="C19" gate="A" x="419.1" y="264.16" rot="R90"/>
<instance part="T5_M0" gate="A" x="525.78" y="254"/>
<instance part="P+21" gate="VCC" x="505.46" y="261.62"/>
<instance part="GND40" gate="1" x="508" y="271.78" rot="R270"/>
<instance part="GND41" gate="1" x="584.2" y="254" rot="R90"/>
<instance part="C20" gate="A" x="518.16" y="259.08" rot="R90"/>
<instance part="T5_M2" gate="A" x="571.5" y="292.1"/>
<instance part="P+22" gate="VCC" x="551.18" y="299.72"/>
<instance part="GND42" gate="1" x="553.72" y="309.88" rot="R270"/>
<instance part="GND43" gate="1" x="622.3" y="292.1" rot="R90"/>
<instance part="C21" gate="A" x="563.88" y="297.18" rot="R90"/>
<instance part="T5_M1" gate="A" x="635" y="254"/>
<instance part="P+23" gate="VCC" x="614.68" y="261.62"/>
<instance part="GND44" gate="1" x="617.22" y="271.78" rot="R270"/>
<instance part="GND45" gate="1" x="693.42" y="254" rot="R90"/>
<instance part="C22" gate="A" x="627.38" y="259.08" rot="R90"/>
<instance part="T6_M0" gate="A" x="728.98" y="254"/>
<instance part="P+24" gate="VCC" x="708.66" y="261.62"/>
<instance part="GND46" gate="1" x="711.2" y="271.78" rot="R270"/>
<instance part="GND47" gate="1" x="787.4" y="254" rot="R90"/>
<instance part="C23" gate="A" x="721.36" y="259.08" rot="R90"/>
<instance part="T6_M2" gate="A" x="774.7" y="292.1"/>
<instance part="P+25" gate="VCC" x="754.38" y="299.72"/>
<instance part="GND48" gate="1" x="756.92" y="309.88" rot="R270"/>
<instance part="GND49" gate="1" x="825.5" y="292.1" rot="R90"/>
<instance part="C24" gate="A" x="767.08" y="297.18" rot="R90"/>
<instance part="T6_M1" gate="A" x="838.2" y="254"/>
<instance part="P+26" gate="VCC" x="817.88" y="261.62"/>
<instance part="GND50" gate="1" x="820.42" y="271.78" rot="R270"/>
<instance part="GND51" gate="1" x="896.62" y="254" rot="R90"/>
<instance part="C25" gate="A" x="830.58" y="259.08" rot="R90"/>
<instance part="T7_M0" gate="A" x="937.26" y="248.92"/>
<instance part="P+27" gate="VCC" x="916.94" y="256.54"/>
<instance part="GND52" gate="1" x="919.48" y="266.7" rot="R270"/>
<instance part="GND53" gate="1" x="995.68" y="248.92" rot="R90"/>
<instance part="C26" gate="A" x="929.64" y="254" rot="R90"/>
<instance part="T7_M2" gate="A" x="982.98" y="287.02"/>
<instance part="P+28" gate="VCC" x="962.66" y="294.64"/>
<instance part="GND54" gate="1" x="965.2" y="304.8" rot="R270"/>
<instance part="GND55" gate="1" x="1033.78" y="287.02" rot="R90"/>
<instance part="C27" gate="A" x="975.36" y="292.1" rot="R90"/>
<instance part="T7_M1" gate="A" x="1046.48" y="248.92"/>
<instance part="P+29" gate="VCC" x="1026.16" y="256.54"/>
<instance part="GND56" gate="1" x="1028.7" y="266.7" rot="R270"/>
<instance part="GND57" gate="1" x="1104.9" y="248.92" rot="R90"/>
<instance part="C28" gate="A" x="1038.86" y="254" rot="R90"/>
<instance part="FRAME1" gate="G$1" x="695.96" y="-5.08"/>
<instance part="FRAME1" gate="G$2" x="1021.08" y="-5.08"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="TILE_MAG0" gate="A" pin="COMOUT/INA"/>
<wire x1="533.4" y1="83.82" x2="513.08" y2="83.82" width="0.1524" layer="91"/>
<wire x1="513.08" y1="83.82" x2="513.08" y2="137.16" width="0.1524" layer="91"/>
<pinref part="MAG_MUX" gate="A" pin="NO0"/>
<wire x1="513.08" y1="137.16" x2="726.44" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="TILE_MAG1" gate="A" pin="COMOUT/INA"/>
<wire x1="698.5" y1="83.82" x2="673.1" y2="83.82" width="0.1524" layer="91"/>
<wire x1="673.1" y1="83.82" x2="673.1" y2="134.62" width="0.1524" layer="91"/>
<pinref part="MAG_MUX" gate="A" pin="NO1"/>
<wire x1="673.1" y1="134.62" x2="726.44" y2="134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="MAG_MUX" gate="A" pin="NO2"/>
<wire x1="726.44" y1="132.08" x2="716.28" y2="132.08" width="0.1524" layer="91"/>
<wire x1="716.28" y1="132.08" x2="716.28" y2="101.6" width="0.1524" layer="91"/>
<wire x1="716.28" y1="101.6" x2="863.6" y2="101.6" width="0.1524" layer="91"/>
<wire x1="863.6" y1="101.6" x2="863.6" y2="83.82" width="0.1524" layer="91"/>
<pinref part="TILE_MAG2" gate="A" pin="COMOUT/INA"/>
<wire x1="863.6" y1="83.82" x2="878.84" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TILE_SEL_0" class="0">
<segment>
<pinref part="X1" gate="-8" pin="S"/>
<wire x1="1038.86" y1="144.78" x2="1021.08" y2="144.78" width="0.1524" layer="91"/>
<wire x1="1021.08" y1="144.78" x2="1021.08" y2="76.2" width="0.1524" layer="91"/>
<pinref part="TILE_MAG2" gate="A" pin="ADDRESSSELECTS0"/>
<wire x1="1021.08" y1="76.2" x2="980.44" y2="76.2" width="0.1524" layer="91"/>
<pinref part="TILE_MAG1" gate="A" pin="ADDRESSSELECTS0"/>
<wire x1="800.1" y1="76.2" x2="853.44" y2="76.2" width="0.1524" layer="91"/>
<wire x1="853.44" y1="76.2" x2="853.44" y2="60.96" width="0.1524" layer="91"/>
<wire x1="853.44" y1="60.96" x2="1021.08" y2="60.96" width="0.1524" layer="91"/>
<wire x1="1021.08" y1="60.96" x2="1021.08" y2="76.2" width="0.1524" layer="91"/>
<junction x="1021.08" y="76.2"/>
<wire x1="853.44" y1="60.96" x2="662.94" y2="60.96" width="0.1524" layer="91"/>
<wire x1="662.94" y1="60.96" x2="662.94" y2="76.2" width="0.1524" layer="91"/>
<junction x="853.44" y="60.96"/>
<pinref part="TILE_MAG0" gate="A" pin="ADDRESSSELECTS0"/>
<wire x1="662.94" y1="76.2" x2="635" y2="76.2" width="0.1524" layer="91"/>
<label x="1026.16" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="TILE_SEL_1" class="0">
<segment>
<pinref part="X1" gate="-7" pin="S"/>
<wire x1="1038.86" y1="147.32" x2="1018.54" y2="147.32" width="0.1524" layer="91"/>
<wire x1="1018.54" y1="147.32" x2="1018.54" y2="73.66" width="0.1524" layer="91"/>
<pinref part="TILE_MAG2" gate="A" pin="ADDRESSSELECTS1"/>
<wire x1="1018.54" y1="73.66" x2="980.44" y2="73.66" width="0.1524" layer="91"/>
<wire x1="1018.54" y1="73.66" x2="1018.54" y2="58.42" width="0.1524" layer="91"/>
<junction x="1018.54" y="73.66"/>
<wire x1="1018.54" y1="58.42" x2="850.9" y2="58.42" width="0.1524" layer="91"/>
<wire x1="850.9" y1="58.42" x2="850.9" y2="73.66" width="0.1524" layer="91"/>
<pinref part="TILE_MAG1" gate="A" pin="ADDRESSSELECTS1"/>
<wire x1="850.9" y1="73.66" x2="800.1" y2="73.66" width="0.1524" layer="91"/>
<wire x1="850.9" y1="58.42" x2="660.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="660.4" y1="58.42" x2="660.4" y2="73.66" width="0.1524" layer="91"/>
<junction x="850.9" y="58.42"/>
<pinref part="TILE_MAG0" gate="A" pin="ADDRESSSELECTS1"/>
<wire x1="660.4" y1="73.66" x2="635" y2="73.66" width="0.1524" layer="91"/>
<label x="1026.16" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="TILE_SEL_2" class="0">
<segment>
<pinref part="X1" gate="-6" pin="S"/>
<wire x1="1038.86" y1="149.86" x2="1016" y2="149.86" width="0.1524" layer="91"/>
<wire x1="1016" y1="149.86" x2="1016" y2="71.12" width="0.1524" layer="91"/>
<wire x1="1016" y1="71.12" x2="1016" y2="55.88" width="0.1524" layer="91"/>
<wire x1="1016" y1="55.88" x2="848.36" y2="55.88" width="0.1524" layer="91"/>
<wire x1="848.36" y1="55.88" x2="848.36" y2="71.12" width="0.1524" layer="91"/>
<pinref part="TILE_MAG1" gate="A" pin="ADDRESSSELECTS2"/>
<wire x1="848.36" y1="71.12" x2="800.1" y2="71.12" width="0.1524" layer="91"/>
<pinref part="TILE_MAG2" gate="A" pin="ADDRESSSELECTS2"/>
<wire x1="980.44" y1="71.12" x2="1016" y2="71.12" width="0.1524" layer="91"/>
<junction x="1016" y="71.12"/>
<wire x1="848.36" y1="55.88" x2="657.86" y2="55.88" width="0.1524" layer="91"/>
<wire x1="657.86" y1="55.88" x2="657.86" y2="71.12" width="0.1524" layer="91"/>
<junction x="848.36" y="55.88"/>
<pinref part="TILE_MAG0" gate="A" pin="ADDRESSSELECTS2"/>
<wire x1="657.86" y1="71.12" x2="635" y2="71.12" width="0.1524" layer="91"/>
<label x="1026.16" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="MAG_SEL_0" class="0">
<segment>
<pinref part="MAG_MUX" gate="A" pin="IN1"/>
<wire x1="777.24" y1="132.08" x2="1013.46" y2="132.08" width="0.1524" layer="91"/>
<wire x1="1013.46" y1="132.08" x2="1013.46" y2="152.4" width="0.1524" layer="91"/>
<pinref part="X1" gate="-5" pin="S"/>
<wire x1="1013.46" y1="152.4" x2="1038.86" y2="152.4" width="0.1524" layer="91"/>
<label x="1026.16" y="152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="MAG_SEL_1" class="0">
<segment>
<pinref part="MAG_MUX" gate="A" pin="IN2"/>
<wire x1="777.24" y1="129.54" x2="1010.92" y2="129.54" width="0.1524" layer="91"/>
<wire x1="1010.92" y1="129.54" x2="1010.92" y2="154.94" width="0.1524" layer="91"/>
<pinref part="X1" gate="-4" pin="S"/>
<wire x1="1010.92" y1="154.94" x2="1038.86" y2="154.94" width="0.1524" layer="91"/>
<label x="1026.16" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="A_OUT" class="0">
<segment>
<pinref part="MAG_MUX" gate="A" pin="COM"/>
<wire x1="777.24" y1="134.62" x2="1008.38" y2="134.62" width="0.1524" layer="91"/>
<wire x1="1008.38" y1="134.62" x2="1008.38" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="1008.38" y1="157.48" x2="1038.86" y2="157.48" width="0.1524" layer="91"/>
<label x="1031.24" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="MAG_MUX" gate="A" pin="V+"/>
<wire x1="777.24" y1="137.16" x2="779.78" y2="137.16" width="0.1524" layer="91"/>
<pinref part="C4" gate="A" pin="11"/>
<wire x1="779.78" y1="144.78" x2="779.78" y2="137.16" width="0.1524" layer="91"/>
<junction x="779.78" y="137.16"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<wire x1="779.78" y1="137.16" x2="792.48" y2="137.16" width="0.1524" layer="91"/>
<wire x1="792.48" y1="137.16" x2="792.48" y2="139.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="1038.86" y1="162.56" x2="1028.7" y2="162.56" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="1028.7" y1="162.56" x2="1028.7" y2="165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="VCC"/>
<wire x1="980.44" y1="88.9" x2="982.98" y2="88.9" width="0.1524" layer="91"/>
<pinref part="C1" gate="A" pin="11"/>
<wire x1="982.98" y1="101.6" x2="982.98" y2="88.9" width="0.1524" layer="91"/>
<junction x="982.98" y="88.9"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="982.98" y1="88.9" x2="995.68" y2="88.9" width="0.1524" layer="91"/>
<wire x1="995.68" y1="88.9" x2="995.68" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="VCC"/>
<wire x1="800.1" y1="88.9" x2="802.64" y2="88.9" width="0.1524" layer="91"/>
<pinref part="C2" gate="A" pin="11"/>
<wire x1="802.64" y1="93.98" x2="802.64" y2="88.9" width="0.1524" layer="91"/>
<junction x="802.64" y="88.9"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<wire x1="802.64" y1="88.9" x2="815.34" y2="88.9" width="0.1524" layer="91"/>
<wire x1="815.34" y1="88.9" x2="815.34" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="650.24" y1="91.44" x2="650.24" y2="88.9" width="0.1524" layer="91"/>
<pinref part="TILE_MAG0" gate="A" pin="VCC"/>
<wire x1="635" y1="88.9" x2="637.54" y2="88.9" width="0.1524" layer="91"/>
<pinref part="C3" gate="A" pin="11"/>
<wire x1="637.54" y1="96.52" x2="637.54" y2="88.9" width="0.1524" layer="91"/>
<junction x="637.54" y="88.9"/>
<wire x1="650.24" y1="88.9" x2="637.54" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T0_M0" gate="A" pin="VCC"/>
<wire x1="320.04" y1="408.94" x2="309.88" y2="408.94" width="0.1524" layer="91"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<wire x1="309.88" y1="408.94" x2="297.18" y2="408.94" width="0.1524" layer="91"/>
<wire x1="297.18" y1="408.94" x2="297.18" y2="414.02" width="0.1524" layer="91"/>
<pinref part="C5" gate="A" pin="11"/>
<wire x1="309.88" y1="408.94" x2="309.88" y2="414.02" width="0.1524" layer="91"/>
<junction x="309.88" y="408.94"/>
</segment>
<segment>
<pinref part="T0_M2" gate="A" pin="VCC"/>
<wire x1="365.76" y1="447.04" x2="355.6" y2="447.04" width="0.1524" layer="91"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
<wire x1="355.6" y1="447.04" x2="342.9" y2="447.04" width="0.1524" layer="91"/>
<wire x1="342.9" y1="447.04" x2="342.9" y2="452.12" width="0.1524" layer="91"/>
<pinref part="C6" gate="A" pin="11"/>
<wire x1="355.6" y1="447.04" x2="355.6" y2="452.12" width="0.1524" layer="91"/>
<junction x="355.6" y="447.04"/>
</segment>
<segment>
<pinref part="T0_M1" gate="A" pin="VCC"/>
<wire x1="429.26" y1="408.94" x2="419.1" y2="408.94" width="0.1524" layer="91"/>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<wire x1="419.1" y1="408.94" x2="406.4" y2="408.94" width="0.1524" layer="91"/>
<wire x1="406.4" y1="408.94" x2="406.4" y2="414.02" width="0.1524" layer="91"/>
<pinref part="C7" gate="A" pin="11"/>
<wire x1="419.1" y1="408.94" x2="419.1" y2="414.02" width="0.1524" layer="91"/>
<junction x="419.1" y="408.94"/>
</segment>
<segment>
<pinref part="T1_M0" gate="A" pin="VCC"/>
<wire x1="528.32" y1="403.86" x2="518.16" y2="403.86" width="0.1524" layer="91"/>
<pinref part="P+9" gate="VCC" pin="VCC"/>
<wire x1="518.16" y1="403.86" x2="505.46" y2="403.86" width="0.1524" layer="91"/>
<wire x1="505.46" y1="403.86" x2="505.46" y2="408.94" width="0.1524" layer="91"/>
<pinref part="C8" gate="A" pin="11"/>
<wire x1="518.16" y1="403.86" x2="518.16" y2="408.94" width="0.1524" layer="91"/>
<junction x="518.16" y="403.86"/>
</segment>
<segment>
<pinref part="T1_M2" gate="A" pin="VCC"/>
<wire x1="574.04" y1="441.96" x2="563.88" y2="441.96" width="0.1524" layer="91"/>
<pinref part="P+10" gate="VCC" pin="VCC"/>
<wire x1="563.88" y1="441.96" x2="551.18" y2="441.96" width="0.1524" layer="91"/>
<wire x1="551.18" y1="441.96" x2="551.18" y2="447.04" width="0.1524" layer="91"/>
<pinref part="C9" gate="A" pin="11"/>
<wire x1="563.88" y1="441.96" x2="563.88" y2="447.04" width="0.1524" layer="91"/>
<junction x="563.88" y="441.96"/>
</segment>
<segment>
<pinref part="T1_M1" gate="A" pin="VCC"/>
<wire x1="637.54" y1="403.86" x2="627.38" y2="403.86" width="0.1524" layer="91"/>
<pinref part="P+11" gate="VCC" pin="VCC"/>
<wire x1="627.38" y1="403.86" x2="614.68" y2="403.86" width="0.1524" layer="91"/>
<wire x1="614.68" y1="403.86" x2="614.68" y2="408.94" width="0.1524" layer="91"/>
<pinref part="C10" gate="A" pin="11"/>
<wire x1="627.38" y1="403.86" x2="627.38" y2="408.94" width="0.1524" layer="91"/>
<junction x="627.38" y="403.86"/>
</segment>
<segment>
<pinref part="T2_M0" gate="A" pin="VCC"/>
<wire x1="731.52" y1="403.86" x2="721.36" y2="403.86" width="0.1524" layer="91"/>
<pinref part="P+12" gate="VCC" pin="VCC"/>
<wire x1="721.36" y1="403.86" x2="708.66" y2="403.86" width="0.1524" layer="91"/>
<wire x1="708.66" y1="403.86" x2="708.66" y2="408.94" width="0.1524" layer="91"/>
<pinref part="C11" gate="A" pin="11"/>
<wire x1="721.36" y1="403.86" x2="721.36" y2="408.94" width="0.1524" layer="91"/>
<junction x="721.36" y="403.86"/>
</segment>
<segment>
<pinref part="T2_M2" gate="A" pin="VCC"/>
<wire x1="777.24" y1="441.96" x2="767.08" y2="441.96" width="0.1524" layer="91"/>
<pinref part="P+13" gate="VCC" pin="VCC"/>
<wire x1="767.08" y1="441.96" x2="754.38" y2="441.96" width="0.1524" layer="91"/>
<wire x1="754.38" y1="441.96" x2="754.38" y2="447.04" width="0.1524" layer="91"/>
<pinref part="C12" gate="A" pin="11"/>
<wire x1="767.08" y1="441.96" x2="767.08" y2="447.04" width="0.1524" layer="91"/>
<junction x="767.08" y="441.96"/>
</segment>
<segment>
<pinref part="T2_M1" gate="A" pin="VCC"/>
<wire x1="840.74" y1="403.86" x2="830.58" y2="403.86" width="0.1524" layer="91"/>
<pinref part="P+14" gate="VCC" pin="VCC"/>
<wire x1="830.58" y1="403.86" x2="817.88" y2="403.86" width="0.1524" layer="91"/>
<wire x1="817.88" y1="403.86" x2="817.88" y2="408.94" width="0.1524" layer="91"/>
<pinref part="C13" gate="A" pin="11"/>
<wire x1="830.58" y1="403.86" x2="830.58" y2="408.94" width="0.1524" layer="91"/>
<junction x="830.58" y="403.86"/>
</segment>
<segment>
<pinref part="T3_M0" gate="A" pin="VCC"/>
<wire x1="939.8" y1="398.78" x2="929.64" y2="398.78" width="0.1524" layer="91"/>
<pinref part="P+15" gate="VCC" pin="VCC"/>
<wire x1="929.64" y1="398.78" x2="916.94" y2="398.78" width="0.1524" layer="91"/>
<wire x1="916.94" y1="398.78" x2="916.94" y2="403.86" width="0.1524" layer="91"/>
<pinref part="C14" gate="A" pin="11"/>
<wire x1="929.64" y1="398.78" x2="929.64" y2="403.86" width="0.1524" layer="91"/>
<junction x="929.64" y="398.78"/>
</segment>
<segment>
<pinref part="T3_M2" gate="A" pin="VCC"/>
<wire x1="985.52" y1="436.88" x2="975.36" y2="436.88" width="0.1524" layer="91"/>
<pinref part="P+16" gate="VCC" pin="VCC"/>
<wire x1="975.36" y1="436.88" x2="962.66" y2="436.88" width="0.1524" layer="91"/>
<wire x1="962.66" y1="436.88" x2="962.66" y2="441.96" width="0.1524" layer="91"/>
<pinref part="C15" gate="A" pin="11"/>
<wire x1="975.36" y1="436.88" x2="975.36" y2="441.96" width="0.1524" layer="91"/>
<junction x="975.36" y="436.88"/>
</segment>
<segment>
<pinref part="T3_M1" gate="A" pin="VCC"/>
<wire x1="1049.02" y1="398.78" x2="1038.86" y2="398.78" width="0.1524" layer="91"/>
<pinref part="P+17" gate="VCC" pin="VCC"/>
<wire x1="1038.86" y1="398.78" x2="1026.16" y2="398.78" width="0.1524" layer="91"/>
<wire x1="1026.16" y1="398.78" x2="1026.16" y2="403.86" width="0.1524" layer="91"/>
<pinref part="C16" gate="A" pin="11"/>
<wire x1="1038.86" y1="398.78" x2="1038.86" y2="403.86" width="0.1524" layer="91"/>
<junction x="1038.86" y="398.78"/>
</segment>
<segment>
<pinref part="T4_M0" gate="A" pin="VCC"/>
<wire x1="320.04" y1="259.08" x2="309.88" y2="259.08" width="0.1524" layer="91"/>
<pinref part="P+18" gate="VCC" pin="VCC"/>
<wire x1="309.88" y1="259.08" x2="297.18" y2="259.08" width="0.1524" layer="91"/>
<wire x1="297.18" y1="259.08" x2="297.18" y2="264.16" width="0.1524" layer="91"/>
<pinref part="C17" gate="A" pin="11"/>
<wire x1="309.88" y1="259.08" x2="309.88" y2="264.16" width="0.1524" layer="91"/>
<junction x="309.88" y="259.08"/>
</segment>
<segment>
<pinref part="T4_M2" gate="A" pin="VCC"/>
<wire x1="365.76" y1="297.18" x2="355.6" y2="297.18" width="0.1524" layer="91"/>
<pinref part="P+19" gate="VCC" pin="VCC"/>
<wire x1="355.6" y1="297.18" x2="342.9" y2="297.18" width="0.1524" layer="91"/>
<wire x1="342.9" y1="297.18" x2="342.9" y2="302.26" width="0.1524" layer="91"/>
<pinref part="C18" gate="A" pin="11"/>
<wire x1="355.6" y1="297.18" x2="355.6" y2="302.26" width="0.1524" layer="91"/>
<junction x="355.6" y="297.18"/>
</segment>
<segment>
<pinref part="T4_M1" gate="A" pin="VCC"/>
<wire x1="429.26" y1="259.08" x2="419.1" y2="259.08" width="0.1524" layer="91"/>
<pinref part="P+20" gate="VCC" pin="VCC"/>
<wire x1="419.1" y1="259.08" x2="406.4" y2="259.08" width="0.1524" layer="91"/>
<wire x1="406.4" y1="259.08" x2="406.4" y2="264.16" width="0.1524" layer="91"/>
<pinref part="C19" gate="A" pin="11"/>
<wire x1="419.1" y1="259.08" x2="419.1" y2="264.16" width="0.1524" layer="91"/>
<junction x="419.1" y="259.08"/>
</segment>
<segment>
<pinref part="T5_M0" gate="A" pin="VCC"/>
<wire x1="528.32" y1="254" x2="518.16" y2="254" width="0.1524" layer="91"/>
<pinref part="P+21" gate="VCC" pin="VCC"/>
<wire x1="518.16" y1="254" x2="505.46" y2="254" width="0.1524" layer="91"/>
<wire x1="505.46" y1="254" x2="505.46" y2="259.08" width="0.1524" layer="91"/>
<pinref part="C20" gate="A" pin="11"/>
<wire x1="518.16" y1="254" x2="518.16" y2="259.08" width="0.1524" layer="91"/>
<junction x="518.16" y="254"/>
</segment>
<segment>
<pinref part="T5_M2" gate="A" pin="VCC"/>
<wire x1="574.04" y1="292.1" x2="563.88" y2="292.1" width="0.1524" layer="91"/>
<pinref part="P+22" gate="VCC" pin="VCC"/>
<wire x1="563.88" y1="292.1" x2="551.18" y2="292.1" width="0.1524" layer="91"/>
<wire x1="551.18" y1="292.1" x2="551.18" y2="297.18" width="0.1524" layer="91"/>
<pinref part="C21" gate="A" pin="11"/>
<wire x1="563.88" y1="292.1" x2="563.88" y2="297.18" width="0.1524" layer="91"/>
<junction x="563.88" y="292.1"/>
</segment>
<segment>
<pinref part="T5_M1" gate="A" pin="VCC"/>
<wire x1="637.54" y1="254" x2="627.38" y2="254" width="0.1524" layer="91"/>
<pinref part="P+23" gate="VCC" pin="VCC"/>
<wire x1="627.38" y1="254" x2="614.68" y2="254" width="0.1524" layer="91"/>
<wire x1="614.68" y1="254" x2="614.68" y2="259.08" width="0.1524" layer="91"/>
<pinref part="C22" gate="A" pin="11"/>
<wire x1="627.38" y1="254" x2="627.38" y2="259.08" width="0.1524" layer="91"/>
<junction x="627.38" y="254"/>
</segment>
<segment>
<pinref part="T6_M0" gate="A" pin="VCC"/>
<wire x1="731.52" y1="254" x2="721.36" y2="254" width="0.1524" layer="91"/>
<pinref part="P+24" gate="VCC" pin="VCC"/>
<wire x1="721.36" y1="254" x2="708.66" y2="254" width="0.1524" layer="91"/>
<wire x1="708.66" y1="254" x2="708.66" y2="259.08" width="0.1524" layer="91"/>
<pinref part="C23" gate="A" pin="11"/>
<wire x1="721.36" y1="254" x2="721.36" y2="259.08" width="0.1524" layer="91"/>
<junction x="721.36" y="254"/>
</segment>
<segment>
<pinref part="T6_M2" gate="A" pin="VCC"/>
<wire x1="777.24" y1="292.1" x2="767.08" y2="292.1" width="0.1524" layer="91"/>
<pinref part="P+25" gate="VCC" pin="VCC"/>
<wire x1="767.08" y1="292.1" x2="754.38" y2="292.1" width="0.1524" layer="91"/>
<wire x1="754.38" y1="292.1" x2="754.38" y2="297.18" width="0.1524" layer="91"/>
<pinref part="C24" gate="A" pin="11"/>
<wire x1="767.08" y1="292.1" x2="767.08" y2="297.18" width="0.1524" layer="91"/>
<junction x="767.08" y="292.1"/>
</segment>
<segment>
<pinref part="T6_M1" gate="A" pin="VCC"/>
<wire x1="840.74" y1="254" x2="830.58" y2="254" width="0.1524" layer="91"/>
<pinref part="P+26" gate="VCC" pin="VCC"/>
<wire x1="830.58" y1="254" x2="817.88" y2="254" width="0.1524" layer="91"/>
<wire x1="817.88" y1="254" x2="817.88" y2="259.08" width="0.1524" layer="91"/>
<pinref part="C25" gate="A" pin="11"/>
<wire x1="830.58" y1="254" x2="830.58" y2="259.08" width="0.1524" layer="91"/>
<junction x="830.58" y="254"/>
</segment>
<segment>
<pinref part="T7_M0" gate="A" pin="VCC"/>
<wire x1="939.8" y1="248.92" x2="929.64" y2="248.92" width="0.1524" layer="91"/>
<pinref part="P+27" gate="VCC" pin="VCC"/>
<wire x1="929.64" y1="248.92" x2="916.94" y2="248.92" width="0.1524" layer="91"/>
<wire x1="916.94" y1="248.92" x2="916.94" y2="254" width="0.1524" layer="91"/>
<pinref part="C26" gate="A" pin="11"/>
<wire x1="929.64" y1="248.92" x2="929.64" y2="254" width="0.1524" layer="91"/>
<junction x="929.64" y="248.92"/>
</segment>
<segment>
<pinref part="T7_M2" gate="A" pin="VCC"/>
<wire x1="985.52" y1="287.02" x2="975.36" y2="287.02" width="0.1524" layer="91"/>
<pinref part="P+28" gate="VCC" pin="VCC"/>
<wire x1="975.36" y1="287.02" x2="962.66" y2="287.02" width="0.1524" layer="91"/>
<wire x1="962.66" y1="287.02" x2="962.66" y2="292.1" width="0.1524" layer="91"/>
<pinref part="C27" gate="A" pin="11"/>
<wire x1="975.36" y1="287.02" x2="975.36" y2="292.1" width="0.1524" layer="91"/>
<junction x="975.36" y="287.02"/>
</segment>
<segment>
<pinref part="T7_M1" gate="A" pin="VCC"/>
<wire x1="1049.02" y1="248.92" x2="1038.86" y2="248.92" width="0.1524" layer="91"/>
<pinref part="P+29" gate="VCC" pin="VCC"/>
<wire x1="1038.86" y1="248.92" x2="1026.16" y2="248.92" width="0.1524" layer="91"/>
<wire x1="1026.16" y1="248.92" x2="1026.16" y2="254" width="0.1524" layer="91"/>
<pinref part="C28" gate="A" pin="11"/>
<wire x1="1038.86" y1="248.92" x2="1038.86" y2="254" width="0.1524" layer="91"/>
<junction x="1038.86" y="248.92"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="MAG_MUX" gate="A" pin="GND"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="726.44" y1="129.54" x2="708.66" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="1038.86" y1="160.02" x2="1005.84" y2="160.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="VEE"/>
<wire x1="878.84" y1="73.66" x2="873.76" y2="73.66" width="0.1524" layer="91"/>
<wire x1="873.76" y1="73.66" x2="873.76" y2="71.12" width="0.1524" layer="91"/>
<pinref part="TILE_MAG2" gate="A" pin="GND"/>
<wire x1="873.76" y1="71.12" x2="878.84" y2="71.12" width="0.1524" layer="91"/>
<wire x1="873.76" y1="73.66" x2="873.76" y2="76.2" width="0.1524" layer="91"/>
<junction x="873.76" y="73.66"/>
<pinref part="TILE_MAG2" gate="A" pin="!E"/>
<wire x1="873.76" y1="76.2" x2="878.84" y2="76.2" width="0.1524" layer="91"/>
<wire x1="873.76" y1="73.66" x2="866.14" y2="73.66" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="!E"/>
<wire x1="698.5" y1="76.2" x2="693.42" y2="76.2" width="0.1524" layer="91"/>
<wire x1="693.42" y1="76.2" x2="693.42" y2="73.66" width="0.1524" layer="91"/>
<pinref part="TILE_MAG1" gate="A" pin="GND"/>
<wire x1="693.42" y1="73.66" x2="693.42" y2="71.12" width="0.1524" layer="91"/>
<wire x1="693.42" y1="71.12" x2="698.5" y2="71.12" width="0.1524" layer="91"/>
<pinref part="TILE_MAG1" gate="A" pin="VEE"/>
<wire x1="693.42" y1="73.66" x2="698.5" y2="73.66" width="0.1524" layer="91"/>
<junction x="693.42" y="73.66"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="693.42" y1="73.66" x2="683.26" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="!E"/>
<wire x1="533.4" y1="76.2" x2="528.32" y2="76.2" width="0.1524" layer="91"/>
<wire x1="528.32" y1="76.2" x2="528.32" y2="73.66" width="0.1524" layer="91"/>
<pinref part="TILE_MAG0" gate="A" pin="GND"/>
<wire x1="528.32" y1="73.66" x2="528.32" y2="71.12" width="0.1524" layer="91"/>
<wire x1="528.32" y1="71.12" x2="533.4" y2="71.12" width="0.1524" layer="91"/>
<pinref part="TILE_MAG0" gate="A" pin="VEE"/>
<wire x1="533.4" y1="73.66" x2="528.32" y2="73.66" width="0.1524" layer="91"/>
<junction x="528.32" y="73.66"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="528.32" y1="73.66" x2="518.16" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="A" pin="22"/>
<wire x1="982.98" y1="109.22" x2="982.98" y2="111.76" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="982.98" y1="111.76" x2="972.82" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="A" pin="22"/>
<wire x1="637.54" y1="104.14" x2="627.38" y2="104.14" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C2" gate="A" pin="22"/>
<wire x1="802.64" y1="101.6" x2="802.64" y2="109.22" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="802.64" y1="109.22" x2="797.56" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4" gate="A" pin="22"/>
<wire x1="779.78" y1="152.4" x2="779.78" y2="154.94" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="779.78" y1="154.94" x2="774.7" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="C5" gate="A" pin="22"/>
<wire x1="302.26" y1="426.72" x2="309.88" y2="426.72" width="0.1524" layer="91"/>
<wire x1="309.88" y1="426.72" x2="309.88" y2="421.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T0_M0" gate="A" pin="GND"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="355.6" y1="408.94" x2="373.38" y2="408.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND12" gate="1" pin="GND"/>
<pinref part="C6" gate="A" pin="22"/>
<wire x1="347.98" y1="464.82" x2="355.6" y2="464.82" width="0.1524" layer="91"/>
<wire x1="355.6" y1="464.82" x2="355.6" y2="459.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T0_M2" gate="A" pin="GND"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="401.32" y1="447.04" x2="411.48" y2="447.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="C7" gate="A" pin="22"/>
<wire x1="411.48" y1="426.72" x2="419.1" y2="426.72" width="0.1524" layer="91"/>
<wire x1="419.1" y1="426.72" x2="419.1" y2="421.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T0_M1" gate="A" pin="GND"/>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="464.82" y1="408.94" x2="482.6" y2="408.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND16" gate="1" pin="GND"/>
<pinref part="C8" gate="A" pin="22"/>
<wire x1="510.54" y1="421.64" x2="518.16" y2="421.64" width="0.1524" layer="91"/>
<wire x1="518.16" y1="421.64" x2="518.16" y2="416.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T1_M0" gate="A" pin="GND"/>
<pinref part="GND17" gate="1" pin="GND"/>
<wire x1="563.88" y1="403.86" x2="581.66" y2="403.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND18" gate="1" pin="GND"/>
<pinref part="C9" gate="A" pin="22"/>
<wire x1="556.26" y1="459.74" x2="563.88" y2="459.74" width="0.1524" layer="91"/>
<wire x1="563.88" y1="459.74" x2="563.88" y2="454.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T1_M2" gate="A" pin="GND"/>
<pinref part="GND19" gate="1" pin="GND"/>
<wire x1="609.6" y1="441.96" x2="619.76" y2="441.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND20" gate="1" pin="GND"/>
<pinref part="C10" gate="A" pin="22"/>
<wire x1="619.76" y1="421.64" x2="627.38" y2="421.64" width="0.1524" layer="91"/>
<wire x1="627.38" y1="421.64" x2="627.38" y2="416.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T1_M1" gate="A" pin="GND"/>
<pinref part="GND21" gate="1" pin="GND"/>
<wire x1="673.1" y1="403.86" x2="690.88" y2="403.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND22" gate="1" pin="GND"/>
<pinref part="C11" gate="A" pin="22"/>
<wire x1="713.74" y1="421.64" x2="721.36" y2="421.64" width="0.1524" layer="91"/>
<wire x1="721.36" y1="421.64" x2="721.36" y2="416.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T2_M0" gate="A" pin="GND"/>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="767.08" y1="403.86" x2="784.86" y2="403.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND24" gate="1" pin="GND"/>
<pinref part="C12" gate="A" pin="22"/>
<wire x1="759.46" y1="459.74" x2="767.08" y2="459.74" width="0.1524" layer="91"/>
<wire x1="767.08" y1="459.74" x2="767.08" y2="454.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T2_M2" gate="A" pin="GND"/>
<pinref part="GND25" gate="1" pin="GND"/>
<wire x1="812.8" y1="441.96" x2="822.96" y2="441.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND26" gate="1" pin="GND"/>
<pinref part="C13" gate="A" pin="22"/>
<wire x1="822.96" y1="421.64" x2="830.58" y2="421.64" width="0.1524" layer="91"/>
<wire x1="830.58" y1="421.64" x2="830.58" y2="416.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T2_M1" gate="A" pin="GND"/>
<pinref part="GND27" gate="1" pin="GND"/>
<wire x1="876.3" y1="403.86" x2="894.08" y2="403.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND28" gate="1" pin="GND"/>
<pinref part="C14" gate="A" pin="22"/>
<wire x1="922.02" y1="416.56" x2="929.64" y2="416.56" width="0.1524" layer="91"/>
<wire x1="929.64" y1="416.56" x2="929.64" y2="411.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T3_M0" gate="A" pin="GND"/>
<pinref part="GND29" gate="1" pin="GND"/>
<wire x1="975.36" y1="398.78" x2="993.14" y2="398.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND30" gate="1" pin="GND"/>
<pinref part="C15" gate="A" pin="22"/>
<wire x1="967.74" y1="454.66" x2="975.36" y2="454.66" width="0.1524" layer="91"/>
<wire x1="975.36" y1="454.66" x2="975.36" y2="449.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T3_M2" gate="A" pin="GND"/>
<pinref part="GND31" gate="1" pin="GND"/>
<wire x1="1021.08" y1="436.88" x2="1031.24" y2="436.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND32" gate="1" pin="GND"/>
<pinref part="C16" gate="A" pin="22"/>
<wire x1="1031.24" y1="416.56" x2="1038.86" y2="416.56" width="0.1524" layer="91"/>
<wire x1="1038.86" y1="416.56" x2="1038.86" y2="411.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T3_M1" gate="A" pin="GND"/>
<pinref part="GND33" gate="1" pin="GND"/>
<wire x1="1084.58" y1="398.78" x2="1102.36" y2="398.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND34" gate="1" pin="GND"/>
<pinref part="C17" gate="A" pin="22"/>
<wire x1="302.26" y1="276.86" x2="309.88" y2="276.86" width="0.1524" layer="91"/>
<wire x1="309.88" y1="276.86" x2="309.88" y2="271.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T4_M0" gate="A" pin="GND"/>
<pinref part="GND35" gate="1" pin="GND"/>
<wire x1="355.6" y1="259.08" x2="373.38" y2="259.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND36" gate="1" pin="GND"/>
<pinref part="C18" gate="A" pin="22"/>
<wire x1="347.98" y1="314.96" x2="355.6" y2="314.96" width="0.1524" layer="91"/>
<wire x1="355.6" y1="314.96" x2="355.6" y2="309.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T4_M2" gate="A" pin="GND"/>
<pinref part="GND37" gate="1" pin="GND"/>
<wire x1="401.32" y1="297.18" x2="411.48" y2="297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND38" gate="1" pin="GND"/>
<pinref part="C19" gate="A" pin="22"/>
<wire x1="411.48" y1="276.86" x2="419.1" y2="276.86" width="0.1524" layer="91"/>
<wire x1="419.1" y1="276.86" x2="419.1" y2="271.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T4_M1" gate="A" pin="GND"/>
<pinref part="GND39" gate="1" pin="GND"/>
<wire x1="464.82" y1="259.08" x2="482.6" y2="259.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND40" gate="1" pin="GND"/>
<pinref part="C20" gate="A" pin="22"/>
<wire x1="510.54" y1="271.78" x2="518.16" y2="271.78" width="0.1524" layer="91"/>
<wire x1="518.16" y1="271.78" x2="518.16" y2="266.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T5_M0" gate="A" pin="GND"/>
<pinref part="GND41" gate="1" pin="GND"/>
<wire x1="563.88" y1="254" x2="581.66" y2="254" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND42" gate="1" pin="GND"/>
<pinref part="C21" gate="A" pin="22"/>
<wire x1="556.26" y1="309.88" x2="563.88" y2="309.88" width="0.1524" layer="91"/>
<wire x1="563.88" y1="309.88" x2="563.88" y2="304.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T5_M2" gate="A" pin="GND"/>
<pinref part="GND43" gate="1" pin="GND"/>
<wire x1="609.6" y1="292.1" x2="619.76" y2="292.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND44" gate="1" pin="GND"/>
<pinref part="C22" gate="A" pin="22"/>
<wire x1="619.76" y1="271.78" x2="627.38" y2="271.78" width="0.1524" layer="91"/>
<wire x1="627.38" y1="271.78" x2="627.38" y2="266.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T5_M1" gate="A" pin="GND"/>
<pinref part="GND45" gate="1" pin="GND"/>
<wire x1="673.1" y1="254" x2="690.88" y2="254" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND46" gate="1" pin="GND"/>
<pinref part="C23" gate="A" pin="22"/>
<wire x1="713.74" y1="271.78" x2="721.36" y2="271.78" width="0.1524" layer="91"/>
<wire x1="721.36" y1="271.78" x2="721.36" y2="266.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T6_M0" gate="A" pin="GND"/>
<pinref part="GND47" gate="1" pin="GND"/>
<wire x1="767.08" y1="254" x2="784.86" y2="254" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND48" gate="1" pin="GND"/>
<pinref part="C24" gate="A" pin="22"/>
<wire x1="759.46" y1="309.88" x2="767.08" y2="309.88" width="0.1524" layer="91"/>
<wire x1="767.08" y1="309.88" x2="767.08" y2="304.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T6_M2" gate="A" pin="GND"/>
<pinref part="GND49" gate="1" pin="GND"/>
<wire x1="812.8" y1="292.1" x2="822.96" y2="292.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND50" gate="1" pin="GND"/>
<pinref part="C25" gate="A" pin="22"/>
<wire x1="822.96" y1="271.78" x2="830.58" y2="271.78" width="0.1524" layer="91"/>
<wire x1="830.58" y1="271.78" x2="830.58" y2="266.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T6_M1" gate="A" pin="GND"/>
<pinref part="GND51" gate="1" pin="GND"/>
<wire x1="876.3" y1="254" x2="894.08" y2="254" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND52" gate="1" pin="GND"/>
<pinref part="C26" gate="A" pin="22"/>
<wire x1="922.02" y1="266.7" x2="929.64" y2="266.7" width="0.1524" layer="91"/>
<wire x1="929.64" y1="266.7" x2="929.64" y2="261.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T7_M0" gate="A" pin="GND"/>
<pinref part="GND53" gate="1" pin="GND"/>
<wire x1="975.36" y1="248.92" x2="993.14" y2="248.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND54" gate="1" pin="GND"/>
<pinref part="C27" gate="A" pin="22"/>
<wire x1="967.74" y1="304.8" x2="975.36" y2="304.8" width="0.1524" layer="91"/>
<wire x1="975.36" y1="304.8" x2="975.36" y2="299.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T7_M2" gate="A" pin="GND"/>
<pinref part="GND55" gate="1" pin="GND"/>
<wire x1="1021.08" y1="287.02" x2="1031.24" y2="287.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND56" gate="1" pin="GND"/>
<pinref part="C28" gate="A" pin="22"/>
<wire x1="1031.24" y1="266.7" x2="1038.86" y2="266.7" width="0.1524" layer="91"/>
<wire x1="1038.86" y1="266.7" x2="1038.86" y2="261.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T7_M1" gate="A" pin="GND"/>
<pinref part="GND57" gate="1" pin="GND"/>
<wire x1="1084.58" y1="248.92" x2="1102.36" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="T0_M0" class="0">
<segment>
<pinref part="T0_M0" gate="A" pin="OUT"/>
<wire x1="355.6" y1="406.4" x2="360.68" y2="406.4" width="0.1524" layer="91"/>
<label x="360.68" y="403.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA0"/>
<wire x1="635" y1="81.28" x2="640.08" y2="81.28" width="0.1524" layer="91"/>
<label x="640.08" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="T0_M2" class="0">
<segment>
<pinref part="T0_M2" gate="A" pin="OUT"/>
<wire x1="401.32" y1="444.5" x2="406.4" y2="444.5" width="0.1524" layer="91"/>
<label x="406.4" y="441.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA0"/>
<wire x1="980.44" y1="81.28" x2="985.52" y2="81.28" width="0.1524" layer="91"/>
<label x="985.52" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="T0_M1" class="0">
<segment>
<pinref part="T0_M1" gate="A" pin="OUT"/>
<wire x1="464.82" y1="406.4" x2="469.9" y2="406.4" width="0.1524" layer="91"/>
<label x="469.9" y="403.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA0"/>
<wire x1="800.1" y1="81.28" x2="805.18" y2="81.28" width="0.1524" layer="91"/>
<label x="805.18" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="T1_M0" class="0">
<segment>
<pinref part="T1_M0" gate="A" pin="OUT"/>
<wire x1="563.88" y1="401.32" x2="568.96" y2="401.32" width="0.1524" layer="91"/>
<label x="568.96" y="398.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA1"/>
<wire x1="635" y1="83.82" x2="640.08" y2="83.82" width="0.1524" layer="91"/>
<label x="640.08" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="T1_M2" class="0">
<segment>
<pinref part="T1_M2" gate="A" pin="OUT"/>
<wire x1="609.6" y1="439.42" x2="614.68" y2="439.42" width="0.1524" layer="91"/>
<label x="614.68" y="436.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA1"/>
<wire x1="980.44" y1="83.82" x2="985.52" y2="83.82" width="0.1524" layer="91"/>
<label x="985.52" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="T1_M1" class="0">
<segment>
<pinref part="T1_M1" gate="A" pin="OUT"/>
<wire x1="673.1" y1="401.32" x2="678.18" y2="401.32" width="0.1524" layer="91"/>
<label x="678.18" y="398.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA1"/>
<wire x1="800.1" y1="83.82" x2="805.18" y2="83.82" width="0.1524" layer="91"/>
<label x="805.18" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="T2_M0" class="0">
<segment>
<pinref part="T2_M0" gate="A" pin="OUT"/>
<wire x1="767.08" y1="401.32" x2="772.16" y2="401.32" width="0.1524" layer="91"/>
<label x="772.16" y="398.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA2"/>
<wire x1="635" y1="86.36" x2="640.08" y2="86.36" width="0.1524" layer="91"/>
<label x="640.08" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="T2_M2" class="0">
<segment>
<pinref part="T2_M2" gate="A" pin="OUT"/>
<wire x1="812.8" y1="439.42" x2="817.88" y2="439.42" width="0.1524" layer="91"/>
<label x="817.88" y="436.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA2"/>
<wire x1="980.44" y1="86.36" x2="985.52" y2="86.36" width="0.1524" layer="91"/>
<label x="985.52" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="T2_M1" class="0">
<segment>
<pinref part="T2_M1" gate="A" pin="OUT"/>
<wire x1="876.3" y1="401.32" x2="881.38" y2="401.32" width="0.1524" layer="91"/>
<label x="881.38" y="398.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA2"/>
<wire x1="800.1" y1="86.36" x2="805.18" y2="86.36" width="0.1524" layer="91"/>
<label x="805.18" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="T3_M0" class="0">
<segment>
<pinref part="T3_M0" gate="A" pin="OUT"/>
<wire x1="975.36" y1="396.24" x2="980.44" y2="396.24" width="0.1524" layer="91"/>
<label x="980.44" y="393.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA3"/>
<wire x1="635" y1="78.74" x2="640.08" y2="78.74" width="0.1524" layer="91"/>
<label x="640.08" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="T3_M2" class="0">
<segment>
<pinref part="T3_M2" gate="A" pin="OUT"/>
<wire x1="1021.08" y1="434.34" x2="1026.16" y2="434.34" width="0.1524" layer="91"/>
<label x="1026.16" y="431.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA3"/>
<wire x1="980.44" y1="78.74" x2="985.52" y2="78.74" width="0.1524" layer="91"/>
<label x="985.52" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="T3_M1" class="0">
<segment>
<pinref part="T3_M1" gate="A" pin="OUT"/>
<wire x1="1084.58" y1="396.24" x2="1089.66" y2="396.24" width="0.1524" layer="91"/>
<label x="1089.66" y="393.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA3"/>
<wire x1="800.1" y1="78.74" x2="805.18" y2="78.74" width="0.1524" layer="91"/>
<label x="805.18" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="T4_M0" class="0">
<segment>
<pinref part="T4_M0" gate="A" pin="OUT"/>
<wire x1="355.6" y1="256.54" x2="360.68" y2="256.54" width="0.1524" layer="91"/>
<label x="360.68" y="254" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA4"/>
<wire x1="533.4" y1="88.9" x2="528.32" y2="88.9" width="0.1524" layer="91"/>
<label x="520.7" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="T4_M2" class="0">
<segment>
<pinref part="T4_M2" gate="A" pin="OUT"/>
<wire x1="401.32" y1="294.64" x2="406.4" y2="294.64" width="0.1524" layer="91"/>
<label x="406.4" y="292.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA4"/>
<wire x1="878.84" y1="88.9" x2="873.76" y2="88.9" width="0.1524" layer="91"/>
<label x="866.14" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="T4_M1" class="0">
<segment>
<pinref part="T4_M1" gate="A" pin="OUT"/>
<wire x1="464.82" y1="256.54" x2="469.9" y2="256.54" width="0.1524" layer="91"/>
<label x="469.9" y="254" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA4"/>
<wire x1="698.5" y1="88.9" x2="693.42" y2="88.9" width="0.1524" layer="91"/>
<label x="685.8" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="T5_M0" class="0">
<segment>
<pinref part="T5_M0" gate="A" pin="OUT"/>
<wire x1="563.88" y1="251.46" x2="568.96" y2="251.46" width="0.1524" layer="91"/>
<label x="568.96" y="248.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA5"/>
<wire x1="533.4" y1="78.74" x2="528.32" y2="78.74" width="0.1524" layer="91"/>
<label x="520.7" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="T5_M2" class="0">
<segment>
<pinref part="T5_M2" gate="A" pin="OUT"/>
<wire x1="609.6" y1="289.56" x2="614.68" y2="289.56" width="0.1524" layer="91"/>
<label x="614.68" y="287.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA5"/>
<wire x1="878.84" y1="78.74" x2="873.76" y2="78.74" width="0.1524" layer="91"/>
<label x="866.14" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="T5_M1" class="0">
<segment>
<pinref part="T5_M1" gate="A" pin="OUT"/>
<wire x1="673.1" y1="251.46" x2="678.18" y2="251.46" width="0.1524" layer="91"/>
<label x="678.18" y="248.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA5"/>
<wire x1="698.5" y1="78.74" x2="693.42" y2="78.74" width="0.1524" layer="91"/>
<label x="685.8" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="T6_M0" class="0">
<segment>
<pinref part="T6_M0" gate="A" pin="OUT"/>
<wire x1="767.08" y1="251.46" x2="772.16" y2="251.46" width="0.1524" layer="91"/>
<label x="772.16" y="248.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA6"/>
<wire x1="533.4" y1="86.36" x2="528.32" y2="86.36" width="0.1524" layer="91"/>
<label x="520.7" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="T6_M2" class="0">
<segment>
<pinref part="T6_M2" gate="A" pin="OUT"/>
<wire x1="812.8" y1="289.56" x2="817.88" y2="289.56" width="0.1524" layer="91"/>
<label x="817.88" y="287.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA6"/>
<wire x1="878.84" y1="86.36" x2="873.76" y2="86.36" width="0.1524" layer="91"/>
<label x="866.14" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="T6_M1" class="0">
<segment>
<pinref part="T6_M1" gate="A" pin="OUT"/>
<wire x1="876.3" y1="251.46" x2="881.38" y2="251.46" width="0.1524" layer="91"/>
<label x="881.38" y="248.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA6"/>
<wire x1="698.5" y1="86.36" x2="693.42" y2="86.36" width="0.1524" layer="91"/>
<label x="685.8" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="T7_M0" class="0">
<segment>
<pinref part="T7_M0" gate="A" pin="OUT"/>
<wire x1="975.36" y1="246.38" x2="980.44" y2="246.38" width="0.1524" layer="91"/>
<label x="980.44" y="243.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG0" gate="A" pin="CHANNELIN/OUTA7"/>
<wire x1="533.4" y1="81.28" x2="528.32" y2="81.28" width="0.1524" layer="91"/>
<label x="520.7" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="T7_M2" class="0">
<segment>
<pinref part="T7_M2" gate="A" pin="OUT"/>
<wire x1="1021.08" y1="284.48" x2="1026.16" y2="284.48" width="0.1524" layer="91"/>
<label x="1026.16" y="281.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG2" gate="A" pin="CHANNELIN/OUTA7"/>
<wire x1="878.84" y1="81.28" x2="873.76" y2="81.28" width="0.1524" layer="91"/>
<label x="866.14" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="T7_M1" class="0">
<segment>
<pinref part="T7_M1" gate="A" pin="OUT"/>
<wire x1="1084.58" y1="246.38" x2="1089.66" y2="246.38" width="0.1524" layer="91"/>
<label x="1089.66" y="243.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TILE_MAG1" gate="A" pin="CHANNELIN/OUTA7"/>
<wire x1="698.5" y1="81.28" x2="693.42" y2="81.28" width="0.1524" layer="91"/>
<label x="685.8" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
