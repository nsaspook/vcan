<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
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
<library name="PIC32MK1024MCF100-I_PT">
<description>&lt;Microchip Technology MCU32, 120MHz, 4 I2C, 6 I2S, USB FS, CAN 2.0B, 12-bit ADC, Motor Control&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="QFP40P1400X1400X120-100N">
<description>&lt;b&gt;100-(PT) Quad Flatpack&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-6.738" y="4.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="2" x="-6.738" y="4.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="3" x="-6.738" y="4" dx="1.475" dy="0.2" layer="1"/>
<smd name="4" x="-6.738" y="3.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="5" x="-6.738" y="3.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="6" x="-6.738" y="2.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="7" x="-6.738" y="2.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="8" x="-6.738" y="2" dx="1.475" dy="0.2" layer="1"/>
<smd name="9" x="-6.738" y="1.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="10" x="-6.738" y="1.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="11" x="-6.738" y="0.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="12" x="-6.738" y="0.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="13" x="-6.738" y="0" dx="1.475" dy="0.2" layer="1"/>
<smd name="14" x="-6.738" y="-0.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="15" x="-6.738" y="-0.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="16" x="-6.738" y="-1.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="17" x="-6.738" y="-1.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="18" x="-6.738" y="-2" dx="1.475" dy="0.2" layer="1"/>
<smd name="19" x="-6.738" y="-2.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="20" x="-6.738" y="-2.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="21" x="-6.738" y="-3.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="22" x="-6.738" y="-3.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="23" x="-6.738" y="-4" dx="1.475" dy="0.2" layer="1"/>
<smd name="24" x="-6.738" y="-4.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="25" x="-6.738" y="-4.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="26" x="-4.8" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="27" x="-4.4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="28" x="-4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="29" x="-3.6" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="30" x="-3.2" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="31" x="-2.8" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="32" x="-2.4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="33" x="-2" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="34" x="-1.6" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="35" x="-1.2" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="36" x="-0.8" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="37" x="-0.4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="38" x="0" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="39" x="0.4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="40" x="0.8" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="41" x="1.2" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="42" x="1.6" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="43" x="2" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="44" x="2.4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="45" x="2.8" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="46" x="3.2" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="47" x="3.6" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="48" x="4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="49" x="4.4" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="50" x="4.8" y="-6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="51" x="6.738" y="-4.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="52" x="6.738" y="-4.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="53" x="6.738" y="-4" dx="1.475" dy="0.2" layer="1"/>
<smd name="54" x="6.738" y="-3.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="55" x="6.738" y="-3.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="56" x="6.738" y="-2.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="57" x="6.738" y="-2.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="58" x="6.738" y="-2" dx="1.475" dy="0.2" layer="1"/>
<smd name="59" x="6.738" y="-1.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="60" x="6.738" y="-1.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="61" x="6.738" y="-0.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="62" x="6.738" y="-0.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="63" x="6.738" y="0" dx="1.475" dy="0.2" layer="1"/>
<smd name="64" x="6.738" y="0.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="65" x="6.738" y="0.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="66" x="6.738" y="1.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="67" x="6.738" y="1.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="68" x="6.738" y="2" dx="1.475" dy="0.2" layer="1"/>
<smd name="69" x="6.738" y="2.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="70" x="6.738" y="2.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="71" x="6.738" y="3.2" dx="1.475" dy="0.2" layer="1"/>
<smd name="72" x="6.738" y="3.6" dx="1.475" dy="0.2" layer="1"/>
<smd name="73" x="6.738" y="4" dx="1.475" dy="0.2" layer="1"/>
<smd name="74" x="6.738" y="4.4" dx="1.475" dy="0.2" layer="1"/>
<smd name="75" x="6.738" y="4.8" dx="1.475" dy="0.2" layer="1"/>
<smd name="76" x="4.8" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="77" x="4.4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="78" x="4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="79" x="3.6" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="80" x="3.2" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="81" x="2.8" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="82" x="2.4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="83" x="2" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="84" x="1.6" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="85" x="1.2" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="86" x="0.8" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="87" x="0.4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="88" x="0" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="89" x="-0.4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="90" x="-0.8" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="91" x="-1.2" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="92" x="-1.6" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="93" x="-2" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="94" x="-2.4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="95" x="-2.8" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="96" x="-3.2" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="97" x="-3.6" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="98" x="-4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="99" x="-4.4" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<smd name="100" x="-4.8" y="6.738" dx="1.475" dy="0.2" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-7.725" y1="7.725" x2="7.725" y2="7.725" width="0.05" layer="51"/>
<wire x1="7.725" y1="7.725" x2="7.725" y2="-7.725" width="0.05" layer="51"/>
<wire x1="7.725" y1="-7.725" x2="-7.725" y2="-7.725" width="0.05" layer="51"/>
<wire x1="-7.725" y1="-7.725" x2="-7.725" y2="7.725" width="0.05" layer="51"/>
<wire x1="-6" y1="6" x2="6" y2="6" width="0.1" layer="51"/>
<wire x1="6" y1="6" x2="6" y2="-6" width="0.1" layer="51"/>
<wire x1="6" y1="-6" x2="-6" y2="-6" width="0.1" layer="51"/>
<wire x1="-6" y1="-6" x2="-6" y2="6" width="0.1" layer="51"/>
<wire x1="-6" y1="5.6" x2="-5.6" y2="6" width="0.1" layer="51"/>
<wire x1="-5.65" y1="5.65" x2="5.65" y2="5.65" width="0.2" layer="21"/>
<wire x1="5.65" y1="5.65" x2="5.65" y2="-5.65" width="0.2" layer="21"/>
<wire x1="5.65" y1="-5.65" x2="-5.65" y2="-5.65" width="0.2" layer="21"/>
<wire x1="-5.65" y1="-5.65" x2="-5.65" y2="5.65" width="0.2" layer="21"/>
<circle x="-7.275" y="5.4" radius="0.1" width="0.2" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="PIC32MK1024MCF100-I_PT">
<wire x1="5.08" y1="53.34" x2="142.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="142.24" y1="-129.54" x2="142.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="142.24" y1="-129.54" x2="5.08" y2="-129.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="53.34" x2="5.08" y2="-129.54" width="0.254" layer="94"/>
<text x="143.51" y="58.42" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="143.51" y="55.88" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="AN23/CVD23/PMPA23/RG15" x="0" y="0" length="middle"/>
<pin name="VDD_1" x="0" y="-2.54" length="middle"/>
<pin name="TCK/RPA7/PWM10H/PWM4L/PMPD5/RA7" x="0" y="-5.08" length="middle"/>
<pin name="RPB14/PWM1H/VBUSON1/PMPD6/RB14" x="0" y="-7.62" length="middle"/>
<pin name="RPB15/PWM7H/PWM1L/PMPD7/RB15" x="0" y="-10.16" length="middle"/>
<pin name="PWM11H/PWM5L/RD1" x="0" y="-12.7" length="middle"/>
<pin name="PWM5H/RD2" x="0" y="-15.24" length="middle"/>
<pin name="RPD3/PWM12H/PWM6L/RD3" x="0" y="-17.78" length="middle"/>
<pin name="RPD4/PWM6H/RD4" x="0" y="-20.32" length="middle"/>
<pin name="AN19/CVD19/RPG6/VBUSON2/PMPA5/RG6" x="0" y="-22.86" length="middle"/>
<pin name="AN18/CVD18/RPG7/PMPA4/RG7(5)" x="0" y="-25.4" length="middle"/>
<pin name="AN17/CVD17/RPG8/PMPA3/RG8(6)" x="0" y="-27.94" length="middle"/>
<pin name="!MCLR" x="0" y="-30.48" length="middle"/>
<pin name="AN16/CVD16/RPG9/PMPA2/RG9" x="0" y="-33.02" length="middle"/>
<pin name="VSS_1" x="0" y="-35.56" length="middle"/>
<pin name="VDD_2" x="0" y="-38.1" length="middle"/>
<pin name="AN22/CVD22/RG10" x="0" y="-40.64" length="middle"/>
<pin name="AN21/CVD21/RE8" x="0" y="-43.18" length="middle"/>
<pin name="AN20/CVD20/RE9" x="0" y="-45.72" length="middle"/>
<pin name="AN10/CVD10/RPA12/USBOEN2/RA12" x="0" y="-48.26" length="middle"/>
<pin name="AN9/CVD9/RPA11/USBOEN1/RA11" x="0" y="-50.8" length="middle"/>
<pin name="OA2OUT/AN0/C2IN4-/C4IN3-/RPA0/RA0" x="0" y="-53.34" length="middle"/>
<pin name="OA2IN+/AN1/C2IN1+/RPA1/RA1" x="0" y="-55.88" length="middle"/>
<pin name="PGED3/OA2IN-/AN2/C2IN1-/RPB0/CTED2/RB0" x="0" y="-58.42" length="middle"/>
<pin name="PGEC3/OA1OUT/AN3/C1IN4-/C4IN2-/RPB1/CTED1/RB1" x="0" y="-60.96" length="middle"/>
<pin name="PGEC1/OA1IN+/AN4/C1IN1+/C1IN3-/C2IN3-/RPB2/RB2" x="43.18" y="-134.62" length="middle" rot="R90"/>
<pin name="PGED1/OA1IN-/AN5/CTCMP/C1IN1-/RTCC/RPB3/RB3" x="45.72" y="-134.62" length="middle" rot="R90"/>
<pin name="VREF-/AN33/CVD33/PMPA7/RF9" x="48.26" y="-134.62" length="middle" rot="R90"/>
<pin name="VREF+/AN34/CVD34/PMPA6/RF10" x="50.8" y="-134.62" length="middle" rot="R90"/>
<pin name="AVDD" x="53.34" y="-134.62" length="middle" rot="R90"/>
<pin name="AVSS" x="55.88" y="-134.62" length="middle" rot="R90"/>
<pin name="OA3OUT/AN6/CVD6/C3IN4-/C4IN1+/C4IN4-/RPC0/RC0" x="58.42" y="-134.62" length="middle" rot="R90"/>
<pin name="OA3IN-/AN7/CVD7/C3IN1-/C4IN1-/RPC1/RC1" x="60.96" y="-134.62" length="middle" rot="R90"/>
<pin name="OA3IN+/AN8/CVD8/C3IN1+/C3IN3-/RPC2/FLT3/PMPA13/RC2" x="63.5" y="-134.62" length="middle" rot="R90"/>
<pin name="AN11/CVD11/C1IN2-/FLT4/PMPA12/RC11" x="66.04" y="-134.62" length="middle" rot="R90"/>
<pin name="VSS_2" x="68.58" y="-134.62" length="middle" rot="R90"/>
<pin name="VDD_3" x="71.12" y="-134.62" length="middle" rot="R90"/>
<pin name="AN35/CVD35/RG11" x="73.66" y="-134.62" length="middle" rot="R90"/>
<pin name="AN36/CVD36/RF13" x="76.2" y="-134.62" length="middle" rot="R90"/>
<pin name="AN37/CVD37/RF12" x="78.74" y="-134.62" length="middle" rot="R90"/>
<pin name="AN12/CVD12/C2IN2-/C5IN2-/FLT5/PMPA11/RE12(6)" x="81.28" y="-134.62" length="middle" rot="R90"/>
<pin name="AN13/CVD13/C3IN2-/FLT6/PMPA10/RE13(5)" x="83.82" y="-134.62" length="middle" rot="R90"/>
<pin name="AN14/CVD14/RPE14/FLT7/PMPA1/PSPA1/RE14" x="86.36" y="-134.62" length="middle" rot="R90"/>
<pin name="AN15/CVD15/RPE15/FLT8/PMPA0/PSPA0/RE15" x="88.9" y="-134.62" length="middle" rot="R90"/>
<pin name="VSS_3" x="91.44" y="-134.62" length="middle" rot="R90"/>
<pin name="VDD_4" x="93.98" y="-134.62" length="middle" rot="R90"/>
<pin name="AN38/CVD38/RD14" x="96.52" y="-134.62" length="middle" rot="R90"/>
<pin name="AN39/CVD39/RD15" x="99.06" y="-134.62" length="middle" rot="R90"/>
<pin name="TDI/DAC3/AN26/CVD26/RPA8/PMPA9/RA8(6)" x="101.6" y="-134.62" length="middle" rot="R90"/>
<pin name="FLT15/RPB4/PMPA8/RB4(5)" x="104.14" y="-134.62" length="middle" rot="R90"/>
<pin name="VSS_5" x="147.32" y="0" length="middle" rot="R180"/>
<pin name="SOSCO/RPB8(4)/RB8(4)" x="147.32" y="-2.54" length="middle" rot="R180"/>
<pin name="SOSCI/RPC13(4)/RC13(4)" x="147.32" y="-5.08" length="middle" rot="R180"/>
<pin name="OA5OUT/AN25/CVD25/C5IN4-/RPB7/SCK1/INT0/RB7" x="147.32" y="-7.62" length="middle" rot="R180"/>
<pin name="DAC2/AN48/CVD48/RPC10/PMPA14/PSPCS/RC10" x="147.32" y="-10.16" length="middle" rot="R180"/>
<pin name="PGEC2/RPB6/SCK2/PMPA15/RB6(5)" x="147.32" y="-12.7" length="middle" rot="R180"/>
<pin name="PGED2/RPB5/USBID1/RB5(6)" x="147.32" y="-15.24" length="middle" rot="R180"/>
<pin name="RD8" x="147.32" y="-17.78" length="middle" rot="R180"/>
<pin name="AN47/CVD47/RPA15/RA15" x="147.32" y="-20.32" length="middle" rot="R180"/>
<pin name="AN46/CVD46/RPA14/RA14" x="147.32" y="-22.86" length="middle" rot="R180"/>
<pin name="VSS_4" x="147.32" y="-25.4" length="middle" rot="R180"/>
<pin name="OSCO/CLKO/RPC15/RC15" x="147.32" y="-27.94" length="middle" rot="R180"/>
<pin name="OSCI/CLKI/AN49/CVD49/RPC12/RC12" x="147.32" y="-30.48" length="middle" rot="R180"/>
<pin name="VDD_5" x="147.32" y="-33.02" length="middle" rot="R180"/>
<pin name="AN45/CVD45/RF5" x="147.32" y="-35.56" length="middle" rot="R180"/>
<pin name="D2+" x="147.32" y="-38.1" length="middle" rot="R180"/>
<pin name="D2-" x="147.32" y="-40.64" length="middle" rot="R180"/>
<pin name="VBUS2" x="147.32" y="-43.18" length="middle" rot="R180"/>
<pin name="D1+" x="147.32" y="-45.72" length="middle" rot="R180"/>
<pin name="D1-" x="147.32" y="-48.26" length="middle" rot="R180"/>
<pin name="VUSB3V3" x="147.32" y="-50.8" length="middle" rot="R180"/>
<pin name="VBUS" x="147.32" y="-53.34" length="middle" rot="R180"/>
<pin name="AN41/CVD41/RPE1/RE1" x="147.32" y="-55.88" length="middle" rot="R180"/>
<pin name="AN40/CVD40/RPE0/RE0" x="147.32" y="-58.42" length="middle" rot="R180"/>
<pin name="OA5IN+/DAC1/AN24/CVD24/C5IN1+/C5IN3-/RPA4/T1CK/T1G/_RA4" x="147.32" y="-60.96" length="middle" rot="R180"/>
<pin name="TDO/PWM4H/PMPD4/RA10" x="43.18" y="58.42" length="middle" rot="R270"/>
<pin name="RPB13/PWM8H/PWM2L/CTPLS/PMPD3/RB13" x="45.72" y="58.42" length="middle" rot="R270"/>
<pin name="RPB12/PWM2H/PMPD2/RB12" x="48.26" y="58.42" length="middle" rot="R270"/>
<pin name="TRD0/PMPA22/RG13" x="50.8" y="58.42" length="middle" rot="R270"/>
<pin name="TRD1/RPG12/PMPA21/RG12" x="53.34" y="58.42" length="middle" rot="R270"/>
<pin name="TRD2/PMPA20/RG14" x="55.88" y="58.42" length="middle" rot="R270"/>
<pin name="RPB11/PWM9H/PWM3L/PMPD1/RB11" x="58.42" y="58.42" length="middle" rot="R270"/>
<pin name="RPB10/PWM3H/PMPD0/RB10" x="60.96" y="58.42" length="middle" rot="R270"/>
<pin name="TRD3/PMPA19/RF7" x="63.5" y="58.42" length="middle" rot="R270"/>
<pin name="TRCLK/PMPA18/RF6" x="66.04" y="58.42" length="middle" rot="R270"/>
<pin name="RPG0/PMPD8/RG0" x="68.58" y="58.42" length="middle" rot="R270"/>
<pin name="RPG1/PMPD9/RG1" x="71.12" y="58.42" length="middle" rot="R270"/>
<pin name="RPF1/PWM11L/PMPD10/RF1" x="73.66" y="58.42" length="middle" rot="R270"/>
<pin name="RPF0/PWM11H/PMPD11/RF0" x="76.2" y="58.42" length="middle" rot="R270"/>
<pin name="VDD_6" x="78.74" y="58.42" length="middle" rot="R270"/>
<pin name="VSS_6" x="81.28" y="58.42" length="middle" rot="R270"/>
<pin name="RPC9/PMPD15/RC9" x="83.82" y="58.42" length="middle" rot="R270"/>
<pin name="RPD6/PWM12L/PMPD14/RD6" x="86.36" y="58.42" length="middle" rot="R270"/>
<pin name="RPD5/PWM12H/PMPRD/PSPRD/RD5" x="88.9" y="58.42" length="middle" rot="R270"/>
<pin name="RPC8/PMPWR/PSPWR/RC8" x="91.44" y="58.42" length="middle" rot="R270"/>
<pin name="PMPD13/RD13" x="93.98" y="58.42" length="middle" rot="R270"/>
<pin name="PMPD12/RD12" x="96.52" y="58.42" length="middle" rot="R270"/>
<pin name="RPC7/PMPA17/RC7" x="99.06" y="58.42" length="middle" rot="R270"/>
<pin name="RPC6/USBID2/PMPA16/RC6" x="101.6" y="58.42" length="middle" rot="R270"/>
<pin name="TMS/OA5IN-/AN27/CVD27/C5IN1-/RPB9/RB9" x="104.14" y="58.42" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC32MK1024MCF100-I_PT" prefix="IC">
<description>&lt;b&gt;Microchip Technology MCU32, 120MHz, 4 I2C, 6 I2S, USB FS, CAN 2.0B, 12-bit ADC, Motor Control&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://ww1.microchip.com/downloads/en/DeviceDoc/60001402D.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PIC32MK1024MCF100-I_PT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP40P1400X1400X120-100N">
<connects>
<connect gate="G$1" pin="!MCLR" pad="13"/>
<connect gate="G$1" pin="AN10/CVD10/RPA12/USBOEN2/RA12" pad="20"/>
<connect gate="G$1" pin="AN11/CVD11/C1IN2-/FLT4/PMPA12/RC11" pad="35"/>
<connect gate="G$1" pin="AN12/CVD12/C2IN2-/C5IN2-/FLT5/PMPA11/RE12(6)" pad="41"/>
<connect gate="G$1" pin="AN13/CVD13/C3IN2-/FLT6/PMPA10/RE13(5)" pad="42"/>
<connect gate="G$1" pin="AN14/CVD14/RPE14/FLT7/PMPA1/PSPA1/RE14" pad="43"/>
<connect gate="G$1" pin="AN15/CVD15/RPE15/FLT8/PMPA0/PSPA0/RE15" pad="44"/>
<connect gate="G$1" pin="AN16/CVD16/RPG9/PMPA2/RG9" pad="14"/>
<connect gate="G$1" pin="AN17/CVD17/RPG8/PMPA3/RG8(6)" pad="12"/>
<connect gate="G$1" pin="AN18/CVD18/RPG7/PMPA4/RG7(5)" pad="11"/>
<connect gate="G$1" pin="AN19/CVD19/RPG6/VBUSON2/PMPA5/RG6" pad="10"/>
<connect gate="G$1" pin="AN20/CVD20/RE9" pad="19"/>
<connect gate="G$1" pin="AN21/CVD21/RE8" pad="18"/>
<connect gate="G$1" pin="AN22/CVD22/RG10" pad="17"/>
<connect gate="G$1" pin="AN23/CVD23/PMPA23/RG15" pad="1"/>
<connect gate="G$1" pin="AN35/CVD35/RG11" pad="38"/>
<connect gate="G$1" pin="AN36/CVD36/RF13" pad="39"/>
<connect gate="G$1" pin="AN37/CVD37/RF12" pad="40"/>
<connect gate="G$1" pin="AN38/CVD38/RD14" pad="47"/>
<connect gate="G$1" pin="AN39/CVD39/RD15" pad="48"/>
<connect gate="G$1" pin="AN40/CVD40/RPE0/RE0" pad="52"/>
<connect gate="G$1" pin="AN41/CVD41/RPE1/RE1" pad="53"/>
<connect gate="G$1" pin="AN45/CVD45/RF5" pad="61"/>
<connect gate="G$1" pin="AN46/CVD46/RPA14/RA14" pad="66"/>
<connect gate="G$1" pin="AN47/CVD47/RPA15/RA15" pad="67"/>
<connect gate="G$1" pin="AN9/CVD9/RPA11/USBOEN1/RA11" pad="21"/>
<connect gate="G$1" pin="AVDD" pad="30"/>
<connect gate="G$1" pin="AVSS" pad="31"/>
<connect gate="G$1" pin="D1+" pad="57"/>
<connect gate="G$1" pin="D1-" pad="56"/>
<connect gate="G$1" pin="D2+" pad="60"/>
<connect gate="G$1" pin="D2-" pad="59"/>
<connect gate="G$1" pin="DAC2/AN48/CVD48/RPC10/PMPA14/PSPCS/RC10" pad="71"/>
<connect gate="G$1" pin="FLT15/RPB4/PMPA8/RB4(5)" pad="50"/>
<connect gate="G$1" pin="OA2IN+/AN1/C2IN1+/RPA1/RA1" pad="23"/>
<connect gate="G$1" pin="OA2OUT/AN0/C2IN4-/C4IN3-/RPA0/RA0" pad="22"/>
<connect gate="G$1" pin="OA3IN+/AN8/CVD8/C3IN1+/C3IN3-/RPC2/FLT3/PMPA13/RC2" pad="34"/>
<connect gate="G$1" pin="OA3IN-/AN7/CVD7/C3IN1-/C4IN1-/RPC1/RC1" pad="33"/>
<connect gate="G$1" pin="OA3OUT/AN6/CVD6/C3IN4-/C4IN1+/C4IN4-/RPC0/RC0" pad="32"/>
<connect gate="G$1" pin="OA5IN+/DAC1/AN24/CVD24/C5IN1+/C5IN3-/RPA4/T1CK/T1G/_RA4" pad="51"/>
<connect gate="G$1" pin="OA5OUT/AN25/CVD25/C5IN4-/RPB7/SCK1/INT0/RB7" pad="72"/>
<connect gate="G$1" pin="OSCI/CLKI/AN49/CVD49/RPC12/RC12" pad="63"/>
<connect gate="G$1" pin="OSCO/CLKO/RPC15/RC15" pad="64"/>
<connect gate="G$1" pin="PGEC1/OA1IN+/AN4/C1IN1+/C1IN3-/C2IN3-/RPB2/RB2" pad="26"/>
<connect gate="G$1" pin="PGEC2/RPB6/SCK2/PMPA15/RB6(5)" pad="70"/>
<connect gate="G$1" pin="PGEC3/OA1OUT/AN3/C1IN4-/C4IN2-/RPB1/CTED1/RB1" pad="25"/>
<connect gate="G$1" pin="PGED1/OA1IN-/AN5/CTCMP/C1IN1-/RTCC/RPB3/RB3" pad="27"/>
<connect gate="G$1" pin="PGED2/RPB5/USBID1/RB5(6)" pad="69"/>
<connect gate="G$1" pin="PGED3/OA2IN-/AN2/C2IN1-/RPB0/CTED2/RB0" pad="24"/>
<connect gate="G$1" pin="PMPD12/RD12" pad="79"/>
<connect gate="G$1" pin="PMPD13/RD13" pad="80"/>
<connect gate="G$1" pin="PWM11H/PWM5L/RD1" pad="6"/>
<connect gate="G$1" pin="PWM5H/RD2" pad="7"/>
<connect gate="G$1" pin="RD8" pad="68"/>
<connect gate="G$1" pin="RPB10/PWM3H/PMPD0/RB10" pad="93"/>
<connect gate="G$1" pin="RPB11/PWM9H/PWM3L/PMPD1/RB11" pad="94"/>
<connect gate="G$1" pin="RPB12/PWM2H/PMPD2/RB12" pad="98"/>
<connect gate="G$1" pin="RPB13/PWM8H/PWM2L/CTPLS/PMPD3/RB13" pad="99"/>
<connect gate="G$1" pin="RPB14/PWM1H/VBUSON1/PMPD6/RB14" pad="4"/>
<connect gate="G$1" pin="RPB15/PWM7H/PWM1L/PMPD7/RB15" pad="5"/>
<connect gate="G$1" pin="RPC6/USBID2/PMPA16/RC6" pad="77"/>
<connect gate="G$1" pin="RPC7/PMPA17/RC7" pad="78"/>
<connect gate="G$1" pin="RPC8/PMPWR/PSPWR/RC8" pad="81"/>
<connect gate="G$1" pin="RPC9/PMPD15/RC9" pad="84"/>
<connect gate="G$1" pin="RPD3/PWM12H/PWM6L/RD3" pad="8"/>
<connect gate="G$1" pin="RPD4/PWM6H/RD4" pad="9"/>
<connect gate="G$1" pin="RPD5/PWM12H/PMPRD/PSPRD/RD5" pad="82"/>
<connect gate="G$1" pin="RPD6/PWM12L/PMPD14/RD6" pad="83"/>
<connect gate="G$1" pin="RPF0/PWM11H/PMPD11/RF0" pad="87"/>
<connect gate="G$1" pin="RPF1/PWM11L/PMPD10/RF1" pad="88"/>
<connect gate="G$1" pin="RPG0/PMPD8/RG0" pad="90"/>
<connect gate="G$1" pin="RPG1/PMPD9/RG1" pad="89"/>
<connect gate="G$1" pin="SOSCI/RPC13(4)/RC13(4)" pad="73"/>
<connect gate="G$1" pin="SOSCO/RPB8(4)/RB8(4)" pad="74"/>
<connect gate="G$1" pin="TCK/RPA7/PWM10H/PWM4L/PMPD5/RA7" pad="3"/>
<connect gate="G$1" pin="TDI/DAC3/AN26/CVD26/RPA8/PMPA9/RA8(6)" pad="49"/>
<connect gate="G$1" pin="TDO/PWM4H/PMPD4/RA10" pad="100"/>
<connect gate="G$1" pin="TMS/OA5IN-/AN27/CVD27/C5IN1-/RPB9/RB9" pad="76"/>
<connect gate="G$1" pin="TRCLK/PMPA18/RF6" pad="91"/>
<connect gate="G$1" pin="TRD0/PMPA22/RG13" pad="97"/>
<connect gate="G$1" pin="TRD1/RPG12/PMPA21/RG12" pad="96"/>
<connect gate="G$1" pin="TRD2/PMPA20/RG14" pad="95"/>
<connect gate="G$1" pin="TRD3/PMPA19/RF7" pad="92"/>
<connect gate="G$1" pin="VBUS" pad="54"/>
<connect gate="G$1" pin="VBUS2" pad="58"/>
<connect gate="G$1" pin="VDD_1" pad="2"/>
<connect gate="G$1" pin="VDD_2" pad="16"/>
<connect gate="G$1" pin="VDD_3" pad="37"/>
<connect gate="G$1" pin="VDD_4" pad="46"/>
<connect gate="G$1" pin="VDD_5" pad="62"/>
<connect gate="G$1" pin="VDD_6" pad="86"/>
<connect gate="G$1" pin="VREF+/AN34/CVD34/PMPA6/RF10" pad="29"/>
<connect gate="G$1" pin="VREF-/AN33/CVD33/PMPA7/RF9" pad="28"/>
<connect gate="G$1" pin="VSS_1" pad="15"/>
<connect gate="G$1" pin="VSS_2" pad="36"/>
<connect gate="G$1" pin="VSS_3" pad="45"/>
<connect gate="G$1" pin="VSS_4" pad="65"/>
<connect gate="G$1" pin="VSS_5" pad="75"/>
<connect gate="G$1" pin="VSS_6" pad="85"/>
<connect gate="G$1" pin="VUSB3V3" pad="55"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Microchip Technology MCU32, 120MHz, 4 I2C, 6 I2S, USB FS, CAN 2.0B, 12-bit ADC, Motor Control" constant="no"/>
<attribute name="HEIGHT" value="1.2mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PIC32MK1024MCF100-I/PT" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="579-2MK1024MCF100IPT" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=579-2MK1024MCF100IPT" constant="no"/>
<attribute name="RS_PART_NUMBER" value="1449608P" constant="no"/>
<attribute name="RS_PRICE-STOCK" value="http://uk.rs-online.com/web/p/products/1449608P" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="rcl" urn="urn:adsk.eagle:library:334">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
&lt;tr valign="top"&gt;

&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="R0402" urn="urn:adsk.eagle:footprint:23043/3" library_version="11">
<description>&lt;b&gt;Chip RESISTOR 0402 EIA (1005 Metric)&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1" y1="0.483" x2="1" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="0.483" x2="1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="-0.483" x2="-1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1" y1="-0.483" x2="-1" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<smd name="2" x="0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.35" x2="0.1999" y2="0.35" layer="35"/>
</package>
<package name="R0603" urn="urn:adsk.eagle:footprint:23044/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805" urn="urn:adsk.eagle:footprint:23045/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W" urn="urn:adsk.eagle:footprint:23046/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206" urn="urn:adsk.eagle:footprint:23047/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W" urn="urn:adsk.eagle:footprint:23048/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210" urn="urn:adsk.eagle:footprint:23049/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W" urn="urn:adsk.eagle:footprint:23050/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010" urn="urn:adsk.eagle:footprint:23051/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W" urn="urn:adsk.eagle:footprint:23052/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012" urn="urn:adsk.eagle:footprint:23053/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W" urn="urn:adsk.eagle:footprint:23054/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512" urn="urn:adsk.eagle:footprint:23055/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W" urn="urn:adsk.eagle:footprint:23056/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216" urn="urn:adsk.eagle:footprint:23057/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W" urn="urn:adsk.eagle:footprint:23058/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225" urn="urn:adsk.eagle:footprint:23059/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W" urn="urn:adsk.eagle:footprint:23060/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025" urn="urn:adsk.eagle:footprint:23061/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W" urn="urn:adsk.eagle:footprint:23062/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332" urn="urn:adsk.eagle:footprint:23063/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W" urn="urn:adsk.eagle:footprint:25646/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<smd name="2" x="3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805" urn="urn:adsk.eagle:footprint:23065/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206" urn="urn:adsk.eagle:footprint:23066/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406" urn="urn:adsk.eagle:footprint:23067/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012" urn="urn:adsk.eagle:footprint:23068/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309" urn="urn:adsk.eagle:footprint:23069/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216" urn="urn:adsk.eagle:footprint:23070/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516" urn="urn:adsk.eagle:footprint:23071/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923" urn="urn:adsk.eagle:footprint:23072/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5" urn="urn:adsk.eagle:footprint:22991/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7" urn="urn:adsk.eagle:footprint:22998/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0207/10" urn="urn:adsk.eagle:footprint:22992/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12" urn="urn:adsk.eagle:footprint:22993/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15" urn="urn:adsk.eagle:footprint:22997/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V" urn="urn:adsk.eagle:footprint:22994/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V" urn="urn:adsk.eagle:footprint:22995/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:22996/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10" urn="urn:adsk.eagle:footprint:23073/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12" urn="urn:adsk.eagle:footprint:23074/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0411/12" urn="urn:adsk.eagle:footprint:23076/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15" urn="urn:adsk.eagle:footprint:23077/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V" urn="urn:adsk.eagle:footprint:23078/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15" urn="urn:adsk.eagle:footprint:23079/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V" urn="urn:adsk.eagle:footprint:23080/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17" urn="urn:adsk.eagle:footprint:23081/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22" urn="urn:adsk.eagle:footprint:23082/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V" urn="urn:adsk.eagle:footprint:23083/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22" urn="urn:adsk.eagle:footprint:23084/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V" urn="urn:adsk.eagle:footprint:23085/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15" urn="urn:adsk.eagle:footprint:23086/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22" urn="urn:adsk.eagle:footprint:23087/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V" urn="urn:adsk.eagle:footprint:23088/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12" urn="urn:adsk.eagle:footprint:23089/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17" urn="urn:adsk.eagle:footprint:23090/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0" urn="urn:adsk.eagle:footprint:23091/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102AX" urn="urn:adsk.eagle:footprint:23100/1" library_version="11">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="0922V" urn="urn:adsk.eagle:footprint:23098/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="MINI_MELF-0102R" urn="urn:adsk.eagle:footprint:23092/1" library_version="11">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W" urn="urn:adsk.eagle:footprint:23093/1" library_version="11">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R" urn="urn:adsk.eagle:footprint:25676/1" library_version="11">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.938" y1="0.6" x2="-0.938" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.938" y1="-0.6" x2="0.938" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W" urn="urn:adsk.eagle:footprint:25677/1" library_version="11">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.684" y1="0.6" x2="-0.684" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.684" y1="-0.6" x2="0.684" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R" urn="urn:adsk.eagle:footprint:25678/1" library_version="11">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.2125" y1="1" x2="-1.2125" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.2125" y1="-1" x2="1.2125" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W" urn="urn:adsk.eagle:footprint:25679/1" library_version="11">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.149" y1="1" x2="-1.149" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.149" y1="-1" x2="1.149" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RDH/15" urn="urn:adsk.eagle:footprint:23099/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="0204V" urn="urn:adsk.eagle:footprint:22999/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0309V" urn="urn:adsk.eagle:footprint:23075/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="R0201" urn="urn:adsk.eagle:footprint:25683/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
</package>
<package name="VMTA55" urn="urn:adsk.eagle:footprint:25689/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-5.08" y1="0" x2="-4.26" y2="0" width="0.6096" layer="51"/>
<wire x1="3.3375" y1="-1.45" x2="3.3375" y2="1.45" width="0.1524" layer="21"/>
<wire x1="3.3375" y1="1.45" x2="-3.3625" y2="1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="1.45" x2="-3.3625" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="-1.45" x2="3.3375" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="4.235" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.1" shape="octagon"/>
<text x="-3.175" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.26" y1="-0.3048" x2="-3.3075" y2="0.3048" layer="21"/>
<rectangle x1="3.2825" y1="-0.3048" x2="4.235" y2="0.3048" layer="21"/>
</package>
<package name="VMTB60" urn="urn:adsk.eagle:footprint:25690/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC60&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.585" y2="0" width="0.6096" layer="51"/>
<wire x1="4.6875" y1="-1.95" x2="4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="4.6875" y1="1.95" x2="-4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="1.95" x2="-4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="-1.95" x2="4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="5.585" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-4.445" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.585" y1="-0.3048" x2="-4.6325" y2="0.3048" layer="21"/>
<rectangle x1="4.6325" y1="-0.3048" x2="5.585" y2="0.3048" layer="21"/>
</package>
<package name="VTA52" urn="urn:adsk.eagle:footprint:25684/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR52&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-15.24" y1="0" x2="-13.97" y2="0" width="0.6096" layer="51"/>
<wire x1="12.6225" y1="0.025" x2="12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="4.725" x2="-12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="4.725" x2="-12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="0.025" x2="-12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="-4.65" x2="12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="-4.65" x2="12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0" x2="15.24" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.97" y1="-0.3048" x2="-12.5675" y2="0.3048" layer="21"/>
<rectangle x1="12.5675" y1="-0.3048" x2="13.97" y2="0.3048" layer="21"/>
</package>
<package name="VTA53" urn="urn:adsk.eagle:footprint:25685/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR53&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="4.7" x2="-9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="4.7" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-4.675" x2="9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-4.675" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA54" urn="urn:adsk.eagle:footprint:25686/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR54&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="3.3" x2="-9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="3.3" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-3.3" x2="9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-3.3" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA55" urn="urn:adsk.eagle:footprint:25687/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-8.255" y1="0" x2="-6.985" y2="0" width="0.6096" layer="51"/>
<wire x1="6.405" y1="0" x2="6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="3.3" x2="-6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="3.3" x2="-6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="0" x2="-6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.3" x2="6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="-3.3" x2="6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="6.985" y1="0" x2="8.255" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-8.255" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="8.255" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.985" y1="-0.3048" x2="-6.35" y2="0.3048" layer="21"/>
<rectangle x1="6.35" y1="-0.3048" x2="6.985" y2="0.3048" layer="21"/>
</package>
<package name="VTA56" urn="urn:adsk.eagle:footprint:25688/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR56&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="4.5" y1="0" x2="4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="3.3" x2="-4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="3.3" x2="-4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-3.3" x2="4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-3.3" x2="4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.08" y2="0.3048" layer="21"/>
</package>
<package name="R4527" urn="urn:adsk.eagle:footprint:13246/1" library_version="11">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0001" urn="urn:adsk.eagle:footprint:25692/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.075" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.606" x2="3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-2.544" y="2.229" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.501" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0002" urn="urn:adsk.eagle:footprint:25693/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.55" y1="3.375" x2="-5.55" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.55" y1="-3.375" x2="5.55" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.55" y1="-3.375" x2="5.55" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.55" y1="3.375" x2="-5.55" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.65" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.65" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC01/2" urn="urn:adsk.eagle:footprint:25694/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="-1.475" width="0.2032" layer="51"/>
<wire x1="-2.45" y1="-1.475" x2="2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="1.475" width="0.2032" layer="51"/>
<wire x1="2.45" y1="1.475" x2="-2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="1.106" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-1.106" x2="-2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="1.106" x2="2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="-1.106" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<smd name="2" x="2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<text x="-2.544" y="1.904" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.176" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC2515" urn="urn:adsk.eagle:footprint:25695/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.05" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.05" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="1.606" x2="3.05" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-3.2" y="2.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.2" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC4527" urn="urn:adsk.eagle:footprint:25696/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.675" y1="3.4" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.675" y1="-3.375" x2="5.675" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.675" y1="-3.375" x2="5.675" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.675" y1="3.4" x2="-5.675" y2="3.4" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.775" y="3.925" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.775" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC6927" urn="urn:adsk.eagle:footprint:25697/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-8.65" y1="3.375" x2="-8.65" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-8.65" y1="-3.375" x2="8.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="8.65" y1="-3.375" x2="8.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="8.65" y1="3.375" x2="-8.65" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-7.95" y="0.025" dx="3.94" dy="5.97" layer="1"/>
<smd name="2" x="7.95" y="0" dx="3.94" dy="5.97" layer="1"/>
<text x="-8.75" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.75" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218" urn="urn:adsk.eagle:footprint:25698/1" library_version="11">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
</package>
<package name="1812X7R" urn="urn:adsk.eagle:footprint:25699/1" library_version="11">
<description>&lt;b&gt;Chip Monolithic Ceramic Capacitors&lt;/b&gt; Medium Voltage High Capacitance for General Use&lt;p&gt;
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<wire x1="-1.1" y1="1.5" x2="1.1" y2="1.5" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.5" x2="-1.1" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.5" x2="-0.6" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.425" y="0" dx="0.8" dy="3.5" layer="1"/>
<smd name="2" x="1.425" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<text x="-1.9456" y="1.9958" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9456" y="-3.7738" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="1.4" y2="1.6" layer="51" rot="R180"/>
</package>
<package name="R01005" urn="urn:adsk.eagle:footprint:25701/1" library_version="11">
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
<package name="C0402" urn="urn:adsk.eagle:footprint:23121/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0504" urn="urn:adsk.eagle:footprint:23122/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C0603" urn="urn:adsk.eagle:footprint:23123/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805" urn="urn:adsk.eagle:footprint:23124/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1206" urn="urn:adsk.eagle:footprint:23125/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1210" urn="urn:adsk.eagle:footprint:23126/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1310" urn="urn:adsk.eagle:footprint:23127/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.3" x2="0.1001" y2="0.3" layer="35"/>
</package>
<package name="C1608" urn="urn:adsk.eagle:footprint:23128/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1812" urn="urn:adsk.eagle:footprint:23129/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.3" y1="-0.4001" x2="0.3" y2="0.4001" layer="35"/>
</package>
<package name="C1825" urn="urn:adsk.eagle:footprint:23130/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.7" y1="-0.7" x2="0.7" y2="0.7" layer="35"/>
</package>
<package name="C2012" urn="urn:adsk.eagle:footprint:23131/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C3216" urn="urn:adsk.eagle:footprint:23132/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.3" y1="-0.5001" x2="0.3" y2="0.5001" layer="35"/>
</package>
<package name="C3225" urn="urn:adsk.eagle:footprint:23133/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C4532" urn="urn:adsk.eagle:footprint:23134/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="C4564" urn="urn:adsk.eagle:footprint:23135/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="C025-024X044" urn="urn:adsk.eagle:footprint:23136/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.778" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-025X050" urn="urn:adsk.eagle:footprint:23137/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.5 x 5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-030X050" urn="urn:adsk.eagle:footprint:23138/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 3 x 5 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-040X050" urn="urn:adsk.eagle:footprint:23139/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 4 x 5 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-050X050" urn="urn:adsk.eagle:footprint:23140/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 5 x 5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-060X050" urn="urn:adsk.eagle:footprint:23141/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 6 x 5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-024X070" urn="urn:adsk.eagle:footprint:23142/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.191" y1="-1.143" x2="-3.9624" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-3.9624" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-0.635" x2="-4.191" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="0.635" x2="-4.191" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.699" y1="-0.635" x2="-4.699" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.143" x2="-2.5654" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.143" x2="-2.5654" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.81" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-025X075" urn="urn:adsk.eagle:footprint:23143/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.016" x2="4.953" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.27" x2="4.953" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.27" x2="4.953" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.27" x2="4.699" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.254" x2="2.413" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-035X075" urn="urn:adsk.eagle:footprint:23144/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.778" x2="2.159" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.778" x2="-2.159" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.524" x2="-2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.778" x2="2.413" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.524" x2="-2.159" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.778" x2="2.413" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.524" x2="-2.159" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="2.794" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.524" x2="2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.508" x2="2.413" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-045X075" urn="urn:adsk.eagle:footprint:23145/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.032" x2="4.953" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.286" x2="4.953" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.286" x2="4.953" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.286" x2="4.699" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.286" x2="2.794" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.397" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-055X075" urn="urn:adsk.eagle:footprint:23146/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.794" x2="4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.794" x2="4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.794" x2="4.699" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.794" x2="2.794" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-2.032" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-024X044" urn="urn:adsk.eagle:footprint:23147/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-0.381" x2="2.54" y2="0.381" layer="51"/>
<rectangle x1="-2.54" y1="-0.381" x2="-2.159" y2="0.381" layer="51"/>
</package>
<package name="C050-025X075" urn="urn:adsk.eagle:footprint:23148/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-045X075" urn="urn:adsk.eagle:footprint:23149/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-030X075" urn="urn:adsk.eagle:footprint:23150/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-050X075" urn="urn:adsk.eagle:footprint:23151/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-055X075" urn="urn:adsk.eagle:footprint:23152/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-075X075" urn="urn:adsk.eagle:footprint:23153/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050H075X075" urn="urn:adsk.eagle:footprint:23154/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-3.683" y1="7.112" x2="-3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0.508" x2="-3.302" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="3.683" y1="0.508" x2="3.683" y2="7.112" width="0.1524" layer="21"/>
<wire x1="3.175" y1="7.62" x2="-3.175" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.413" x2="-0.3048" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-0.3048" y2="1.143" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="2.413" x2="0.3302" y2="1.778" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="0.3302" y2="1.143" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="7.112" x2="-3.175" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.175" y1="7.62" x2="3.683" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.254" width="0.508" layer="51"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.254" width="0.508" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.302" y="8.001" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="0.127" x2="-2.286" y2="0.508" layer="51"/>
<rectangle x1="2.286" y1="0.127" x2="2.794" y2="0.508" layer="51"/>
</package>
<package name="C075-032X103" urn="urn:adsk.eagle:footprint:23155/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.826" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-042X103" urn="urn:adsk.eagle:footprint:23156/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.699" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-052X106" urn="urn:adsk.eagle:footprint:23157/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-043X133" urn="urn:adsk.eagle:footprint:23158/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-054X133" urn="urn:adsk.eagle:footprint:23159/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-064X133" urn="urn:adsk.eagle:footprint:23160/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102_152-062X184" urn="urn:adsk.eagle:footprint:23161/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="3.683" y2="0" width="0.1524" layer="21"/>
<wire x1="6.477" y1="0" x2="8.636" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.223" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.223" y1="3.048" x2="6.731" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.223" y1="-3.048" x2="6.731" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="2.54" x2="6.731" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.048" x2="11.684" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.176" y1="-3.048" x2="11.684" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="11.176" y1="-3.048" x2="7.112" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="7.112" y1="3.048" x2="11.176" y2="3.048" width="0.1524" layer="21"/>
<wire x1="11.684" y1="2.54" x2="11.684" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="3" x="10.033" y="0" drill="1.016" shape="octagon"/>
<text x="-5.969" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-054X183" urn="urn:adsk.eagle:footprint:23162/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 5.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-064X183" urn="urn:adsk.eagle:footprint:23163/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 6.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-072X183" urn="urn:adsk.eagle:footprint:23164/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 7.2 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-084X183" urn="urn:adsk.eagle:footprint:23165/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 8.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-091X182" urn="urn:adsk.eagle:footprint:23166/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 9.1 x 18.2 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-062X268" urn="urn:adsk.eagle:footprint:23167/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.7" y="3.429" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-074X268" urn="urn:adsk.eagle:footprint:23168/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-087X268" urn="urn:adsk.eagle:footprint:23169/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="4.699" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-108X268" urn="urn:adsk.eagle:footprint:23170/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.715" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-113X268" urn="urn:adsk.eagle:footprint:23171/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-093X316" urn="urn:adsk.eagle:footprint:23172/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="4.953" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-113X316" urn="urn:adsk.eagle:footprint:23173/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-134X316" urn="urn:adsk.eagle:footprint:23174/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-205X316" urn="urn:adsk.eagle:footprint:23175/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-137X374" urn="urn:adsk.eagle:footprint:23176/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="6.731" x2="-18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="18.542" y1="6.731" x2="-18.542" y2="6.731" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.2372" y="7.0612" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-162X374" urn="urn:adsk.eagle:footprint:23177/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="8.001" x2="-18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="18.542" y1="8.001" x2="-18.542" y2="8.001" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="8.3312" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-182X374" urn="urn:adsk.eagle:footprint:23178/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="9.017" x2="-18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="18.542" y1="9.017" x2="-18.542" y2="9.017" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="9.3472" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-192X418" urn="urn:adsk.eagle:footprint:23179/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-203X418" urn="urn:adsk.eagle:footprint:23180/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.32" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-035X075" urn="urn:adsk.eagle:footprint:23181/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-155X418" urn="urn:adsk.eagle:footprint:23182/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-063X106" urn="urn:adsk.eagle:footprint:23183/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-154X316" urn="urn:adsk.eagle:footprint:23184/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-173X316" urn="urn:adsk.eagle:footprint:23185/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C0402K" urn="urn:adsk.eagle:footprint:23186/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0204 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1005</description>
<wire x1="-0.425" y1="0.2" x2="0.425" y2="0.2" width="0.1016" layer="51"/>
<wire x1="0.425" y1="-0.2" x2="-0.425" y2="-0.2" width="0.1016" layer="51"/>
<smd name="1" x="-0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<smd name="2" x="0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<text x="-0.5" y="0.425" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.5" y="-1.45" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.25" x2="-0.225" y2="0.25" layer="51"/>
<rectangle x1="0.225" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="C0603K" urn="urn:adsk.eagle:footprint:23187/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0603 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1608</description>
<wire x1="-0.725" y1="0.35" x2="0.725" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.725" y1="-0.35" x2="-0.725" y2="-0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<smd name="2" x="0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<text x="-0.8" y="0.65" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.8" y="-1.65" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-0.4" x2="-0.45" y2="0.4" layer="51"/>
<rectangle x1="0.45" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
</package>
<package name="C0805K" urn="urn:adsk.eagle:footprint:23188/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0805 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 2012</description>
<wire x1="-0.925" y1="0.6" x2="0.925" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.6" x2="-0.925" y2="-0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1" y="0.875" size="1.016" layer="25">&gt;NAME</text>
<text x="-1" y="-1.9" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1" y1="-0.65" x2="-0.5" y2="0.65" layer="51"/>
<rectangle x1="0.5" y1="-0.65" x2="1" y2="0.65" layer="51"/>
</package>
<package name="C1206K" urn="urn:adsk.eagle:footprint:23189/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1206 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3216</description>
<wire x1="-1.525" y1="0.75" x2="1.525" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-0.75" x2="-1.525" y2="-0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2" layer="1"/>
<text x="-1.6" y="1.1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.1" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-1.1" y2="0.8" layer="51"/>
<rectangle x1="1.1" y1="-0.8" x2="1.6" y2="0.8" layer="51"/>
</package>
<package name="C1210K" urn="urn:adsk.eagle:footprint:23190/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1210 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3225</description>
<wire x1="-1.525" y1="1.175" x2="1.525" y2="1.175" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-1.175" x2="-1.525" y2="-1.175" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<text x="-1.6" y="1.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-1.25" x2="-1.1" y2="1.25" layer="51"/>
<rectangle x1="1.1" y1="-1.25" x2="1.6" y2="1.25" layer="51"/>
</package>
<package name="C1812K" urn="urn:adsk.eagle:footprint:23191/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1812 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4532</description>
<wire x1="-2.175" y1="1.525" x2="2.175" y2="1.525" width="0.1016" layer="51"/>
<wire x1="2.175" y1="-1.525" x2="-2.175" y2="-1.525" width="0.1016" layer="51"/>
<smd name="1" x="-2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<smd name="2" x="2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<text x="-2.25" y="1.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.25" y="-2.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.25" y1="-1.6" x2="-1.65" y2="1.6" layer="51"/>
<rectangle x1="1.65" y1="-1.6" x2="2.25" y2="1.6" layer="51"/>
</package>
<package name="C1825K" urn="urn:adsk.eagle:footprint:23192/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1825 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4564</description>
<wire x1="-1.525" y1="3.125" x2="1.525" y2="3.125" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-3.125" x2="-1.525" y2="-3.125" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<text x="-1.6" y="3.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-4.625" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-3.2" x2="-1.1" y2="3.2" layer="51"/>
<rectangle x1="1.1" y1="-3.2" x2="1.6" y2="3.2" layer="51"/>
</package>
<package name="C2220K" urn="urn:adsk.eagle:footprint:23193/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2220 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5650</description>
<wire x1="-2.725" y1="2.425" x2="2.725" y2="2.425" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-2.425" x2="-2.725" y2="-2.425" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<text x="-2.8" y="2.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-3.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-2.5" x2="-2.2" y2="2.5" layer="51"/>
<rectangle x1="2.2" y1="-2.5" x2="2.8" y2="2.5" layer="51"/>
</package>
<package name="C2225K" urn="urn:adsk.eagle:footprint:23194/1" library_version="11">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2225 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5664</description>
<wire x1="-2.725" y1="3.075" x2="2.725" y2="3.075" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-3.075" x2="-2.725" y2="-3.075" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<text x="-2.8" y="3.6" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-4.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-3.15" x2="-2.2" y2="3.15" layer="51"/>
<rectangle x1="2.2" y1="-3.15" x2="2.8" y2="3.15" layer="51"/>
</package>
<package name="C0201" urn="urn:adsk.eagle:footprint:23196/1" library_version="11">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<smd name="1" x="-0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<smd name="2" x="0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="0.1" x2="0.15" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="-0.1" layer="51"/>
</package>
<package name="C1808" urn="urn:adsk.eagle:footprint:23197/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-1.4732" y1="0.9502" x2="1.4732" y2="0.9502" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-0.9502" x2="1.4732" y2="-0.9502" width="0.1016" layer="51"/>
<smd name="1" x="-1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<text x="-2.233" y="1.827" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.233" y="-2.842" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.275" y1="-1.015" x2="-1.225" y2="1.015" layer="51"/>
<rectangle x1="1.225" y1="-1.015" x2="2.275" y2="1.015" layer="51"/>
</package>
<package name="C3640" urn="urn:adsk.eagle:footprint:23198/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-3.8322" y1="5.0496" x2="3.8322" y2="5.0496" width="0.1016" layer="51"/>
<wire x1="-3.8322" y1="-5.0496" x2="3.8322" y2="-5.0496" width="0.1016" layer="51"/>
<smd name="1" x="-4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<smd name="2" x="4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<text x="-4.647" y="6.465" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.647" y="-7.255" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.57" y1="-5.1" x2="-3.05" y2="5.1" layer="51"/>
<rectangle x1="3.05" y1="-5.1" x2="4.5688" y2="5.1" layer="51"/>
</package>
<package name="C01005" urn="urn:adsk.eagle:footprint:23199/1" library_version="11">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="R0402" urn="urn:adsk.eagle:package:23547/3" type="model" library_version="11">
<description>Chip RESISTOR 0402 EIA (1005 Metric)</description>
<packageinstances>
<packageinstance name="R0402"/>
</packageinstances>
</package3d>
<package3d name="R0603" urn="urn:adsk.eagle:package:23555/3" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0603"/>
</packageinstances>
</package3d>
<package3d name="R0805" urn="urn:adsk.eagle:package:23553/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0805"/>
</packageinstances>
</package3d>
<package3d name="R0805W" urn="urn:adsk.eagle:package:23537/2" type="model" library_version="11">
<description>RESISTOR wave soldering</description>
<packageinstances>
<packageinstance name="R0805W"/>
</packageinstances>
</package3d>
<package3d name="R1206" urn="urn:adsk.eagle:package:23540/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1206"/>
</packageinstances>
</package3d>
<package3d name="R1206W" urn="urn:adsk.eagle:package:23539/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1206W"/>
</packageinstances>
</package3d>
<package3d name="R1210" urn="urn:adsk.eagle:package:23554/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1210"/>
</packageinstances>
</package3d>
<package3d name="R1210W" urn="urn:adsk.eagle:package:23541/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1210W"/>
</packageinstances>
</package3d>
<package3d name="R2010" urn="urn:adsk.eagle:package:23551/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2010"/>
</packageinstances>
</package3d>
<package3d name="R2010W" urn="urn:adsk.eagle:package:23542/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2010W"/>
</packageinstances>
</package3d>
<package3d name="R2012" urn="urn:adsk.eagle:package:23543/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2012"/>
</packageinstances>
</package3d>
<package3d name="R2012W" urn="urn:adsk.eagle:package:23544/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2012W"/>
</packageinstances>
</package3d>
<package3d name="R2512" urn="urn:adsk.eagle:package:23545/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2512"/>
</packageinstances>
</package3d>
<package3d name="R2512W" urn="urn:adsk.eagle:package:23565/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2512W"/>
</packageinstances>
</package3d>
<package3d name="R3216" urn="urn:adsk.eagle:package:23557/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3216"/>
</packageinstances>
</package3d>
<package3d name="R3216W" urn="urn:adsk.eagle:package:23548/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3216W"/>
</packageinstances>
</package3d>
<package3d name="R3225" urn="urn:adsk.eagle:package:23549/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3225"/>
</packageinstances>
</package3d>
<package3d name="R3225W" urn="urn:adsk.eagle:package:23550/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3225W"/>
</packageinstances>
</package3d>
<package3d name="R5025" urn="urn:adsk.eagle:package:23552/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R5025"/>
</packageinstances>
</package3d>
<package3d name="R5025W" urn="urn:adsk.eagle:package:23558/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R5025W"/>
</packageinstances>
</package3d>
<package3d name="R6332" urn="urn:adsk.eagle:package:23559/2" type="model" library_version="11">
<description>RESISTOR
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332"/>
</packageinstances>
</package3d>
<package3d name="R6332W" urn="urn:adsk.eagle:package:26078/2" type="model" library_version="11">
<description>RESISTOR wave soldering
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332W"/>
</packageinstances>
</package3d>
<package3d name="M0805" urn="urn:adsk.eagle:package:23556/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M0805"/>
</packageinstances>
</package3d>
<package3d name="M1206" urn="urn:adsk.eagle:package:23566/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M1206"/>
</packageinstances>
</package3d>
<package3d name="M1406" urn="urn:adsk.eagle:package:23569/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M1406"/>
</packageinstances>
</package3d>
<package3d name="M2012" urn="urn:adsk.eagle:package:23561/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M2012"/>
</packageinstances>
</package3d>
<package3d name="M2309" urn="urn:adsk.eagle:package:23562/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M2309"/>
</packageinstances>
</package3d>
<package3d name="M3216" urn="urn:adsk.eagle:package:23563/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M3216"/>
</packageinstances>
</package3d>
<package3d name="M3516" urn="urn:adsk.eagle:package:23573/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M3516"/>
</packageinstances>
</package3d>
<package3d name="M5923" urn="urn:adsk.eagle:package:23564/3" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M5923"/>
</packageinstances>
</package3d>
<package3d name="0204/5" urn="urn:adsk.eagle:package:23488/1" type="box" library_version="11">
<description>RESISTOR
type 0204, grid 5 mm</description>
<packageinstances>
<packageinstance name="0204/5"/>
</packageinstances>
</package3d>
<package3d name="0204/7" urn="urn:adsk.eagle:package:23498/2" type="model" library_version="11">
<description>RESISTOR
type 0204, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0204/7"/>
</packageinstances>
</package3d>
<package3d name="0207/10" urn="urn:adsk.eagle:package:23491/2" type="model" library_version="11">
<description>RESISTOR
type 0207, grid 10 mm</description>
<packageinstances>
<packageinstance name="0207/10"/>
</packageinstances>
</package3d>
<package3d name="0207/12" urn="urn:adsk.eagle:package:23489/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 12 mm</description>
<packageinstances>
<packageinstance name="0207/12"/>
</packageinstances>
</package3d>
<package3d name="0207/15" urn="urn:adsk.eagle:package:23492/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 15mm</description>
<packageinstances>
<packageinstance name="0207/15"/>
</packageinstances>
</package3d>
<package3d name="0207/2V" urn="urn:adsk.eagle:package:23490/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0207/2V"/>
</packageinstances>
</package3d>
<package3d name="0207/5V" urn="urn:adsk.eagle:package:23502/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 5 mm</description>
<packageinstances>
<packageinstance name="0207/5V"/>
</packageinstances>
</package3d>
<package3d name="0207/7" urn="urn:adsk.eagle:package:23493/2" type="model" library_version="11">
<description>RESISTOR
type 0207, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0207/7"/>
</packageinstances>
</package3d>
<package3d name="0309/10" urn="urn:adsk.eagle:package:23567/2" type="model" library_version="11">
<description>RESISTOR
type 0309, grid 10mm</description>
<packageinstances>
<packageinstance name="0309/10"/>
</packageinstances>
</package3d>
<package3d name="0309/12" urn="urn:adsk.eagle:package:23571/1" type="box" library_version="11">
<description>RESISTOR
type 0309, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0309/12"/>
</packageinstances>
</package3d>
<package3d name="0411/12" urn="urn:adsk.eagle:package:23578/1" type="box" library_version="11">
<description>RESISTOR
type 0411, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0411/12"/>
</packageinstances>
</package3d>
<package3d name="0411/15" urn="urn:adsk.eagle:package:23568/2" type="model" library_version="11">
<description>RESISTOR
type 0411, grid 15 mm</description>
<packageinstances>
<packageinstance name="0411/15"/>
</packageinstances>
</package3d>
<package3d name="0411V" urn="urn:adsk.eagle:package:23570/1" type="box" library_version="11">
<description>RESISTOR
type 0411, grid 3.81 mm</description>
<packageinstances>
<packageinstance name="0411V"/>
</packageinstances>
</package3d>
<package3d name="0414/15" urn="urn:adsk.eagle:package:23579/2" type="model" library_version="11">
<description>RESISTOR
type 0414, grid 15 mm</description>
<packageinstances>
<packageinstance name="0414/15"/>
</packageinstances>
</package3d>
<package3d name="0414V" urn="urn:adsk.eagle:package:23574/1" type="box" library_version="11">
<description>RESISTOR
type 0414, grid 5 mm</description>
<packageinstances>
<packageinstance name="0414V"/>
</packageinstances>
</package3d>
<package3d name="0617/17" urn="urn:adsk.eagle:package:23575/2" type="model" library_version="11">
<description>RESISTOR
type 0617, grid 17.5 mm</description>
<packageinstances>
<packageinstance name="0617/17"/>
</packageinstances>
</package3d>
<package3d name="0617/22" urn="urn:adsk.eagle:package:23577/1" type="box" library_version="11">
<description>RESISTOR
type 0617, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0617/22"/>
</packageinstances>
</package3d>
<package3d name="0617V" urn="urn:adsk.eagle:package:23576/1" type="box" library_version="11">
<description>RESISTOR
type 0617, grid 5 mm</description>
<packageinstances>
<packageinstance name="0617V"/>
</packageinstances>
</package3d>
<package3d name="0922/22" urn="urn:adsk.eagle:package:23580/2" type="model" library_version="11">
<description>RESISTOR
type 0922, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0922/22"/>
</packageinstances>
</package3d>
<package3d name="P0613V" urn="urn:adsk.eagle:package:23582/1" type="box" library_version="11">
<description>RESISTOR
type 0613, grid 5 mm</description>
<packageinstances>
<packageinstance name="P0613V"/>
</packageinstances>
</package3d>
<package3d name="P0613/15" urn="urn:adsk.eagle:package:23581/2" type="model" library_version="11">
<description>RESISTOR
type 0613, grid 15 mm</description>
<packageinstances>
<packageinstance name="P0613/15"/>
</packageinstances>
</package3d>
<package3d name="P0817/22" urn="urn:adsk.eagle:package:23583/1" type="box" library_version="11">
<description>RESISTOR
type 0817, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="P0817/22"/>
</packageinstances>
</package3d>
<package3d name="P0817V" urn="urn:adsk.eagle:package:23608/1" type="box" library_version="11">
<description>RESISTOR
type 0817, grid 6.35 mm</description>
<packageinstances>
<packageinstance name="P0817V"/>
</packageinstances>
</package3d>
<package3d name="V234/12" urn="urn:adsk.eagle:package:23592/1" type="box" library_version="11">
<description>RESISTOR
type V234, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="V234/12"/>
</packageinstances>
</package3d>
<package3d name="V235/17" urn="urn:adsk.eagle:package:23586/2" type="model" library_version="11">
<description>RESISTOR
type V235, grid 17.78 mm</description>
<packageinstances>
<packageinstance name="V235/17"/>
</packageinstances>
</package3d>
<package3d name="V526-0" urn="urn:adsk.eagle:package:23590/1" type="box" library_version="11">
<description>RESISTOR
type V526-0, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="V526-0"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102AX" urn="urn:adsk.eagle:package:23594/1" type="box" library_version="11">
<description>Mini MELF 0102 Axial</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102AX"/>
</packageinstances>
</package3d>
<package3d name="0922V" urn="urn:adsk.eagle:package:23589/1" type="box" library_version="11">
<description>RESISTOR
type 0922, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0922V"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102R" urn="urn:adsk.eagle:package:23591/2" type="model" library_version="11">
<description>CECC Size RC2211 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102W" urn="urn:adsk.eagle:package:23588/2" type="model" library_version="11">
<description>CECC Size RC2211 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204R" urn="urn:adsk.eagle:package:26109/2" type="model" library_version="11">
<description>CECC Size RC3715 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204W" urn="urn:adsk.eagle:package:26111/2" type="model" library_version="11">
<description>CECC Size RC3715 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207R" urn="urn:adsk.eagle:package:26113/2" type="model" library_version="11">
<description>CECC Size RC6123 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207W" urn="urn:adsk.eagle:package:26112/2" type="model" library_version="11">
<description>CECC Size RC6123 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207W"/>
</packageinstances>
</package3d>
<package3d name="RDH/15" urn="urn:adsk.eagle:package:23595/1" type="box" library_version="11">
<description>RESISTOR
type RDH, grid 15 mm</description>
<packageinstances>
<packageinstance name="RDH/15"/>
</packageinstances>
</package3d>
<package3d name="0204V" urn="urn:adsk.eagle:package:23495/1" type="box" library_version="11">
<description>RESISTOR
type 0204, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0204V"/>
</packageinstances>
</package3d>
<package3d name="0309V" urn="urn:adsk.eagle:package:23572/1" type="box" library_version="11">
<description>RESISTOR
type 0309, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0309V"/>
</packageinstances>
</package3d>
<package3d name="R0201" urn="urn:adsk.eagle:package:26117/2" type="model" library_version="11">
<description>RESISTOR chip
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R0201"/>
</packageinstances>
</package3d>
<package3d name="VMTA55" urn="urn:adsk.eagle:package:26121/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTA55"/>
</packageinstances>
</package3d>
<package3d name="VMTB60" urn="urn:adsk.eagle:package:26122/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC60
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTB60"/>
</packageinstances>
</package3d>
<package3d name="VTA52" urn="urn:adsk.eagle:package:26116/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR52
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA52"/>
</packageinstances>
</package3d>
<package3d name="VTA53" urn="urn:adsk.eagle:package:26118/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR53
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA53"/>
</packageinstances>
</package3d>
<package3d name="VTA54" urn="urn:adsk.eagle:package:26119/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR54
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA54"/>
</packageinstances>
</package3d>
<package3d name="VTA55" urn="urn:adsk.eagle:package:26120/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA55"/>
</packageinstances>
</package3d>
<package3d name="VTA56" urn="urn:adsk.eagle:package:26129/3" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR56
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA56"/>
</packageinstances>
</package3d>
<package3d name="R4527" urn="urn:adsk.eagle:package:13310/2" type="model" library_version="11">
<description>Package 4527
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<packageinstances>
<packageinstance name="R4527"/>
</packageinstances>
</package3d>
<package3d name="WSC0001" urn="urn:adsk.eagle:package:26123/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0001"/>
</packageinstances>
</package3d>
<package3d name="WSC0002" urn="urn:adsk.eagle:package:26125/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0002"/>
</packageinstances>
</package3d>
<package3d name="WSC01/2" urn="urn:adsk.eagle:package:26127/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC01/2"/>
</packageinstances>
</package3d>
<package3d name="WSC2515" urn="urn:adsk.eagle:package:26134/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC2515"/>
</packageinstances>
</package3d>
<package3d name="WSC4527" urn="urn:adsk.eagle:package:26126/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC4527"/>
</packageinstances>
</package3d>
<package3d name="WSC6927" urn="urn:adsk.eagle:package:26128/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC6927"/>
</packageinstances>
</package3d>
<package3d name="R1218" urn="urn:adsk.eagle:package:26131/2" type="model" library_version="11">
<description>CRCW1218 Thick Film, Rectangular Chip Resistors
Source: http://www.vishay.com .. dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R1218"/>
</packageinstances>
</package3d>
<package3d name="1812X7R" urn="urn:adsk.eagle:package:26130/2" type="model" library_version="11">
<description>Chip Monolithic Ceramic Capacitors Medium Voltage High Capacitance for General Use
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<packageinstances>
<packageinstance name="1812X7R"/>
</packageinstances>
</package3d>
<package3d name="R01005" urn="urn:adsk.eagle:package:26133/2" type="model" library_version="11">
<description>Chip, 0.40 X 0.20 X 0.16 mm body
&lt;p&gt;Chip package with body size 0.40 X 0.20 X 0.16 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="R01005"/>
</packageinstances>
</package3d>
<package3d name="CAPC1005X60" urn="urn:adsk.eagle:package:23626/2" type="model" library_version="11">
<description>Chip, 1.00 X 0.50 X 0.60 mm body
&lt;p&gt;Chip package with body size 1.00 X 0.50 X 0.60 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="C0402"/>
</packageinstances>
</package3d>
<package3d name="C0504" urn="urn:adsk.eagle:package:23624/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0504"/>
</packageinstances>
</package3d>
<package3d name="C0603" urn="urn:adsk.eagle:package:23616/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0603"/>
</packageinstances>
</package3d>
<package3d name="C0805" urn="urn:adsk.eagle:package:23617/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0805"/>
</packageinstances>
</package3d>
<package3d name="C1206" urn="urn:adsk.eagle:package:23618/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1206"/>
</packageinstances>
</package3d>
<package3d name="C1210" urn="urn:adsk.eagle:package:23619/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1210"/>
</packageinstances>
</package3d>
<package3d name="C1310" urn="urn:adsk.eagle:package:23620/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1310"/>
</packageinstances>
</package3d>
<package3d name="C1608" urn="urn:adsk.eagle:package:23621/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1608"/>
</packageinstances>
</package3d>
<package3d name="C1812" urn="urn:adsk.eagle:package:23622/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1812"/>
</packageinstances>
</package3d>
<package3d name="C1825" urn="urn:adsk.eagle:package:23623/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1825"/>
</packageinstances>
</package3d>
<package3d name="C2012" urn="urn:adsk.eagle:package:23625/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C2012"/>
</packageinstances>
</package3d>
<package3d name="C3216" urn="urn:adsk.eagle:package:23628/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3216"/>
</packageinstances>
</package3d>
<package3d name="C3225" urn="urn:adsk.eagle:package:23655/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3225"/>
</packageinstances>
</package3d>
<package3d name="C4532" urn="urn:adsk.eagle:package:23627/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4532"/>
</packageinstances>
</package3d>
<package3d name="C4564" urn="urn:adsk.eagle:package:23648/2" type="model" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4564"/>
</packageinstances>
</package3d>
<package3d name="C025-024X044" urn="urn:adsk.eagle:package:23630/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C025-024X044"/>
</packageinstances>
</package3d>
<package3d name="C025-025X050" urn="urn:adsk.eagle:package:23629/2" type="model" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 2.5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-025X050"/>
</packageinstances>
</package3d>
<package3d name="C025-030X050" urn="urn:adsk.eagle:package:23631/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 3 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-030X050"/>
</packageinstances>
</package3d>
<package3d name="C025-040X050" urn="urn:adsk.eagle:package:23634/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 4 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-040X050"/>
</packageinstances>
</package3d>
<package3d name="C025-050X050" urn="urn:adsk.eagle:package:23633/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-050X050"/>
</packageinstances>
</package3d>
<package3d name="C025-060X050" urn="urn:adsk.eagle:package:23632/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm, outline 6 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-060X050"/>
</packageinstances>
</package3d>
<package3d name="C025_050-024X070" urn="urn:adsk.eagle:package:23639/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<packageinstances>
<packageinstance name="C025_050-024X070"/>
</packageinstances>
</package3d>
<package3d name="C025_050-025X075" urn="urn:adsk.eagle:package:23641/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-035X075" urn="urn:adsk.eagle:package:23651/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-045X075" urn="urn:adsk.eagle:package:23635/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-055X075" urn="urn:adsk.eagle:package:23636/1" type="box" library_version="11">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-024X044" urn="urn:adsk.eagle:package:23643/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C050-024X044"/>
</packageinstances>
</package3d>
<package3d name="C050-025X075" urn="urn:adsk.eagle:package:23637/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C050-045X075" urn="urn:adsk.eagle:package:23638/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C050-030X075" urn="urn:adsk.eagle:package:23640/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 3 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-030X075"/>
</packageinstances>
</package3d>
<package3d name="C050-050X075" urn="urn:adsk.eagle:package:23665/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-050X075"/>
</packageinstances>
</package3d>
<package3d name="C050-055X075" urn="urn:adsk.eagle:package:23642/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-075X075" urn="urn:adsk.eagle:package:23645/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-075X075"/>
</packageinstances>
</package3d>
<package3d name="C050H075X075" urn="urn:adsk.eagle:package:23644/1" type="box" library_version="11">
<description>CAPACITOR
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050H075X075"/>
</packageinstances>
</package3d>
<package3d name="C075-032X103" urn="urn:adsk.eagle:package:23646/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-032X103"/>
</packageinstances>
</package3d>
<package3d name="C075-042X103" urn="urn:adsk.eagle:package:23656/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-042X103"/>
</packageinstances>
</package3d>
<package3d name="C075-052X106" urn="urn:adsk.eagle:package:23650/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-052X106"/>
</packageinstances>
</package3d>
<package3d name="C102-043X133" urn="urn:adsk.eagle:package:23647/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-043X133"/>
</packageinstances>
</package3d>
<package3d name="C102-054X133" urn="urn:adsk.eagle:package:23649/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-054X133"/>
</packageinstances>
</package3d>
<package3d name="C102-064X133" urn="urn:adsk.eagle:package:23653/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-064X133"/>
</packageinstances>
</package3d>
<package3d name="C102_152-062X184" urn="urn:adsk.eagle:package:23652/1" type="box" library_version="11">
<description>CAPACITOR
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<packageinstances>
<packageinstance name="C102_152-062X184"/>
</packageinstances>
</package3d>
<package3d name="C150-054X183" urn="urn:adsk.eagle:package:23669/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 5.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-054X183"/>
</packageinstances>
</package3d>
<package3d name="C150-064X183" urn="urn:adsk.eagle:package:23654/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 6.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-064X183"/>
</packageinstances>
</package3d>
<package3d name="C150-072X183" urn="urn:adsk.eagle:package:23657/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 7.2 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-072X183"/>
</packageinstances>
</package3d>
<package3d name="C150-084X183" urn="urn:adsk.eagle:package:23658/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 8.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-084X183"/>
</packageinstances>
</package3d>
<package3d name="C150-091X182" urn="urn:adsk.eagle:package:23659/1" type="box" library_version="11">
<description>CAPACITOR
grid 15 mm, outline 9.1 x 18.2 mm</description>
<packageinstances>
<packageinstance name="C150-091X182"/>
</packageinstances>
</package3d>
<package3d name="C225-062X268" urn="urn:adsk.eagle:package:23661/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-062X268"/>
</packageinstances>
</package3d>
<package3d name="C225-074X268" urn="urn:adsk.eagle:package:23660/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-074X268"/>
</packageinstances>
</package3d>
<package3d name="C225-087X268" urn="urn:adsk.eagle:package:23662/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-087X268"/>
</packageinstances>
</package3d>
<package3d name="C225-108X268" urn="urn:adsk.eagle:package:23663/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-108X268"/>
</packageinstances>
</package3d>
<package3d name="C225-113X268" urn="urn:adsk.eagle:package:23667/1" type="box" library_version="11">
<description>CAPACITOR
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-113X268"/>
</packageinstances>
</package3d>
<package3d name="C275-093X316" urn="urn:adsk.eagle:package:23701/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-093X316"/>
</packageinstances>
</package3d>
<package3d name="C275-113X316" urn="urn:adsk.eagle:package:23673/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-113X316"/>
</packageinstances>
</package3d>
<package3d name="C275-134X316" urn="urn:adsk.eagle:package:23664/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-134X316"/>
</packageinstances>
</package3d>
<package3d name="C275-205X316" urn="urn:adsk.eagle:package:23666/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-205X316"/>
</packageinstances>
</package3d>
<package3d name="C325-137X374" urn="urn:adsk.eagle:package:23672/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-137X374"/>
</packageinstances>
</package3d>
<package3d name="C325-162X374" urn="urn:adsk.eagle:package:23670/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-162X374"/>
</packageinstances>
</package3d>
<package3d name="C325-182X374" urn="urn:adsk.eagle:package:23668/1" type="box" library_version="11">
<description>CAPACITOR
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-182X374"/>
</packageinstances>
</package3d>
<package3d name="C375-192X418" urn="urn:adsk.eagle:package:23674/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-192X418"/>
</packageinstances>
</package3d>
<package3d name="C375-203X418" urn="urn:adsk.eagle:package:23671/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-203X418"/>
</packageinstances>
</package3d>
<package3d name="C050-035X075" urn="urn:adsk.eagle:package:23677/1" type="box" library_version="11">
<description>CAPACITOR
grid 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C375-155X418" urn="urn:adsk.eagle:package:23675/1" type="box" library_version="11">
<description>CAPACITOR
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-155X418"/>
</packageinstances>
</package3d>
<package3d name="C075-063X106" urn="urn:adsk.eagle:package:23678/1" type="box" library_version="11">
<description>CAPACITOR
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-063X106"/>
</packageinstances>
</package3d>
<package3d name="C275-154X316" urn="urn:adsk.eagle:package:23685/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-154X316"/>
</packageinstances>
</package3d>
<package3d name="C275-173X316" urn="urn:adsk.eagle:package:23676/1" type="box" library_version="11">
<description>CAPACITOR
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-173X316"/>
</packageinstances>
</package3d>
<package3d name="C0402K" urn="urn:adsk.eagle:package:23679/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0204 reflow solder
Metric Code Size 1005</description>
<packageinstances>
<packageinstance name="C0402K"/>
</packageinstances>
</package3d>
<package3d name="C0603K" urn="urn:adsk.eagle:package:23680/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0603 reflow solder
Metric Code Size 1608</description>
<packageinstances>
<packageinstance name="C0603K"/>
</packageinstances>
</package3d>
<package3d name="C0805K" urn="urn:adsk.eagle:package:23681/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 0805 reflow solder
Metric Code Size 2012</description>
<packageinstances>
<packageinstance name="C0805K"/>
</packageinstances>
</package3d>
<package3d name="C1206K" urn="urn:adsk.eagle:package:23682/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1206 reflow solder
Metric Code Size 3216</description>
<packageinstances>
<packageinstance name="C1206K"/>
</packageinstances>
</package3d>
<package3d name="C1210K" urn="urn:adsk.eagle:package:23683/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1210 reflow solder
Metric Code Size 3225</description>
<packageinstances>
<packageinstance name="C1210K"/>
</packageinstances>
</package3d>
<package3d name="C1812K" urn="urn:adsk.eagle:package:23686/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1812 reflow solder
Metric Code Size 4532</description>
<packageinstances>
<packageinstance name="C1812K"/>
</packageinstances>
</package3d>
<package3d name="C1825K" urn="urn:adsk.eagle:package:23684/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 1825 reflow solder
Metric Code Size 4564</description>
<packageinstances>
<packageinstance name="C1825K"/>
</packageinstances>
</package3d>
<package3d name="C2220K" urn="urn:adsk.eagle:package:23687/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 2220 reflow solderMetric Code Size 5650</description>
<packageinstances>
<packageinstance name="C2220K"/>
</packageinstances>
</package3d>
<package3d name="C2225K" urn="urn:adsk.eagle:package:23692/2" type="model" library_version="11">
<description>Ceramic Chip Capacitor KEMET 2225 reflow solderMetric Code Size 5664</description>
<packageinstances>
<packageinstance name="C2225K"/>
</packageinstances>
</package3d>
<package3d name="C0201" urn="urn:adsk.eagle:package:23690/2" type="model" library_version="11">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<packageinstances>
<packageinstance name="C0201"/>
</packageinstances>
</package3d>
<package3d name="C1808" urn="urn:adsk.eagle:package:23689/2" type="model" library_version="11">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C1808"/>
</packageinstances>
</package3d>
<package3d name="C3640" urn="urn:adsk.eagle:package:23693/2" type="model" library_version="11">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C3640"/>
</packageinstances>
</package3d>
<package3d name="C01005" urn="urn:adsk.eagle:package:23691/1" type="box" library_version="11">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C01005"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R-US" urn="urn:adsk.eagle:symbol:23200/1" library_version="11">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="C-US" urn="urn:adsk.eagle:symbol:23201/1" library_version="11">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1" x2="2.4892" y2="-1.8542" width="0.254" layer="94" curve="-37.878202"/>
<wire x1="-2.4668" y1="-1.8504" x2="0" y2="-1.0161" width="0.254" layer="94" curve="-37.373024"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-US_" urn="urn:adsk.eagle:component:23792/22" prefix="R" uservalue="yes" library_version="11">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23547/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="34" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23555/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="77" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23553/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="85" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23537/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23540/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="19" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23539/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23554/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23541/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23551/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23542/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23543/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23544/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23545/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23565/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23557/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23548/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23549/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23550/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23552/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23558/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23559/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26078/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23556/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="45" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23566/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="22" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23569/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23561/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23562/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23563/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23573/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23564/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23488/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="18" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23498/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="48" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23491/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="36" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23489/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23492/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23490/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23502/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23493/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="22" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23567/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23571/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="8" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23578/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23568/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23570/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23579/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23574/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23575/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23577/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23576/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23580/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23582/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23581/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23583/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23608/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23592/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23586/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23590/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23594/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23589/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23591/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23588/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26109/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26111/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26113/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26112/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23595/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23495/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23572/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26117/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTA55" package="VMTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26121/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTB60" package="VMTB60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26122/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA52" package="VTA52">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26116/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA53" package="VTA53">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26118/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA54" package="VTA54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26119/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA55" package="VTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26120/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA56" package="VTA56">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26129/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13310/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0001" package="WSC0001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26123/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0002" package="WSC0002">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26125/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC01/2" package="WSC01/2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26127/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC2515" package="WSC2515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26134/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC4527" package="WSC4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26126/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC6927" package="WSC6927">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26128/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26131/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="1812X7R" package="1812X7R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26130/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="01005" package="R01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26133/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="C-US" urn="urn:adsk.eagle:component:23794/44" prefix="C" uservalue="yes" library_version="11">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="C-US" x="0" y="0"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23626/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="16" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0504" package="C0504">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23624/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23616/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="37" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23617/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="63" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23618/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="24" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1210" package="C1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23619/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="6" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1310" package="C1310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23620/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23621/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1812" package="C1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23622/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1825" package="C1825">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23623/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23625/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3216" package="C3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23628/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3225" package="C3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23655/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C4532" package="C4532">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23627/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C4564" package="C4564">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23648/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-024X044" package="C025-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23630/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-025X050" package="C025-025X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23629/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-030X050" package="C025-030X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23631/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-040X050" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23634/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-050X050" package="C025-050X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23633/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025-060X050" package="C025-060X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23632/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C025_050-024X070" package="C025_050-024X070">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23639/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-025X075" package="C025_050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23641/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-035X075" package="C025_050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23651/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-045X075" package="C025_050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23635/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="025_050-055X075" package="C025_050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23636/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-024X044" package="C050-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23643/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="14" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-025X075" package="C050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23637/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-045X075" package="C050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23638/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-030X075" package="C050-030X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23640/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="5" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-050X075" package="C050-050X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23665/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-055X075" package="C050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23642/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-075X075" package="C050-075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23645/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050H075X075" package="C050H075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23644/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-032X103" package="C075-032X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23646/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-042X103" package="C075-042X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23656/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-052X106" package="C075-052X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23650/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-043X133" package="C102-043X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23647/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-054X133" package="C102-054X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23649/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102-064X133" package="C102-064X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23653/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="102_152-062X184" package="C102_152-062X184">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23652/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-054X183" package="C150-054X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23669/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-064X183" package="C150-064X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23654/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-072X183" package="C150-072X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23657/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-084X183" package="C150-084X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23658/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="150-091X182" package="C150-091X182">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23659/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-062X268" package="C225-062X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23661/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-074X268" package="C225-074X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23660/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-087X268" package="C225-087X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23662/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-108X268" package="C225-108X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23663/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="225-113X268" package="C225-113X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23667/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-093X316" package="C275-093X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23701/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-113X316" package="C275-113X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23673/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-134X316" package="C275-134X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23664/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-205X316" package="C275-205X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23666/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-137X374" package="C325-137X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23672/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-162X374" package="C325-162X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23670/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="325-182X374" package="C325-182X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23668/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-192X418" package="C375-192X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23674/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-203X418" package="C375-203X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23671/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="050-035X075" package="C050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23677/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="375-155X418" package="C375-155X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23675/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="075-063X106" package="C075-063X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23678/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-154X316" package="C275-154X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23685/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="275-173X316" package="C275-173X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23676/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0402K" package="C0402K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23679/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="4" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0603K" package="C0603K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23680/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="5" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0805K" package="C0805K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23681/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="19" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1206K" package="C1206K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23682/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1210K" package="C1210K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23683/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1812K" package="C1812K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23686/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1825K" package="C1825K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23684/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2220K" package="C2220K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23687/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C2225K" package="C2225K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23692/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C0201" package="C0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23690/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C1808" package="C1808">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23689/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="C3640" package="C3640">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23693/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
<device name="01005" package="C01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23691/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
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
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26943/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VSS" urn="urn:adsk.eagle:symbol:26944/1" library_version="1">
<wire x1="-1.27" y1="1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="0" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VSS" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+24V" urn="urn:adsk.eagle:symbol:26935/1" library_version="1">
<wire x1="1.27" y1="-0.635" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+24V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VDD" urn="urn:adsk.eagle:component:26970/1" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VSS" urn="urn:adsk.eagle:component:26973/1" prefix="VSS" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VSS" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
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
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
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
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+24V" urn="urn:adsk.eagle:component:26964/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+24V" x="0" y="0"/>
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
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOIC127P600X175-16N">
<description>&lt;b&gt;R-16 (SOIC)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.712" y="4.445" dx="1.525" dy="0.65" layer="1"/>
<smd name="2" x="-2.712" y="3.175" dx="1.525" dy="0.65" layer="1"/>
<smd name="3" x="-2.712" y="1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="4" x="-2.712" y="0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="5" x="-2.712" y="-0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="6" x="-2.712" y="-1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="7" x="-2.712" y="-3.175" dx="1.525" dy="0.65" layer="1"/>
<smd name="8" x="-2.712" y="-4.445" dx="1.525" dy="0.65" layer="1"/>
<smd name="9" x="2.712" y="-4.445" dx="1.525" dy="0.65" layer="1"/>
<smd name="10" x="2.712" y="-3.175" dx="1.525" dy="0.65" layer="1"/>
<smd name="11" x="2.712" y="-1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="12" x="2.712" y="-0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="13" x="2.712" y="0.635" dx="1.525" dy="0.65" layer="1"/>
<smd name="14" x="2.712" y="1.905" dx="1.525" dy="0.65" layer="1"/>
<smd name="15" x="2.712" y="3.175" dx="1.525" dy="0.65" layer="1"/>
<smd name="16" x="2.712" y="4.445" dx="1.525" dy="0.65" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.725" y1="5.25" x2="3.725" y2="5.25" width="0.05" layer="51"/>
<wire x1="3.725" y1="5.25" x2="3.725" y2="-5.25" width="0.05" layer="51"/>
<wire x1="3.725" y1="-5.25" x2="-3.725" y2="-5.25" width="0.05" layer="51"/>
<wire x1="-3.725" y1="-5.25" x2="-3.725" y2="5.25" width="0.05" layer="51"/>
<wire x1="-1.95" y1="4.95" x2="1.95" y2="4.95" width="0.1" layer="51"/>
<wire x1="1.95" y1="4.95" x2="1.95" y2="-4.95" width="0.1" layer="51"/>
<wire x1="1.95" y1="-4.95" x2="-1.95" y2="-4.95" width="0.1" layer="51"/>
<wire x1="-1.95" y1="-4.95" x2="-1.95" y2="4.95" width="0.1" layer="51"/>
<wire x1="-1.95" y1="3.68" x2="-0.68" y2="4.95" width="0.1" layer="51"/>
<wire x1="-1.6" y1="4.95" x2="1.6" y2="4.95" width="0.2" layer="21"/>
<wire x1="1.6" y1="4.95" x2="1.6" y2="-4.95" width="0.2" layer="21"/>
<wire x1="1.6" y1="-4.95" x2="-1.6" y2="-4.95" width="0.2" layer="21"/>
<wire x1="-1.6" y1="-4.95" x2="-1.6" y2="4.95" width="0.2" layer="21"/>
<wire x1="-3.475" y1="5.12" x2="-1.95" y2="5.12" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ADM3095EBRZ">
<wire x1="5.08" y1="2.54" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-20.32" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-20.32" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<text x="26.67" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="26.67" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="GND_1" x="0" y="0" length="middle" direction="pwr"/>
<pin name="VCC" x="0" y="-2.54" length="middle" direction="pwr"/>
<pin name="VIO" x="0" y="-5.08" length="middle" direction="pwr"/>
<pin name="TXD" x="0" y="-7.62" length="middle" direction="in"/>
<pin name="DE" x="0" y="-10.16" length="middle" direction="in"/>
<pin name="!RE" x="0" y="-12.7" length="middle" direction="in"/>
<pin name="RXD" x="0" y="-15.24" length="middle" direction="out"/>
<pin name="GND_2" x="0" y="-17.78" length="middle" direction="pwr"/>
<pin name="GND_8" x="30.48" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_7" x="30.48" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="B" x="30.48" y="-5.08" length="middle" rot="R180"/>
<pin name="GND_6" x="30.48" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_5" x="30.48" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="A" x="30.48" y="-12.7" length="middle" rot="R180"/>
<pin name="GND_4" x="30.48" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_3" x="30.48" y="-17.78" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADM3095EBRZ" prefix="IC">
<description>&lt;b&gt;Level 4 EMC Protected RS-485 Transceiver with Full +/-42 V Fault Protection&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/ADM3095EBRZ.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ADM3095EBRZ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P600X175-16N">
<connects>
<connect gate="G$1" pin="!RE" pad="6"/>
<connect gate="G$1" pin="A" pad="11"/>
<connect gate="G$1" pin="B" pad="14"/>
<connect gate="G$1" pin="DE" pad="5"/>
<connect gate="G$1" pin="GND_1" pad="1"/>
<connect gate="G$1" pin="GND_2" pad="8"/>
<connect gate="G$1" pin="GND_3" pad="9"/>
<connect gate="G$1" pin="GND_4" pad="10"/>
<connect gate="G$1" pin="GND_5" pad="12"/>
<connect gate="G$1" pin="GND_6" pad="13"/>
<connect gate="G$1" pin="GND_7" pad="15"/>
<connect gate="G$1" pin="GND_8" pad="16"/>
<connect gate="G$1" pin="RXD" pad="7"/>
<connect gate="G$1" pin="TXD" pad="4"/>
<connect gate="G$1" pin="VCC" pad="2"/>
<connect gate="G$1" pin="VIO" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Level 4 EMC Protected RS-485 Transceiver with Full +/-42 V Fault Protection" constant="no"/>
<attribute name="HEIGHT" value="1.75mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Analog Devices" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ADM3095EBRZ" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="584-ADM3095EBRZ" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=584-ADM3095EBRZ" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="IQD-Frequency-Products" urn="urn:adsk.eagle:library:90">
<description>&lt;b&gt;Crystals and Oscillators&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by IQD Frequency Products&lt;/author&gt;</description>
<packages>
<package name="2.6X2.1-4-PAD" urn="urn:adsk.eagle:footprint:3327/1" library_version="2">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-0.8" y="-0.6" dx="0.9" dy="0.8" layer="1"/>
<smd name="2" x="0.8" y="-0.6" dx="0.9" dy="0.8" layer="1"/>
<smd name="3" x="0.8" y="0.6" dx="0.9" dy="0.8" layer="1" rot="R180"/>
<smd name="4" x="-0.8" y="0.6" dx="0.9" dy="0.8" layer="1" rot="R180"/>
<text x="-3.24" y="2.04" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.54" y="-3.41" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-1.6" y1="1.4" x2="1.7" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.4" x2="1.7" y2="-1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.4" x2="-1.6" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-1.6" y1="-1.4" x2="-1.6" y2="1.4" width="0.127" layer="21"/>
<wire x1="-1.6" y1="1.4" x2="-2" y2="1.4" width="0.127" layer="21"/>
<wire x1="-2" y1="1.4" x2="-2" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.4" x2="-1.6" y2="-1.4" width="0.127" layer="21"/>
<circle x="-1.8" y="-1.7" radius="0.2" width="0" layer="21"/>
</package>
<package name="7.2X5.2-4-PAD" urn="urn:adsk.eagle:footprint:3328/1" library_version="2">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-2.54" y="-2.1" dx="1.8" dy="1.6" layer="1"/>
<smd name="2" x="2.54" y="-2.1" dx="1.8" dy="1.6" layer="1"/>
<smd name="3" x="2.54" y="2.1" dx="1.8" dy="1.6" layer="1" rot="R180"/>
<smd name="4" x="-2.54" y="2.1" dx="1.8" dy="1.6" layer="1" rot="R180"/>
<text x="-3.8192" y="4.215" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.1192" y="-5.493" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-5.5" y1="3.5" x2="4.63" y2="3.5" width="0.127" layer="21"/>
<wire x1="4.63" y1="3.5" x2="4.73" y2="-3.5" width="0.127" layer="21"/>
<wire x1="4.73" y1="-3.5" x2="-4.74" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-4.74" y1="-3.5" x2="-4.74" y2="3.46" width="0.127" layer="21"/>
<wire x1="-5.5" y1="3.5" x2="-5.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-3.5" x2="-4.74" y2="-3.5" width="0.127" layer="21"/>
<circle x="-5.1" y="-3.8" radius="0.2" width="0" layer="21"/>
</package>
<package name="3.4X2.7-4-PAD" urn="urn:adsk.eagle:footprint:3329/1" library_version="2">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<wire x1="-3.1" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-1.9" x2="-3.1" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.91" width="0.2" layer="21"/>
<wire x1="-2.42" y1="1.9" x2="-2.42" y2="-1.91" width="0.2" layer="21"/>
<wire x1="-3.1" y1="1.9" x2="-3.1" y2="-1.9" width="0.2032" layer="21"/>
<smd name="1" x="-1.1" y="-0.8" dx="1.4" dy="1.15" layer="1"/>
<smd name="2" x="1.1" y="-0.8" dx="1.4" dy="1.15" layer="1"/>
<smd name="3" x="1.1" y="0.8" dx="1.4" dy="1.15" layer="1" rot="R180"/>
<smd name="4" x="-1.1" y="0.8" dx="1.4" dy="1.15" layer="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-2.7" y="-2.3" radius="0.2" width="0" layer="21"/>
</package>
<package name="5.0X3.2-4-PAD" urn="urn:adsk.eagle:footprint:3330/1" library_version="2">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<wire x1="-3.3" y1="-2.5" x2="2.368" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="2.476" x2="-2.5" y2="-2.476" width="0.2032" layer="21"/>
<wire x1="2.368" y1="2.5" x2="-3.3" y2="2.5" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-2.476" x2="2.4" y2="2.476" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="2.5" x2="-3.3" y2="-2.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.25" y="-1.25" dx="1.4" dy="1.4" layer="1" rot="R90"/>
<smd name="2" x="1.25" y="-1.25" dx="1.4" dy="1.4" layer="1" rot="R90"/>
<smd name="3" x="1.25" y="1.25" dx="1.4" dy="1.4" layer="1" rot="R270"/>
<smd name="4" x="-1.25" y="1.25" dx="1.4" dy="1.4" layer="1" rot="R270"/>
<text x="3.04" y="4.39" size="1.27" layer="25" rot="R180">&gt;NAME</text>
<text x="-3.686" y="-4.608" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-2.9" y="-2.9" radius="0.2" width="0" layer="21"/>
</package>
<package name="5.2X3.4-4-PAD" urn="urn:adsk.eagle:footprint:3331/1" library_version="2">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<wire x1="-4.2" y1="-2.3" x2="3.368" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="2.276" x2="-3.3" y2="-2.176" width="0.2032" layer="21"/>
<wire x1="3.368" y1="2.3" x2="-4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="3.4" y1="-2.276" x2="3.4" y2="2.276" width="0.2032" layer="21"/>
<wire x1="-4.2" y1="2.3" x2="-4.2" y2="-2.3" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="-1.1" dx="1.4" dy="1.6" layer="1" rot="R90"/>
<smd name="2" x="2.1" y="-1.1" dx="1.4" dy="1.6" layer="1" rot="R90"/>
<smd name="3" x="2.1" y="1.1" dx="1.4" dy="1.6" layer="1" rot="R270"/>
<smd name="4" x="-2.1" y="1.1" dx="1.4" dy="1.6" layer="1" rot="R270"/>
<text x="3.04" y="4.39" size="1.27" layer="25" rot="R180">&gt;NAME</text>
<text x="-3.686" y="-4.608" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-3.7" y="-2.8" radius="0.2" width="0" layer="21"/>
</package>
<package name="2.0X1.6-4-PAD" urn="urn:adsk.eagle:footprint:3332/1" library_version="2">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-0.637" y="-0.487" dx="0.875" dy="0.775" layer="1"/>
<smd name="2" x="0.637" y="-0.487" dx="0.875" dy="0.775" layer="1"/>
<smd name="3" x="0.637" y="0.487" dx="0.875" dy="0.775" layer="1" rot="R180"/>
<smd name="4" x="-0.637" y="0.487" dx="0.875" dy="0.775" layer="1" rot="R180"/>
<text x="-2.27" y="1.77" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.67" y="-3.34" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-1.4" y1="1.3" x2="1.5" y2="1.3" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.3" x2="1.5" y2="-1.3" width="0.127" layer="21"/>
<wire x1="1.5" y1="-1.3" x2="-1.4" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-1.4" y1="-1.3" x2="-1.4" y2="1.3" width="0.127" layer="21"/>
<wire x1="-1.4" y1="1.3" x2="-1.9" y2="1.3" width="0.127" layer="21"/>
<wire x1="-1.9" y1="1.3" x2="-1.9" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-1.9" y1="-1.3" x2="-1.4" y2="-1.3" width="0.127" layer="21"/>
<circle x="-1.6" y="-1.6" radius="0.2" width="0" layer="21"/>
</package>
<package name="2.5X2-4-PAD" urn="urn:adsk.eagle:footprint:3333/1" library_version="2">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-0.85" y="-0.65" dx="1.2" dy="1" layer="1"/>
<smd name="2" x="0.85" y="-0.65" dx="1.2" dy="1" layer="1"/>
<smd name="3" x="0.85" y="0.65" dx="1.2" dy="1" layer="1" rot="R180"/>
<smd name="4" x="-0.85" y="0.65" dx="1.2" dy="1" layer="1" rot="R180"/>
<text x="-3.27" y="2.07" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.47" y="-3.54" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-2.1" y1="-1.5" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="1.5" x2="-2.1" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2.1" y1="1.5" x2="-2.1" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2.1" y1="1.5" x2="-2.6" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2.6" y1="1.5" x2="-2.6" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-1.5" x2="-2.1" y2="-1.5" width="0.127" layer="21"/>
<circle x="-2.3" y="-1.8" radius="0.2" width="0" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="2.6X2.1-4-PAD" urn="urn:adsk.eagle:package:3366/1" type="box" library_version="2">
<description>IQD Frequency Products SMD Package</description>
<packageinstances>
<packageinstance name="2.6X2.1-4-PAD"/>
</packageinstances>
</package3d>
<package3d name="7.2X5.2-4-PAD" urn="urn:adsk.eagle:package:3365/1" type="box" library_version="2">
<description>IQD Frequency Products SMD Package</description>
<packageinstances>
<packageinstance name="7.2X5.2-4-PAD"/>
</packageinstances>
</package3d>
<package3d name="3.4X2.7-4-PAD" urn="urn:adsk.eagle:package:3367/1" type="box" library_version="2">
<description>IQD Frequency Products SMD Package</description>
<packageinstances>
<packageinstance name="3.4X2.7-4-PAD"/>
</packageinstances>
</package3d>
<package3d name="5.0X3.2-4-PAD" urn="urn:adsk.eagle:package:3368/1" type="box" library_version="2">
<description>IQD Frequency Products SMD Package</description>
<packageinstances>
<packageinstance name="5.0X3.2-4-PAD"/>
</packageinstances>
</package3d>
<package3d name="5.2X3.4-4-PAD" urn="urn:adsk.eagle:package:3369/1" type="box" library_version="2">
<description>IQD Frequency Products SMD Package</description>
<packageinstances>
<packageinstance name="5.2X3.4-4-PAD"/>
</packageinstances>
</package3d>
<package3d name="2.0X1.6-4-PAD" urn="urn:adsk.eagle:package:3370/1" type="box" library_version="2">
<description>IQD Frequency Products SMD Package</description>
<packageinstances>
<packageinstance name="2.0X1.6-4-PAD"/>
</packageinstances>
</package3d>
<package3d name="2.5X2-4-PAD" urn="urn:adsk.eagle:package:3371/1" type="box" library_version="2">
<description>IQD Frequency Products SMD Package</description>
<packageinstances>
<packageinstance name="2.5X2-4-PAD"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="QG2" urn="urn:adsk.eagle:symbol:3326/1" library_version="2">
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="0" width="0.4064" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="2.54" y2="2.54" width="0.4064" layer="94"/>
<wire x1="2.54" y1="2.54" x2="6.35" y2="0" width="0.4064" layer="94"/>
<wire x1="6.35" y1="0" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="-3.175" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-3.175" x2="-1.27" y2="3.175" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="3.175" x2="-1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="3.175" x2="-1.27" y2="3.175" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-3.175" x2="-1.27" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.826" y1="-0.381" x2="-4.826" y2="0.381" width="0.254" layer="94"/>
<wire x1="-4.826" y1="0.381" x2="-2.794" y2="0.381" width="0.254" layer="94"/>
<wire x1="-2.794" y1="0.381" x2="-2.794" y2="-0.381" width="0.254" layer="94"/>
<wire x1="-4.826" y1="-0.381" x2="-2.794" y2="-0.381" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-1.016" x2="-3.81" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.016" x2="-2.54" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.016" x2="-3.81" y2="3.175" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.016" x2="-2.54" y2="1.016" width="0.254" layer="94"/>
<text x="-7.62" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-6.985" y="4.318" size="1.524" layer="95">VDD</text>
<text x="-6.985" y="-5.842" size="1.524" layer="95">VSS</text>
<text x="2.54" y="-5.842" size="1.524" layer="95">OUT</text>
<text x="2.54" y="5.588" size="1.524" layer="95">CON</text>
<pin name="VSS" x="-12.7" y="-5.08" visible="pad" length="middle" direction="pwr"/>
<pin name="VDD" x="-12.7" y="5.08" visible="pad" length="middle" direction="pwr"/>
<pin name="OUT" x="12.7" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="CON" x="12.7" y="5.08" visible="pad" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="OSC-OE" urn="urn:adsk.eagle:component:3380/2" prefix="OS" library_version="2">
<description>&lt;b&gt;OSCILLATOR WITH OE&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="QG2" x="0" y="0"/>
</gates>
<devices>
<device name="-CFPS-107" package="2.6X2.1-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3366/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-108" package="2.6X2.1-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3366/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-109" package="2.6X2.1-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3366/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-32" package="7.2X5.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3365/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-39" package="3.4X2.7-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3367/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-69" package="5.0X3.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3368/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-72" package="7.2X5.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3365/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-73" package="7.2X5.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3365/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-CFPS-9" package="5.2X3.4-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3369/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-IQXO-540" package="2.0X1.6-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3370/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-IQXO-541" package="2.0X1.6-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3370/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-IQXO-542" package="2.0X1.6-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3370/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-IQXO-793" package="2.5X2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3371/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-IQXO-794" package="2.5X2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3371/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="B3W-9000-Y1N">
<description>&lt;Illuminated Tactile Switches Illuminated Ylw LED White Cap&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="B3W-9_1-LED">
<description>&lt;b&gt;B3W-9_1-LED&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="3.25" y="-2.25" drill="1.1" diameter="1.65"/>
<pad name="2" x="-3.25" y="-2.25" drill="1.1" diameter="1.65"/>
<pad name="3" x="3.25" y="2.25" drill="1.1" diameter="1.65"/>
<pad name="4" x="-3.25" y="2.25" drill="1.1" diameter="1.65"/>
<pad name="5" x="0" y="3.6" drill="1.1" diameter="1.65"/>
<pad name="6" x="3.6" y="0" drill="1.1" diameter="1.65"/>
<text x="-0.406990625" y="-0.0433" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-0.406990625" y="-0.0433" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-5" y1="5" x2="5" y2="5" width="0.2" layer="51"/>
<wire x1="5" y1="5" x2="5" y2="-5" width="0.2" layer="51"/>
<wire x1="5" y1="-5" x2="-5" y2="-5" width="0.2" layer="51"/>
<wire x1="-5" y1="-5" x2="-5" y2="5" width="0.2" layer="51"/>
<wire x1="-5" y1="5" x2="-5" y2="-5" width="0.2" layer="21"/>
<wire x1="-5" y1="-5" x2="5" y2="-5" width="0.2" layer="21"/>
<wire x1="5" y1="-5" x2="5" y2="5" width="0.2" layer="21"/>
<wire x1="5" y1="5" x2="-5" y2="5" width="0.2" layer="21"/>
<circle x="5.623" y="-2.318" radius="0.045" width="0.2" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="B3W-9000-Y1N">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
<pin name="3" x="0" y="-5.08" length="middle"/>
<pin name="4" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="+" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="-" x="20.32" y="-5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="B3W-9000-Y1N" prefix="S">
<description>&lt;b&gt;Illuminated Tactile Switches Illuminated Ylw LED White Cap&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.mouser.com/ds/2/307/en-b3w-9-11824.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="B3W-9000-Y1N" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3W-9_1-LED">
<connects>
<connect gate="G$1" pin="+" pad="5"/>
<connect gate="G$1" pin="-" pad="6"/>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ALLIED_NUMBER" value="70176005" constant="no"/>
<attribute name="ALLIED_PRICE-STOCK" value="https://www.alliedelec.com/omron-electronic-components-b3w-9000-y1n/70176005/" constant="no"/>
<attribute name="DESCRIPTION" value="Illuminated Tactile Switches Illuminated Ylw LED White Cap" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Omron Electronics" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="B3W-9000-Y1N" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="653-B3W-9000-Y1N" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=653-B3W-9000-Y1N" constant="no"/>
<attribute name="RS_PART_NUMBER" value="" constant="no"/>
<attribute name="RS_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="inductor-neosid" urn="urn:adsk.eagle:library:241">
<description>&lt;b&gt;Neosid Chokes and Transformers&lt;/b&gt;&lt;p&gt;

Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Electronic Component Book, Part 2 : Chokes, Fixed Value Inductors
&lt;li&gt;Part 3 : Filters, Coil Assemblies, Thermoplastic Parts
&lt;li&gt;Part 4 : SMD Filters, Coils, Fixed Value Inductors
&lt;li&gt;www.neosid.de
&lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SM-1206" urn="urn:adsk.eagle:footprint:14558/1" library_version="3">
<description>SMD CHIP &lt;B&gt;INDUCTOR&lt;/B&gt;&lt;p&gt;
body 1206</description>
<wire x1="1.3" y1="0.7" x2="1.3" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.3" y1="0.6" x2="1.3" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.3" y1="-0.6" x2="1.3" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="1.3" y1="-0.7" x2="2.1" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="2.1" y1="-0.7" x2="2.1" y2="0.7" width="0.2032" layer="51"/>
<wire x1="2.1" y1="0.7" x2="1.3" y2="0.7" width="0.2032" layer="51"/>
<wire x1="-2.1" y1="0.7" x2="-2.1" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="-2.1" y1="-0.7" x2="-1.3" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="-0.7" x2="-1.3" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="-0.6" x2="-1.3" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="0.6" x2="-1.3" y2="0.7" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="0.7" x2="-2.1" y2="0.7" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="-0.6" x2="-0.9" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="-0.9" y1="-0.6" x2="0.9" y2="-0.6" width="0.2032" layer="21"/>
<wire x1="0.9" y1="-0.6" x2="1.3" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.3" y1="0.6" x2="0.9" y2="0.6" width="0.2032" layer="51"/>
<wire x1="0.9" y1="0.6" x2="-0.9" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.9" y1="0.6" x2="-1.3" y2="0.6" width="0.2032" layer="51"/>
<smd name="1" x="-1.65" y="0" dx="1.2" dy="1.8" layer="1"/>
<smd name="2" x="1.65" y="0" dx="1.2" dy="1.8" layer="1"/>
<text x="-2.143" y="0.997" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.208" y="-2.308" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="SM-1206" urn="urn:adsk.eagle:package:14693/2" type="model" library_version="3">
<description>SMD CHIP INDUCTOR
body 1206</description>
<packageinstances>
<packageinstance name="SM-1206"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="L" urn="urn:adsk.eagle:symbol:14504/1" library_version="3">
<text x="-3.81" y="1.778" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.556" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-3.81" y1="-1.27" x2="3.81" y2="1.27" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SM-1206" urn="urn:adsk.eagle:component:14747/3" prefix="L" uservalue="yes" library_version="3">
<description>&lt;b&gt;INDUCTOR&lt;/b&gt;&lt;p&gt;
SMD chip inductor</description>
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SM-1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14693/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="maxim" urn="urn:adsk.eagle:library:269">
<description>&lt;b&gt;Maxim Components&lt;/b&gt;&lt;p&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SO20L" urn="urn:adsk.eagle:footprint:17340/1" library_version="4">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt;</description>
<wire x1="6.1214" y1="3.7338" x2="-6.1214" y2="3.7338" width="0.1524" layer="21"/>
<wire x1="6.1214" y1="-3.7338" x2="6.5024" y2="-3.3528" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.1214" y2="3.7338" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.1214" y1="3.7338" x2="6.5024" y2="3.3528" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.5024" y1="-3.3528" x2="-6.1214" y2="-3.7338" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.1214" y1="-3.7338" x2="6.1214" y2="-3.7338" width="0.1524" layer="21"/>
<wire x1="6.5024" y1="-3.3528" x2="6.5024" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.5024" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="-1.27" x2="-6.5024" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-3.3782" x2="6.477" y2="-3.3782" width="0.0508" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="-0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="17" x="-1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="18" x="-3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="19" x="-4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="20" x="-5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.826" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="-3.556" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-5.969" y1="-3.8608" x2="-5.461" y2="-3.7338" layer="21"/>
<rectangle x1="-5.969" y1="-5.334" x2="-5.461" y2="-3.8608" layer="51"/>
<rectangle x1="-4.699" y1="-3.8608" x2="-4.191" y2="-3.7338" layer="21"/>
<rectangle x1="-4.699" y1="-5.334" x2="-4.191" y2="-3.8608" layer="51"/>
<rectangle x1="-3.429" y1="-3.8608" x2="-2.921" y2="-3.7338" layer="21"/>
<rectangle x1="-3.429" y1="-5.334" x2="-2.921" y2="-3.8608" layer="51"/>
<rectangle x1="-2.159" y1="-3.8608" x2="-1.651" y2="-3.7338" layer="21"/>
<rectangle x1="-2.159" y1="-5.334" x2="-1.651" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-5.334" x2="-0.381" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-3.8608" x2="-0.381" y2="-3.7338" layer="21"/>
<rectangle x1="0.381" y1="-3.8608" x2="0.889" y2="-3.7338" layer="21"/>
<rectangle x1="0.381" y1="-5.334" x2="0.889" y2="-3.8608" layer="51"/>
<rectangle x1="1.651" y1="-3.8608" x2="2.159" y2="-3.7338" layer="21"/>
<rectangle x1="1.651" y1="-5.334" x2="2.159" y2="-3.8608" layer="51"/>
<rectangle x1="2.921" y1="-3.8608" x2="3.429" y2="-3.7338" layer="21"/>
<rectangle x1="2.921" y1="-5.334" x2="3.429" y2="-3.8608" layer="51"/>
<rectangle x1="-5.969" y1="3.8608" x2="-5.461" y2="5.334" layer="51"/>
<rectangle x1="-5.969" y1="3.7338" x2="-5.461" y2="3.8608" layer="21"/>
<rectangle x1="-4.699" y1="3.7338" x2="-4.191" y2="3.8608" layer="21"/>
<rectangle x1="-4.699" y1="3.8608" x2="-4.191" y2="5.334" layer="51"/>
<rectangle x1="-3.429" y1="3.7338" x2="-2.921" y2="3.8608" layer="21"/>
<rectangle x1="-3.429" y1="3.8608" x2="-2.921" y2="5.334" layer="51"/>
<rectangle x1="-2.159" y1="3.7338" x2="-1.651" y2="3.8608" layer="21"/>
<rectangle x1="-2.159" y1="3.8608" x2="-1.651" y2="5.334" layer="51"/>
<rectangle x1="-0.889" y1="3.7338" x2="-0.381" y2="3.8608" layer="21"/>
<rectangle x1="-0.889" y1="3.8608" x2="-0.381" y2="5.334" layer="51"/>
<rectangle x1="0.381" y1="3.7338" x2="0.889" y2="3.8608" layer="21"/>
<rectangle x1="0.381" y1="3.8608" x2="0.889" y2="5.334" layer="51"/>
<rectangle x1="1.651" y1="3.7338" x2="2.159" y2="3.8608" layer="21"/>
<rectangle x1="1.651" y1="3.8608" x2="2.159" y2="5.334" layer="51"/>
<rectangle x1="2.921" y1="3.7338" x2="3.429" y2="3.8608" layer="21"/>
<rectangle x1="2.921" y1="3.8608" x2="3.429" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="3.7338" x2="4.699" y2="3.8608" layer="21"/>
<rectangle x1="5.461" y1="3.7338" x2="5.969" y2="3.8608" layer="21"/>
<rectangle x1="4.191" y1="3.8608" x2="4.699" y2="5.334" layer="51"/>
<rectangle x1="5.461" y1="3.8608" x2="5.969" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="-3.8608" x2="4.699" y2="-3.7338" layer="21"/>
<rectangle x1="5.461" y1="-3.8608" x2="5.969" y2="-3.7338" layer="21"/>
<rectangle x1="4.191" y1="-5.334" x2="4.699" y2="-3.8608" layer="51"/>
<rectangle x1="5.461" y1="-5.334" x2="5.969" y2="-3.8608" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="SO20L" urn="urn:adsk.eagle:package:17520/2" type="model" library_version="4">
<description>Small Outline Package</description>
<packageinstances>
<packageinstance name="SO20L"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MAX203E" urn="urn:adsk.eagle:symbol:17381/1" library_version="4">
<wire x1="-10.16" y1="17.78" x2="10.16" y2="17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="-10.16" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="-20.32" width="0.4064" layer="94"/>
<text x="-10.16" y="18.415" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="C1+" x="-12.7" y="15.24" length="short" direction="pas"/>
<pin name="C1-" x="-12.7" y="10.16" length="short" direction="pas"/>
<pin name="C2+/1" x="-12.7" y="5.08" length="short" direction="pas"/>
<pin name="C2-/1" x="-12.7" y="-2.54" length="short" direction="pas"/>
<pin name="T1IN" x="-15.24" y="-10.16" length="middle" direction="in"/>
<pin name="T2IN" x="-15.24" y="-12.7" length="middle" direction="in"/>
<pin name="R1OUT" x="-15.24" y="-15.24" length="middle" direction="out"/>
<pin name="R2OUT" x="-15.24" y="-17.78" length="middle" direction="out"/>
<pin name="V+" x="12.7" y="12.7" length="short" direction="pas" rot="R180"/>
<pin name="V-/1" x="12.7" y="7.62" length="short" direction="pas" rot="R180"/>
<pin name="T1OUT" x="15.24" y="-10.16" length="middle" direction="out" rot="R180"/>
<pin name="T2OUT" x="15.24" y="-12.7" length="middle" direction="out" rot="R180"/>
<pin name="R1IN" x="15.24" y="-15.24" length="middle" direction="in" rot="R180"/>
<pin name="R2IN" x="15.24" y="-17.78" length="middle" direction="in" rot="R180"/>
<pin name="C2+/2" x="-12.7" y="2.54" length="short" direction="pas"/>
<pin name="C2-/2" x="-12.7" y="-5.08" length="short" direction="pas"/>
<pin name="V-/2" x="12.7" y="5.08" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="PWR2GND" urn="urn:adsk.eagle:symbol:17206/1" library_version="4">
<text x="1.778" y="2.54" size="1.016" layer="95" rot="R90">VCC</text>
<text x="4.064" y="-5.08" size="1.016" layer="95" rot="R90">GND</text>
<text x="-1.27" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<pin name="GND@1" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@2" x="2.54" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX203ECWP" urn="urn:adsk.eagle:component:17957/3" prefix="IC" library_version="4">
<description>&lt;b&gt;RS232 TRANSCEIVER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MAX203E" x="0" y="0"/>
<gate name="P" symbol="PWR2GND" x="33.02" y="-2.54" addlevel="request"/>
</gates>
<devices>
<device name="" package="SO20L">
<connects>
<connect gate="G$1" pin="C1+" pad="13"/>
<connect gate="G$1" pin="C1-" pad="14"/>
<connect gate="G$1" pin="C2+/1" pad="12"/>
<connect gate="G$1" pin="C2+/2" pad="15"/>
<connect gate="G$1" pin="C2-/1" pad="11"/>
<connect gate="G$1" pin="C2-/2" pad="16"/>
<connect gate="G$1" pin="R1IN" pad="4"/>
<connect gate="G$1" pin="R1OUT" pad="3"/>
<connect gate="G$1" pin="R2IN" pad="19"/>
<connect gate="G$1" pin="R2OUT" pad="20"/>
<connect gate="G$1" pin="T1IN" pad="2"/>
<connect gate="G$1" pin="T1OUT" pad="5"/>
<connect gate="G$1" pin="T2IN" pad="1"/>
<connect gate="G$1" pin="T2OUT" pad="18"/>
<connect gate="G$1" pin="V+" pad="8"/>
<connect gate="G$1" pin="V-/1" pad="10"/>
<connect gate="G$1" pin="V-/2" pad="17"/>
<connect gate="P" pin="GND@1" pad="6"/>
<connect gate="P" pin="GND@2" pad="9"/>
<connect gate="P" pin="VCC" pad="7"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:17520/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="MAX203ECWP+G36" constant="no"/>
<attribute name="OC_FARNELL" value="1224204" constant="no"/>
<attribute name="OC_NEWARK" value="89K3435" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MAX6818">
<packages>
<package name="SSOP20">
<description>&lt;b&gt;Shrink Small Outline Package&lt;/b&gt;&lt;p&gt;
package type SS</description>
<wire x1="-3.8" y1="-2.6" x2="3.8" y2="-2.6" width="0.2032" layer="51"/>
<wire x1="3.8" y1="-2.6" x2="3.8" y2="2.6" width="0.2032" layer="51"/>
<wire x1="3.8" y1="2.6" x2="-3.8" y2="2.6" width="0.2032" layer="51"/>
<text x="-4.21468125" y="-2.60526875" size="1.27263125" layer="25" rot="R90">&gt;NAME</text>
<text x="5.51058125" y="-2.602059375" size="1.27105" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-3.106740625" y1="-3.942009375" x2="-2.7472" y2="-2.6416" layer="51"/>
<rectangle x1="-2.460059375" y1="-3.9485" x2="-2.0973" y2="-2.6416" layer="51"/>
<rectangle x1="-1.806090625" y1="-3.943959375" x2="-1.4473" y2="-2.6416" layer="51"/>
<rectangle x1="-1.154159375" y1="-3.9413" x2="-0.7973" y2="-2.6416" layer="51"/>
<rectangle x1="-0.504309375" y1="-3.948040625" x2="-0.1473" y2="-2.6416" layer="51"/>
<rectangle x1="0.147428125" y1="-3.945759375" x2="0.5027" y2="-2.6416" layer="51"/>
<rectangle x1="0.79856875" y1="-3.944259375" x2="1.1527" y2="-2.6416" layer="51"/>
<rectangle x1="1.45246875" y1="-3.95106875" x2="1.8029" y2="-2.6416" layer="51"/>
<rectangle x1="2.102990625" y1="-3.94768125" x2="2.4529" y2="-2.6416" layer="51"/>
<rectangle x1="2.755190625" y1="-3.948309375" x2="3.1029" y2="-2.6416" layer="51"/>
<rectangle x1="2.752590625" y1="2.64688125" x2="3.1027" y2="3.937" layer="51"/>
<rectangle x1="2.100190625" y1="2.6455" x2="2.4527" y2="3.937" layer="51"/>
<rectangle x1="1.45041875" y1="2.64766875" x2="1.8027" y2="3.937" layer="51"/>
<rectangle x1="0.7988125" y1="2.64695" x2="1.1528" y2="3.937" layer="51"/>
<rectangle x1="0.147325" y1="2.64381875" x2="0.5028" y2="3.937" layer="51"/>
<rectangle x1="-0.503915625" y1="2.648" x2="-0.1471" y2="3.937" layer="51"/>
<rectangle x1="-1.15435" y1="2.645390625" x2="-0.7971" y2="3.937" layer="51"/>
<rectangle x1="-1.80343125" y1="2.64268125" x2="-1.4471" y2="3.937" layer="51"/>
<rectangle x1="-2.459759375" y1="2.649190625" x2="-2.0971" y2="3.937" layer="51"/>
<rectangle x1="-3.11021875" y1="2.648" x2="-2.7471" y2="3.937" layer="51"/>
<wire x1="-3.82" y1="-2.6" x2="-3.82" y2="2.6" width="0.2032" layer="51"/>
<circle x="-2.921" y="-1.143" radius="0.567959375" width="0.127" layer="21"/>
<smd name="EN_L" x="-2.925" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN1" x="-2.275" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN2" x="-1.625" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN3" x="-0.975" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN4" x="-0.325" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN5" x="0.325" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN6" x="0.975" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN7" x="1.625" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="IN8" x="2.275" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="GND" x="2.925" y="-3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="CH_L" x="2.925" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT8" x="2.275" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT7" x="1.625" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT6" x="0.975" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT5" x="0.325" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT4" x="-0.325" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT3" x="-0.975" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT2" x="-1.625" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="OUT1" x="-2.275" y="3.879" dx="0.381" dy="1.9304" layer="1"/>
<smd name="VCC" x="-2.917" y="3.868" dx="0.381" dy="1.9304" layer="1" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="MAX6818">
<description>Octal Switch Debounce and ESD protection circuit</description>
<wire x1="-20.32" y1="30.48" x2="17.78" y2="30.48" width="0.254" layer="94"/>
<wire x1="17.78" y1="30.48" x2="17.78" y2="-30.48" width="0.254" layer="94"/>
<wire x1="17.78" y1="-30.48" x2="-20.32" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-30.48" x2="-20.32" y2="30.48" width="0.254" layer="94"/>
<text x="-7.63086875" y="12.7181" size="2.54361875" layer="96">&gt;VALUE</text>
<text x="-17.829" y="35.658" size="1.7829" layer="95">&gt;NAME</text>
<pin name="IN1" x="-25.4" y="10.16" visible="pin" length="middle"/>
<pin name="IN2" x="-25.4" y="5.08" visible="pin" length="middle"/>
<pin name="IN3" x="-25.4" y="0" visible="pin" length="middle"/>
<pin name="IN4" x="-25.4" y="-5.08" visible="pin" length="middle"/>
<pin name="IN5" x="-25.4" y="-10.16" visible="pin" length="middle"/>
<pin name="IN6" x="-25.4" y="-15.24" visible="pin" length="middle"/>
<pin name="IN7" x="-25.4" y="-20.32" visible="pin" length="middle"/>
<pin name="IN8" x="-25.4" y="-25.4" visible="pin" length="middle"/>
<pin name="GND" x="0" y="-35.56" visible="pin" length="middle" rot="R90"/>
<pin name="OUT1" x="22.86" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="OUT2" x="22.86" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="OUT3" x="22.86" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="OUT4" x="22.86" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="OUT5" x="22.86" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="OUT6" x="22.86" y="-15.24" visible="pin" length="middle" rot="R180"/>
<pin name="OUT7" x="22.86" y="-20.32" visible="pin" length="middle" rot="R180"/>
<pin name="OUT8" x="22.86" y="-25.4" visible="pin" length="middle" rot="R180"/>
<pin name="CH_L" x="22.86" y="20.32" visible="pin" length="middle" rot="R180"/>
<pin name="EN_L" x="22.86" y="25.4" visible="pin" length="middle" rot="R180"/>
<pin name="VCC" x="0" y="35.56" visible="pin" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX6818">
<gates>
<gate name="G$1" symbol="MAX6818" x="-2.54" y="2.54"/>
</gates>
<devices>
<device name="" package="SSOP20">
<connects>
<connect gate="G$1" pin="CH_L" pad="CH_L"/>
<connect gate="G$1" pin="EN_L" pad="EN_L"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="IN1" pad="IN1"/>
<connect gate="G$1" pin="IN2" pad="IN2"/>
<connect gate="G$1" pin="IN3" pad="IN3"/>
<connect gate="G$1" pin="IN4" pad="IN4"/>
<connect gate="G$1" pin="IN5" pad="IN5"/>
<connect gate="G$1" pin="IN6" pad="IN6"/>
<connect gate="G$1" pin="IN7" pad="IN7"/>
<connect gate="G$1" pin="IN8" pad="IN8"/>
<connect gate="G$1" pin="OUT1" pad="OUT1"/>
<connect gate="G$1" pin="OUT2" pad="OUT2"/>
<connect gate="G$1" pin="OUT3" pad="OUT3"/>
<connect gate="G$1" pin="OUT4" pad="OUT4"/>
<connect gate="G$1" pin="OUT5" pad="OUT5"/>
<connect gate="G$1" pin="OUT6" pad="OUT6"/>
<connect gate="G$1" pin="OUT7" pad="OUT7"/>
<connect gate="G$1" pin="OUT8" pad="OUT8"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" "/>
<attribute name="MF" value="Maxim Integrated"/>
<attribute name="MP" value="MAX6818"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="polyfuse-smd_10">
<description>&lt;b&gt;Littelfuse Polyfuse Devices&lt;/b&gt;&lt;br&gt;
(SMD components)&lt;br&gt;
&lt;br&gt;
Version 1.0&lt;br&gt;
&amp;copy; 2015 Samuel Lourenço</description>
<packages>
<package name="0402L">
<description>&lt;b&gt;0402L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0402l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0402l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<smd name="2" x="0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<text x="-0.45" y="0.75" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.45" y="-2.05" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-0.3" y1="0.25" x2="-0.5" y2="0.05" width="0.1016" layer="51" curve="-90"/>
<wire x1="-0.5" y1="0.05" x2="-0.5" y2="-0.05" width="0.1016" layer="51"/>
<wire x1="-0.3" y1="-0.25" x2="-0.5" y2="-0.05" width="0.1016" layer="51" curve="90"/>
<wire x1="0.3" y1="-0.25" x2="0.5" y2="-0.05" width="0.1016" layer="51" curve="-90"/>
<wire x1="0.3" y1="0.25" x2="0.5" y2="0.05" width="0.1016" layer="51" curve="90"/>
<wire x1="0.5" y1="0.05" x2="0.5" y2="-0.05" width="0.1016" layer="51"/>
<wire x1="-0.3" y1="0.25" x2="-0.2" y2="0.25" width="0.1016" layer="51"/>
<wire x1="-0.3" y1="-0.25" x2="-0.2" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="0.3" y1="0.25" x2="0.2" y2="0.25" width="0.1016" layer="51"/>
<wire x1="0.3" y1="-0.25" x2="0.2" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.25" x2="-0.2" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="0.2" y1="0.25" x2="0.2" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="0.2" y1="-0.25" x2="0.04" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="-0.04" y1="-0.25" x2="0.04" y2="-0.25" width="0.1016" layer="21"/>
<wire x1="-0.04" y1="0.25" x2="0.04" y2="0.25" width="0.1016" layer="21"/>
<wire x1="-0.2" y1="-0.25" x2="-0.04" y2="-0.25" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.25" x2="-0.04" y2="0.25" width="0.1016" layer="51"/>
<wire x1="0.2" y1="0.25" x2="0.04" y2="0.25" width="0.1016" layer="51"/>
</package>
<package name="0603L">
<description>&lt;b&gt;0603L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0603l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0603l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-0.9" y="0" dx="1" dy="1" layer="1"/>
<smd name="2" x="0.9" y="0" dx="1" dy="1" layer="1"/>
<text x="-0.75" y="0.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.75" y="-2.2" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="0.8" y1="0.4" x2="0.8" y2="0.2" width="0.1016" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.8" y2="0.2" width="0.1016" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="-0.4" y2="0.4" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="0.4" x2="-0.24" y2="0.4" width="0.1016" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.4" y2="-0.4" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="-0.4" x2="-0.24" y2="-0.4" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.4" y2="0.4" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.4" x2="0.24" y2="0.4" width="0.1016" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="0.4" y2="-0.4" width="0.1016" layer="51"/>
<wire x1="0.4" y1="-0.4" x2="0.24" y2="-0.4" width="0.1016" layer="51"/>
<wire x1="-0.24" y1="0.4" x2="0.24" y2="0.4" width="0.1016" layer="21"/>
<wire x1="-0.24" y1="-0.4" x2="0.24" y2="-0.4" width="0.1016" layer="21"/>
<wire x1="-0.4" y1="0.4" x2="-0.4" y2="-0.4" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.4" x2="0.4" y2="-0.4" width="0.1016" layer="51"/>
<wire x1="0.8" y1="-0.2" x2="0.8" y2="0.2" width="0.1016" layer="51" curve="-180"/>
<wire x1="-0.8" y1="0.2" x2="-0.8" y2="-0.2" width="0.1016" layer="51" curve="-180"/>
<wire x1="-0.8" y1="-0.2" x2="-0.8" y2="-0.4" width="0.1016" layer="51"/>
<wire x1="0.8" y1="-0.2" x2="0.8" y2="-0.4" width="0.1016" layer="51"/>
</package>
<package name="0805L">
<description>&lt;b&gt;0805L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0805l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0805l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-1.1" y="0" dx="1" dy="1.5" layer="1"/>
<smd name="2" x="1.1" y="0" dx="1" dy="1.5" layer="1"/>
<text x="-1" y="1.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2.45" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="1.05" y1="0.65" x2="1.05" y2="0.2" width="0.1524" layer="51"/>
<wire x1="-1.05" y1="0.65" x2="-1.05" y2="0.2" width="0.1524" layer="51"/>
<wire x1="-1.05" y1="0.65" x2="-0.6" y2="0.65" width="0.1524" layer="51"/>
<wire x1="-0.6" y1="0.65" x2="-0.42" y2="0.65" width="0.1524" layer="51"/>
<wire x1="-1.05" y1="-0.65" x2="-0.6" y2="-0.65" width="0.1524" layer="51"/>
<wire x1="-0.6" y1="-0.65" x2="-0.42" y2="-0.65" width="0.1524" layer="51"/>
<wire x1="1.05" y1="0.65" x2="0.6" y2="0.65" width="0.1524" layer="51"/>
<wire x1="0.6" y1="0.65" x2="0.42" y2="0.65" width="0.1524" layer="51"/>
<wire x1="1.05" y1="-0.65" x2="0.6" y2="-0.65" width="0.1524" layer="51"/>
<wire x1="0.6" y1="-0.65" x2="0.42" y2="-0.65" width="0.1524" layer="51"/>
<wire x1="-0.42" y1="0.65" x2="0.42" y2="0.65" width="0.1524" layer="21"/>
<wire x1="-0.42" y1="-0.65" x2="0.42" y2="-0.65" width="0.1524" layer="21"/>
<wire x1="-0.6" y1="0.65" x2="-0.6" y2="-0.65" width="0.1524" layer="51"/>
<wire x1="0.6" y1="0.65" x2="0.6" y2="-0.65" width="0.1524" layer="51"/>
<wire x1="1.05" y1="-0.2" x2="1.05" y2="0.2" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.05" y1="0.2" x2="-1.05" y2="-0.2" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.05" y1="-0.2" x2="-1.05" y2="-0.65" width="0.1524" layer="51"/>
<wire x1="1.05" y1="-0.2" x2="1.05" y2="-0.65" width="0.1524" layer="51"/>
</package>
<package name="1206L">
<description>&lt;b&gt;1206L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_1206l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_1206l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-1.4" y="0" dx="1" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1" dy="1.8" layer="1"/>
<text x="-1.55" y="1.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.55" y="-2.6" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="1.6" y1="0.8" x2="1.6" y2="0.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="0.8" x2="-1.6" y2="0.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="0.8" x2="-1.1" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="0.8" x2="-0.72" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-0.8" x2="-1.1" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-0.8" x2="-0.72" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="1.6" y1="0.8" x2="1.1" y2="0.8" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.8" x2="0.72" y2="0.8" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-0.8" x2="1.1" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-0.8" x2="0.72" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-0.72" y1="0.8" x2="0.72" y2="0.8" width="0.1524" layer="21"/>
<wire x1="-0.72" y1="-0.8" x2="0.72" y2="-0.8" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="0.8" x2="-1.1" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="1.1" y1="0.8" x2="1.1" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-0.25" x2="1.6" y2="0.25" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.6" y1="0.25" x2="-1.6" y2="-0.25" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.6" y1="-0.25" x2="-1.6" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-0.25" x2="1.6" y2="-0.8" width="0.1524" layer="51"/>
</package>
<package name="1210L">
<description>&lt;b&gt;1210L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_1210l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_1210l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-1.4" y="0" dx="1" dy="2.5" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1" dy="2.5" layer="1"/>
<text x="-1.55" y="1.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.55" y="-2.95" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="1.6" y1="1.25" x2="1.6" y2="0.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.6" y2="0.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="1.25" x2="-1.1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="1.25" x2="-0.72" y2="1.25" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1.1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="-1.1" y1="-1.25" x2="-0.72" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1.1" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.1" y1="1.25" x2="0.72" y2="1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="1.1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.1" y1="-1.25" x2="0.72" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="-0.72" y1="1.25" x2="0.72" y2="1.25" width="0.1524" layer="21"/>
<wire x1="-0.72" y1="-1.25" x2="0.72" y2="-1.25" width="0.1524" layer="21"/>
<wire x1="-1.1" y1="1.25" x2="-1.1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.1" y1="1.25" x2="1.1" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-0.25" x2="1.6" y2="0.25" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.6" y1="0.25" x2="-1.6" y2="-0.25" width="0.1524" layer="51" curve="-180"/>
<wire x1="-1.6" y1="-0.25" x2="-1.6" y2="-1.25" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-0.25" x2="1.6" y2="-1.25" width="0.1524" layer="51"/>
</package>
<package name="1812L">
<description>&lt;b&gt;1812L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_1812l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_1812l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-2.62" y="0" dx="1.78" dy="3.15" layer="1"/>
<smd name="2" x="2.62" y="0" dx="1.78" dy="3.15" layer="1"/>
<text x="-2.2" y="2" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2" y="-3.3" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="2.25" y1="1.6" x2="2.25" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="0.4" width="0.1524" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-1.55" y2="1.6" width="0.1524" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-1.55" y2="-1.6" width="0.1524" layer="51"/>
<wire x1="2.25" y1="1.6" x2="1.55" y2="1.6" width="0.1524" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="1.55" y2="-1.6" width="0.1524" layer="51"/>
<wire x1="-1.5" y1="1.6" x2="1.5" y2="1.6" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="-1.6" x2="1.5" y2="-1.6" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="1.6" x2="-1.5" y2="-1.6" width="0.1524" layer="21"/>
<wire x1="1.5" y1="1.6" x2="1.5" y2="-1.6" width="0.1524" layer="21"/>
<wire x1="2.25" y1="-0.4" x2="2.25" y2="0.4" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.25" y1="0.4" x2="-2.25" y2="-0.4" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.25" y1="-0.4" x2="-2.25" y2="-1.6" width="0.1524" layer="51"/>
<wire x1="2.25" y1="-0.4" x2="2.25" y2="-1.6" width="0.1524" layer="51"/>
<wire x1="-1.55" y1="1.6" x2="-1.5" y2="1.6" width="0.1524" layer="21"/>
<wire x1="1.5" y1="1.6" x2="1.55" y2="1.6" width="0.1524" layer="21"/>
<wire x1="-1.55" y1="-1.6" x2="-1.5" y2="-1.6" width="0.1524" layer="21"/>
<wire x1="1.5" y1="-1.6" x2="1.55" y2="-1.6" width="0.1524" layer="21"/>
</package>
<package name="2920L">
<description>&lt;b&gt;2920L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_2920l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_2920l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-3.3" y="0" dx="2" dy="5.3" layer="1"/>
<smd name="2" x="3.3" y="0" dx="2" dy="5.3" layer="1"/>
<text x="-3.65" y="3.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.65" y="-4.35" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="3.7" y1="2.5" x2="3.7" y2="1" width="0.1524" layer="51"/>
<wire x1="-3.7" y1="2.5" x2="-3.7" y2="1" width="0.1524" layer="51"/>
<wire x1="-3.7" y1="2.5" x2="-2.3" y2="2.5" width="0.1524" layer="51"/>
<wire x1="-2.3" y1="2.5" x2="-2.12" y2="2.5" width="0.1524" layer="51"/>
<wire x1="-3.7" y1="-2.5" x2="-2.3" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-2.3" y1="-2.5" x2="-2.12" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="3.7" y1="2.5" x2="2.3" y2="2.5" width="0.1524" layer="51"/>
<wire x1="2.3" y1="2.5" x2="2.12" y2="2.5" width="0.1524" layer="51"/>
<wire x1="3.7" y1="-2.5" x2="2.3" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="2.3" y1="-2.5" x2="2.12" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="-2.12" y1="2.5" x2="2.12" y2="2.5" width="0.1524" layer="21"/>
<wire x1="-2.12" y1="-2.5" x2="2.12" y2="-2.5" width="0.1524" layer="21"/>
<wire x1="-2.3" y1="2.5" x2="-2.3" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="2.3" y1="2.5" x2="2.3" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="3.7" y1="-1" x2="3.7" y2="1" width="0.1524" layer="51" curve="-180"/>
<wire x1="-3.7" y1="1" x2="-3.7" y2="-1" width="0.1524" layer="51" curve="-180"/>
<wire x1="-3.7" y1="-1" x2="-3.7" y2="-2.5" width="0.1524" layer="51"/>
<wire x1="3.7" y1="-1" x2="3.7" y2="-2.5" width="0.1524" layer="51"/>
</package>
<package name="2016L">
<description>&lt;b&gt;2016L Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_2016l_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_2016l_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-2.45" y="0" dx="1.5" dy="4.6" layer="1"/>
<smd name="2" x="2.45" y="0" dx="1.5" dy="4.6" layer="1"/>
<text x="-2.45" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.45" y="-4" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="2.5" y1="2.1" x2="2.5" y2="0.6" width="0.1524" layer="51"/>
<wire x1="-2.5" y1="2.1" x2="-2.5" y2="0.6" width="0.1524" layer="51"/>
<wire x1="-2.5" y1="2.1" x2="-1.6" y2="2.1" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="2.1" x2="-1.52" y2="2.1" width="0.1524" layer="51"/>
<wire x1="-2.5" y1="-2.1" x2="-1.6" y2="-2.1" width="0.1524" layer="51"/>
<wire x1="-1.6" y1="-2.1" x2="-1.52" y2="-2.1" width="0.1524" layer="51"/>
<wire x1="2.5" y1="2.1" x2="1.6" y2="2.1" width="0.1524" layer="51"/>
<wire x1="1.6" y1="2.1" x2="1.52" y2="2.1" width="0.1524" layer="51"/>
<wire x1="2.5" y1="-2.1" x2="1.6" y2="-2.1" width="0.1524" layer="51"/>
<wire x1="1.6" y1="-2.1" x2="1.52" y2="-2.1" width="0.1524" layer="51"/>
<wire x1="-1.52" y1="2.1" x2="1.52" y2="2.1" width="0.1524" layer="21"/>
<wire x1="-1.52" y1="-2.1" x2="1.52" y2="-2.1" width="0.1524" layer="21"/>
<wire x1="-1.6" y1="2.1" x2="-1.6" y2="-2.1" width="0.1524" layer="51"/>
<wire x1="1.6" y1="2.1" x2="1.6" y2="-2.1" width="0.1524" layer="51"/>
<wire x1="2.5" y1="-0.6" x2="2.5" y2="0.6" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.5" y1="0.6" x2="-2.5" y2="-0.6" width="0.1524" layer="51" curve="-180"/>
<wire x1="-2.5" y1="-0.6" x2="-2.5" y2="-2.1" width="0.1524" layer="51"/>
<wire x1="2.5" y1="-0.6" x2="2.5" y2="-2.1" width="0.1524" layer="51"/>
</package>
<package name="250S">
<description>&lt;b&gt;250S Series&lt;/b&gt; Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_250s_datasheet.pdf.pdf"&gt;http://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_250s_datasheet.pdf.pdf&lt;/a&gt;</description>
<smd name="1" x="-3.95" y="0" dx="1.8" dy="4.6" layer="1"/>
<smd name="2" x="3.95" y="0" dx="1.8" dy="4.6" layer="1"/>
<text x="-4.65" y="4.1" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.65" y="-5.4" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-4.7" y1="3.7" x2="4.7" y2="3.7" width="0.1524" layer="21"/>
<wire x1="-4.7" y1="-3.7" x2="4.7" y2="-3.7" width="0.1524" layer="21"/>
<wire x1="-4.7" y1="2.48" x2="-4.7" y2="-2.48" width="0.1524" layer="51"/>
<wire x1="4.7" y1="2.48" x2="4.7" y2="-2.48" width="0.1524" layer="51"/>
<wire x1="-4.7" y1="2.48" x2="-4.7" y2="3.7" width="0.1524" layer="21"/>
<wire x1="4.7" y1="3.7" x2="4.7" y2="2.48" width="0.1524" layer="21"/>
<wire x1="-4.7" y1="-2.48" x2="-4.7" y2="-3.7" width="0.1524" layer="21"/>
<wire x1="4.7" y1="-2.48" x2="4.7" y2="-3.7" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PPTC">
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.889" x2="-2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.778" x2="-1.27" y2="-1.778" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-1.778" x2="-2.286" y2="-1.778" width="0.1524" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="1.27" y1="1.778" x2="2.286" y2="1.778" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="?" prefix="F">
<description>&lt;b&gt;Polyfuse Resettable PTC&lt;br&gt;
&lt;br&gt;
Source: &lt;a href="http://www.littelfuse.com/products/resettable-ptcs.aspx"&gt;http://www.littelfuse.com/products/resettable-ptcs.aspx&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PPTC" x="0" y="0"/>
</gates>
<devices>
<device name="0402L" package="0402L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="010SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0402L010SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6433" constant="no"/>
</technology>
<technology name="020SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0402L020SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6434" constant="no"/>
</technology>
<technology name="035SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0402L035SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6435" constant="no"/>
</technology>
<technology name="050SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0402L050SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6436" constant="no"/>
</technology>
</technologies>
</device>
<device name="0603L" package="0603L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="004">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L004" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="44W7447" constant="no"/>
</technology>
<technology name="010">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L010" constant="no"/>
<attribute name="OC_FARNELL" value="1832095" constant="no"/>
<attribute name="OC_NEWARK" value="01P9425" constant="no"/>
</technology>
<technology name="020">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L020" constant="no"/>
<attribute name="OC_FARNELL" value="2411232" constant="no"/>
<attribute name="OC_NEWARK" value="01P9426" constant="no"/>
</technology>
<technology name="025">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L025" constant="no"/>
<attribute name="OC_FARNELL" value="1832097RL" constant="no"/>
<attribute name="OC_NEWARK" value="01P9427" constant="no"/>
</technology>
<technology name="035">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L035" constant="no"/>
<attribute name="OC_FARNELL" value="1832099" constant="no"/>
<attribute name="OC_NEWARK" value="01P9428" constant="no"/>
</technology>
<technology name="050">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L050" constant="no"/>
<attribute name="OC_FARNELL" value="2125904" constant="no"/>
<attribute name="OC_NEWARK" value="88T7683" constant="no"/>
</technology>
<technology name="050SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L050SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6437" constant="no"/>
</technology>
<technology name="075SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L075SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6438" constant="no"/>
</technology>
<technology name="100SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L100SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6439" constant="no"/>
</technology>
<technology name="150SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L150SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3126" constant="no"/>
</technology>
<technology name="175SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0603L175SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6440" constant="no"/>
</technology>
</technologies>
</device>
<device name="0805L" package="0805L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="010">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L010" constant="no"/>
<attribute name="OC_FARNELL" value="1832100" constant="no"/>
<attribute name="OC_NEWARK" value="18M4774" constant="no"/>
</technology>
<technology name="010/24">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L010/24" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="23X4297" constant="no"/>
</technology>
<technology name="020">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L020" constant="no"/>
<attribute name="OC_FARNELL" value="1832107" constant="no"/>
<attribute name="OC_NEWARK" value="05M2226" constant="no"/>
</technology>
<technology name="035">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L035" constant="no"/>
<attribute name="OC_FARNELL" value="1832102RL" constant="no"/>
<attribute name="OC_NEWARK" value="18M4775" constant="no"/>
</technology>
<technology name="050">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L050" constant="no"/>
<attribute name="OC_FARNELL" value="1832103" constant="no"/>
<attribute name="OC_NEWARK" value="18M4776" constant="no"/>
</technology>
<technology name="075">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L075" constant="no"/>
<attribute name="OC_FARNELL" value="1832105RL" constant="no"/>
<attribute name="OC_NEWARK" value="18M4777" constant="no"/>
</technology>
<technology name="075SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L075SL" constant="no"/>
<attribute name="OC_FARNELL" value="2125905" constant="no"/>
<attribute name="OC_NEWARK" value="88T7684" constant="no"/>
</technology>
<technology name="100">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L100" constant="no"/>
<attribute name="OC_FARNELL" value="1832106" constant="no"/>
<attribute name="OC_NEWARK" value="23T1551" constant="no"/>
</technology>
<technology name="110">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L110" constant="no"/>
<attribute name="OC_FARNELL" value="1832663" constant="no"/>
<attribute name="OC_NEWARK" value="64R8127" constant="no"/>
</technology>
<technology name="110SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L110SL" constant="no"/>
<attribute name="OC_FARNELL" value="1832663" constant="no"/>
<attribute name="OC_NEWARK" value="64R8127" constant="no"/>
</technology>
<technology name="150SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L150SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3129" constant="no"/>
</technology>
<technology name="175SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L175SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6441" constant="no"/>
</technology>
<technology name="200SLTH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L200SLTH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6442" constant="no"/>
</technology>
<technology name="260SLTH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L260SLTH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6443" constant="no"/>
</technology>
<technology name="300SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="0805L300SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6444" constant="no"/>
</technology>
</technologies>
</device>
<device name="1206L" package="1206L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="012">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L012" constant="no"/>
<attribute name="OC_FARNELL" value="1596988" constant="no"/>
<attribute name="OC_NEWARK" value="05M2298" constant="no"/>
</technology>
<technology name="016">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L016" constant="no"/>
<attribute name="OC_FARNELL" value="1822201" constant="no"/>
<attribute name="OC_NEWARK" value="05M2299" constant="no"/>
</technology>
<technology name="020">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L020" constant="no"/>
<attribute name="OC_FARNELL" value="2072173" constant="no"/>
<attribute name="OC_NEWARK" value="05M2300" constant="no"/>
</technology>
<technology name="025">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L025" constant="no"/>
<attribute name="OC_FARNELL" value="1596990" constant="no"/>
<attribute name="OC_NEWARK" value="05M2301" constant="no"/>
</technology>
<technology name="035">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L035" constant="no"/>
<attribute name="OC_FARNELL" value="1596991" constant="no"/>
<attribute name="OC_NEWARK" value="05M2302" constant="no"/>
</technology>
<technology name="035/16">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L035/16" constant="no"/>
<attribute name="OC_FARNELL" value="1822203" constant="no"/>
<attribute name="OC_NEWARK" value="01P9665" constant="no"/>
</technology>
<technology name="050">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L050" constant="no"/>
<attribute name="OC_FARNELL" value="1596993" constant="no"/>
<attribute name="OC_NEWARK" value="53M6118" constant="no"/>
</technology>
<technology name="050/15">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L050/15" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="05M2305" constant="no"/>
</technology>
<technology name="075/13.2">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L075/13.2" constant="no"/>
<attribute name="OC_FARNELL" value="2119629" constant="no"/>
<attribute name="OC_NEWARK" value="64R8191" constant="no"/>
</technology>
<technology name="075/16">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L075/16" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="075SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L075SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3236" constant="no"/>
</technology>
<technology name="075TH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L075TH" constant="no"/>
<attribute name="OC_FARNELL" value="1822204" constant="no"/>
<attribute name="OC_NEWARK" value="64R8192" constant="no"/>
</technology>
<technology name="110/12SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L110/12SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6445" constant="no"/>
</technology>
<technology name="110SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L110SL" constant="no"/>
<attribute name="OC_FARNELL" value="1834358" constant="no"/>
<attribute name="OC_NEWARK" value="64R8193" constant="no"/>
</technology>
<technology name="110TH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L110TH" constant="no"/>
<attribute name="OC_FARNELL" value="2383294" constant="no"/>
<attribute name="OC_NEWARK" value="64R8194" constant="no"/>
</technology>
<technology name="150/12SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L150/12SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6446" constant="no"/>
</technology>
<technology name="150SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L150SL" constant="no"/>
<attribute name="OC_FARNELL" value="2383295" constant="no"/>
<attribute name="OC_NEWARK" value="64R8195" constant="no"/>
</technology>
<technology name="150TH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L150SL" constant="no"/>
<attribute name="OC_FARNELL" value="2383295" constant="no"/>
<attribute name="OC_NEWARK" value="64R8195" constant="no"/>
</technology>
<technology name="175">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L175" constant="no"/>
<attribute name="OC_FARNELL" value="2120074" constant="no"/>
<attribute name="OC_NEWARK" value="81R0491" constant="no"/>
</technology>
<technology name="175SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L175SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6447" constant="no"/>
</technology>
<technology name="200">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L200" constant="no"/>
<attribute name="OC_FARNELL" value="2383297" constant="no"/>
<attribute name="OC_NEWARK" value="64R8197" constant="no"/>
</technology>
<technology name="200SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L200SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6448" constant="no"/>
</technology>
<technology name="260SLTH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L260SLTH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3237" constant="no"/>
</technology>
<technology name="300SLTH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L300SLTH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6449" constant="no"/>
</technology>
<technology name="350SLTH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L350SLTH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6450" constant="no"/>
</technology>
<technology name="380SLTH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L380SLTH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3240" constant="no"/>
</technology>
<technology name="400SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L400SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6451" constant="no"/>
</technology>
<technology name="450SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1206L450SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6452" constant="no"/>
</technology>
</technologies>
</device>
<device name="1210L" package="1210L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="005">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L005" constant="no"/>
<attribute name="OC_FARNELL" value="1822205" constant="no"/>
<attribute name="OC_NEWARK" value="18M4780" constant="no"/>
</technology>
<technology name="010">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L010" constant="no"/>
<attribute name="OC_FARNELL" value="1822206" constant="no"/>
<attribute name="OC_NEWARK" value="18M4781" constant="no"/>
</technology>
<technology name="020">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L020" constant="no"/>
<attribute name="OC_FARNELL" value="1596997" constant="no"/>
<attribute name="OC_NEWARK" value="05M2313" constant="no"/>
</technology>
<technology name="035">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L035" constant="no"/>
<attribute name="OC_FARNELL" value="1822207" constant="no"/>
<attribute name="OC_NEWARK" value="18M4782" constant="no"/>
</technology>
<technology name="050">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L050" constant="no"/>
<attribute name="OC_FARNELL" value="1822208" constant="no"/>
<attribute name="OC_NEWARK" value="18M4783" constant="no"/>
</technology>
<technology name="075">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L075" constant="no"/>
<attribute name="OC_FARNELL" value="1822209" constant="no"/>
<attribute name="OC_NEWARK" value="78R5546" constant="no"/>
</technology>
<technology name="075/24">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L075/24" constant="no"/>
<attribute name="OC_FARNELL" value="2383298" constant="no"/>
<attribute name="OC_NEWARK" value="88T7687" constant="no"/>
</technology>
<technology name="110/12">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L110/12" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="110/16">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L110/16" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="110TH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L110TH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="64R8198" constant="no"/>
</technology>
<technology name="150TH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L150TH" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="175">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L175" constant="no"/>
<attribute name="OC_FARNELL" value="2119631" constant="no"/>
<attribute name="OC_NEWARK" value="64R8200" constant="no"/>
</technology>
<technology name="175SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L175SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6453" constant="no"/>
</technology>
<technology name="200">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L200" constant="no"/>
<attribute name="OC_FARNELL" value="2383300" constant="no"/>
<attribute name="OC_NEWARK" value="64R8202" constant="no"/>
</technology>
<technology name="200SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L200SL" constant="no"/>
<attribute name="OC_FARNELL" value="1832664" constant="no"/>
<attribute name="OC_NEWARK" value="64R8202" constant="no"/>
</technology>
<technology name="260SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L260SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6454" constant="no"/>
</technology>
<technology name="300SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L300SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6455" constant="no"/>
</technology>
<technology name="350SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L350SL" constant="no"/>
<attribute name="OC_FARNELL" value="2125909" constant="no"/>
<attribute name="OC_NEWARK" value="88T7688" constant="no"/>
</technology>
<technology name="380SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L380SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3241" constant="no"/>
</technology>
<technology name="400SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L400SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3242" constant="no"/>
</technology>
<technology name="450SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1210L450SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6456" constant="no"/>
</technology>
</technologies>
</device>
<device name="1812L" package="1812L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="010">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L010" constant="no"/>
<attribute name="OC_FARNELL" value="1822210" constant="no"/>
<attribute name="OC_NEWARK" value="78R5551" constant="no"/>
</technology>
<technology name="010/60">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L010/60" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="014">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L014" constant="no"/>
<attribute name="OC_FARNELL" value="1822211" constant="no"/>
<attribute name="OC_NEWARK" value="18M4784" constant="no"/>
</technology>
<technology name="020">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L020" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="18M4785" constant="no"/>
</technology>
<technology name="020/60">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L020/60" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="91T3501" constant="no"/>
</technology>
<technology name="035/30">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L035/30" constant="no"/>
<attribute name="OC_FARNELL" value="2119633" constant="no"/>
<attribute name="OC_NEWARK" value="64R8224" constant="no"/>
</technology>
<technology name="050">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L050" constant="no"/>
<attribute name="OC_FARNELL" value="1653478" constant="no"/>
<attribute name="OC_NEWARK" value="18M4786" constant="no"/>
</technology>
<technology name="050/30">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L050/30" constant="no"/>
<attribute name="OC_FARNELL" value="2383301" constant="no"/>
<attribute name="OC_NEWARK" value="64R8225" constant="no"/>
</technology>
<technology name="075">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L075" constant="no"/>
<attribute name="OC_FARNELL" value="1597003" constant="no"/>
<attribute name="OC_NEWARK" value="25R5656" constant="no"/>
</technology>
<technology name="075/24">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L075/24" constant="no"/>
<attribute name="OC_FARNELL" value="1597002" constant="no"/>
<attribute name="OC_NEWARK" value="05M2399" constant="no"/>
</technology>
<technology name="075/33">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L075/33" constant="no"/>
<attribute name="OC_FARNELL" value="1822212" constant="no"/>
<attribute name="OC_NEWARK" value="05M2400" constant="no"/>
</technology>
<technology name="110">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L110" constant="no"/>
<attribute name="OC_FARNELL" value="1597005" constant="no"/>
<attribute name="OC_NEWARK" value="18M4788" constant="no"/>
</technology>
<technology name="110/16">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L110/16" constant="no"/>
<attribute name="OC_FARNELL" value="1597004" constant="no"/>
<attribute name="OC_NEWARK" value="05M2402" constant="no"/>
</technology>
<technology name="110/24">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L110/24" constant="no"/>
<attribute name="OC_FARNELL" value="2383302" constant="no"/>
<attribute name="OC_NEWARK" value="39X0319" constant="no"/>
</technology>
<technology name="110/33">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L110/33" constant="no"/>
<attribute name="OC_FARNELL" value="1822213" constant="no"/>
<attribute name="OC_NEWARK" value="05M2403" constant="no"/>
</technology>
<technology name="125/16">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L125/16" constant="no"/>
<attribute name="OC_FARNELL" value="1836775" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="125/6">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L125/6" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="150">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L150" constant="no"/>
<attribute name="OC_FARNELL" value="1597007" constant="no"/>
<attribute name="OC_NEWARK" value="94B6280" constant="no"/>
</technology>
<technology name="150/12">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L150/12" constant="no"/>
<attribute name="OC_FARNELL" value="1597006" constant="no"/>
<attribute name="OC_NEWARK" value="25R5659" constant="no"/>
</technology>
<technology name="150/24">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L150/24" constant="no"/>
<attribute name="OC_FARNELL" value="2133084" constant="no"/>
<attribute name="OC_NEWARK" value="05M2407" constant="no"/>
</technology>
<technology name="160">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L160" constant="no"/>
<attribute name="OC_FARNELL" value="1597008" constant="no"/>
<attribute name="OC_NEWARK" value="25R5661" constant="no"/>
</technology>
<technology name="160/12">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L160/12" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="190SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L190SL" constant="no"/>
<attribute name="OC_FARNELL" value="1826569" constant="no"/>
<attribute name="OC_NEWARK" value="64R8228" constant="no"/>
</technology>
<technology name="200TH">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L200TH" constant="no"/>
<attribute name="OC_FARNELL" value="1822216" constant="no"/>
<attribute name="OC_NEWARK" value="78R5556" constant="no"/>
</technology>
<technology name="260SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L260SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6457" constant="no"/>
</technology>
<technology name="270SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L270SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6458" constant="no"/>
</technology>
<technology name="300SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L300SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6459" constant="no"/>
</technology>
<technology name="350SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L350SL" constant="no"/>
<attribute name="OC_FARNELL" value="2125911" constant="no"/>
<attribute name="OC_NEWARK" value="88T7690" constant="no"/>
</technology>
<technology name="370SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="1812L370SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6460" constant="no"/>
</technology>
</technologies>
</device>
<device name="2920L" package="2920L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="030">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L030" constant="no"/>
<attribute name="OC_FARNELL" value="1822222" constant="no"/>
<attribute name="OC_NEWARK" value="18M4789" constant="no"/>
</technology>
<technology name="050">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L050" constant="no"/>
<attribute name="OC_FARNELL" value="1822223" constant="no"/>
<attribute name="OC_NEWARK" value="18M4790" constant="no"/>
</technology>
<technology name="075">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L075" constant="no"/>
<attribute name="OC_FARNELL" value="1822224" constant="no"/>
<attribute name="OC_NEWARK" value="18M4791" constant="no"/>
</technology>
<technology name="075/60">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L075/60" constant="no"/>
<attribute name="OC_FARNELL" value="2383303" constant="no"/>
<attribute name="OC_NEWARK" value="39X0323" constant="no"/>
</technology>
<technology name="100">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L100" constant="no"/>
<attribute name="OC_FARNELL" value="1822225" constant="no"/>
<attribute name="OC_NEWARK" value="18M4792" constant="no"/>
</technology>
<technology name="125">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L125" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="18M4793" constant="no"/>
</technology>
<technology name="150">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L150" constant="no"/>
<attribute name="OC_FARNELL" value="1822227" constant="no"/>
<attribute name="OC_NEWARK" value="18M4794" constant="no"/>
</technology>
<technology name="185">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L185" constant="no"/>
<attribute name="OC_FARNELL" value="1822228" constant="no"/>
<attribute name="OC_NEWARK" value="05M2795" constant="no"/>
</technology>
<technology name="200">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L200" constant="no"/>
<attribute name="OC_FARNELL" value="1822229" constant="no"/>
<attribute name="OC_NEWARK" value="18M4796" constant="no"/>
</technology>
<technology name="200/24">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L200/24" constant="no"/>
<attribute name="OC_FARNELL" value="2309127" constant="no"/>
<attribute name="OC_NEWARK" value="05M2797" constant="no"/>
</technology>
<technology name="250">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L250" constant="no"/>
<attribute name="OC_FARNELL" value="1822230" constant="no"/>
<attribute name="OC_NEWARK" value="18M4797" constant="no"/>
</technology>
<technology name="260">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L260" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="05M2799" constant="no"/>
</technology>
<technology name="300">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L300" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="300/15">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L300/15" constant="no"/>
<attribute name="OC_FARNELL" value="1822231" constant="no"/>
<attribute name="OC_NEWARK" value="05M2801" constant="no"/>
</technology>
<technology name="500/16">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L500/16" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="700SL">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2920L700SL" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69W6461" constant="no"/>
</technology>
</technologies>
</device>
<device name="2016L" package="2016L">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="030">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2016L030" constant="no"/>
<attribute name="OC_FARNELL" value="1822218" constant="no"/>
<attribute name="OC_NEWARK" value="05M2620" constant="no"/>
</technology>
<technology name="050">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2016L050" constant="no"/>
<attribute name="OC_FARNELL" value="1822219" constant="no"/>
<attribute name="OC_NEWARK" value="05M2621" constant="no"/>
</technology>
<technology name="075/60">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2016L075/60" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="64R8238" constant="no"/>
</technology>
<technology name="100">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2016L100" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="100/33">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2016L100/33" constant="no"/>
<attribute name="OC_FARNELL" value="1822220" constant="no"/>
<attribute name="OC_NEWARK" value="05M2623" constant="no"/>
</technology>
<technology name="150">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2016L150" constant="no"/>
<attribute name="OC_FARNELL" value="1822221" constant="no"/>
<attribute name="OC_NEWARK" value="78R5561" constant="no"/>
</technology>
<technology name="200">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="2016L200" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="250S" package="250S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="130">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="250S130" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="64R8245" constant="no"/>
</technology>
<technology name="130-RA">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="250S130-RA" constant="no"/>
<attribute name="OC_FARNELL" value="1824099" constant="no"/>
<attribute name="OC_NEWARK" value="64R8242" constant="no"/>
</technology>
<technology name="130-RB">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="250S130-RB" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="64R8243" constant="no"/>
</technology>
<technology name="130-RC">
<attribute name="MF" value="Littelfuse" constant="no"/>
<attribute name="MPN" value="250S130-RC" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="64R8244" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
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
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
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
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA06-1" urn="urn:adsk.eagle:footprint:8287/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.62" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.985" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="5.715" y="1.651" size="1.27" layer="21" ratio="10">6</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA06-1" urn="urn:adsk.eagle:package:8340/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA06-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA06-1" urn="urn:adsk.eagle:symbol:8286/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA06-1" urn="urn:adsk.eagle:component:8378/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA06-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA06-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8340/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="testpad" urn="urn:adsk.eagle:library:385">
<description>&lt;b&gt;Test Pins/Pads&lt;/b&gt;&lt;p&gt;
Cream on SMD OFF.&lt;br&gt;
new: Attribute TP_SIGNAL_NAME&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="B1,27" urn="urn:adsk.eagle:footprint:27900/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.0024" layer="37"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.0024" layer="37"/>
<smd name="TP" x="0" y="0" dx="1.27" dy="1.27" layer="1" roundness="100" cream="no"/>
<text x="-0.635" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.635" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="B2,54" urn="urn:adsk.eagle:footprint:27901/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.0024" layer="37"/>
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0.0024" layer="37"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="37"/>
<smd name="TP" x="0" y="0" dx="2.54" dy="2.54" layer="1" roundness="100" cream="no"/>
<text x="-1.27" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.397" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="P1-13" urn="urn:adsk.eagle:footprint:27902/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.3208" diameter="2.159" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-13Y" urn="urn:adsk.eagle:footprint:27903/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.3208" diameter="1.905" shape="long" rot="R90"/>
<text x="-0.889" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.81" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-17" urn="urn:adsk.eagle:footprint:27904/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.8128" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.7018" diameter="2.54" shape="octagon"/>
<text x="-1.143" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-17Y" urn="urn:adsk.eagle:footprint:27905/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.8128" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.7018" diameter="2.1208" shape="long" rot="R90"/>
<text x="-1.143" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.81" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-20" urn="urn:adsk.eagle:footprint:27906/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="2.0066" diameter="3.1496" shape="octagon"/>
<text x="-1.524" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-20Y" urn="urn:adsk.eagle:footprint:27907/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="2.0066" diameter="2.54" shape="long" rot="R90"/>
<text x="-1.27" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-4.445" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="TP06R" urn="urn:adsk.eagle:footprint:27908/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.6" dy="0.6" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP06SQ" urn="urn:adsk.eagle:footprint:27909/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.5996" dy="0.5996" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP07R" urn="urn:adsk.eagle:footprint:27910/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.7" dy="0.7" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP07SQ" urn="urn:adsk.eagle:footprint:27911/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.7" dy="0.7" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP08R" urn="urn:adsk.eagle:footprint:27912/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8" dy="0.8" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP08SQ" urn="urn:adsk.eagle:footprint:27913/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8" dy="0.8" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP09R" urn="urn:adsk.eagle:footprint:27914/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.9" dy="0.9" layer="1" roundness="100" cream="no"/>
<text x="-0.4501" y="0.5001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP09SQ" urn="urn:adsk.eagle:footprint:27915/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8998" dy="0.8998" layer="1" cream="no"/>
<text x="-0.4501" y="0.5001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP10R" urn="urn:adsk.eagle:footprint:27916/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1" dy="1" layer="1" roundness="100" cream="no"/>
<text x="-0.5001" y="0.5499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP10SQ" urn="urn:adsk.eagle:footprint:27917/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1" dy="1" layer="1" cream="no"/>
<text x="-0.5001" y="0.5499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP11R" urn="urn:adsk.eagle:footprint:27918/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1" dy="1.1" layer="1" roundness="100" cream="no"/>
<text x="-0.5499" y="0.5999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP11SQ" urn="urn:adsk.eagle:footprint:27919/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1" dy="1.1" layer="1" cream="no"/>
<text x="-0.5499" y="0.5999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP12SQ" urn="urn:adsk.eagle:footprint:27920/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1998" dy="1.1998" layer="1" cream="no"/>
<text x="-0.5999" y="0.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP12R" urn="urn:adsk.eagle:footprint:27921/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.2" dy="1.2" layer="1" roundness="100" cream="no"/>
<text x="-0.5999" y="0.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP13R" urn="urn:adsk.eagle:footprint:27922/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.3" dy="1.3" layer="1" roundness="100" cream="no"/>
<text x="-0.65" y="0.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP14R" urn="urn:adsk.eagle:footprint:27923/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.4" dy="1.4" layer="1" roundness="100" cream="no"/>
<text x="-0.7" y="0.7501" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP15R" urn="urn:adsk.eagle:footprint:27924/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5" dy="1.5" layer="1" roundness="100" cream="no"/>
<text x="-0.7501" y="0.8001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP16R" urn="urn:adsk.eagle:footprint:27925/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.6" dy="1.6" layer="1" roundness="100" cream="no"/>
<text x="-0.8001" y="0.8499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP17R" urn="urn:adsk.eagle:footprint:27926/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.7" dy="1.7" layer="1" roundness="100" cream="no"/>
<text x="-0.8499" y="0.8999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP18R" urn="urn:adsk.eagle:footprint:27927/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8" dy="1.8" layer="1" roundness="100" cream="no"/>
<text x="-0.8999" y="0.95" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP19R" urn="urn:adsk.eagle:footprint:27928/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100" cream="no"/>
<text x="-0.95" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP20R" urn="urn:adsk.eagle:footprint:27929/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="2" dy="2" layer="1" roundness="100" cream="no"/>
<text x="-1" y="1.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP13SQ" urn="urn:adsk.eagle:footprint:27930/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.3" dy="1.3" layer="1" cream="no"/>
<text x="-0.65" y="0.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP14SQ" urn="urn:adsk.eagle:footprint:27931/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.4" dy="1.4" layer="1" cream="no"/>
<text x="-0.7" y="0.7501" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP15SQ" urn="urn:adsk.eagle:footprint:27932/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5" dy="1.5" layer="1" cream="no"/>
<text x="-0.7501" y="0.8001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP16SQ" urn="urn:adsk.eagle:footprint:27933/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5996" dy="1.5996" layer="1" cream="no"/>
<text x="-0.8001" y="0.8499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP17SQ" urn="urn:adsk.eagle:footprint:27934/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.7" dy="1.7" layer="1" cream="no"/>
<text x="-0.8499" y="0.8999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP18SQ" urn="urn:adsk.eagle:footprint:27935/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8" dy="1.8" layer="1" cream="no"/>
<text x="-0.8999" y="0.95" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP19SQ" urn="urn:adsk.eagle:footprint:27936/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8998" dy="1.8998" layer="1" cream="no"/>
<text x="-0.95" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP20SQ" urn="urn:adsk.eagle:footprint:27937/1" library_version="3">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="2" dy="2" layer="1" cream="no"/>
<text x="-1" y="1.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
</packages>
<packages3d>
<package3d name="B1,27" urn="urn:adsk.eagle:package:27944/2" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="B1,27"/>
</packageinstances>
</package3d>
<package3d name="B2,54" urn="urn:adsk.eagle:package:27948/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="B2,54"/>
</packageinstances>
</package3d>
<package3d name="P1-13" urn="urn:adsk.eagle:package:27946/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-13"/>
</packageinstances>
</package3d>
<package3d name="P1-13Y" urn="urn:adsk.eagle:package:27947/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-13Y"/>
</packageinstances>
</package3d>
<package3d name="P1-17" urn="urn:adsk.eagle:package:27949/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-17"/>
</packageinstances>
</package3d>
<package3d name="P1-17Y" urn="urn:adsk.eagle:package:27953/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-17Y"/>
</packageinstances>
</package3d>
<package3d name="P1-20" urn="urn:adsk.eagle:package:27950/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-20"/>
</packageinstances>
</package3d>
<package3d name="P1-20Y" urn="urn:adsk.eagle:package:27951/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="P1-20Y"/>
</packageinstances>
</package3d>
<package3d name="TP06R" urn="urn:adsk.eagle:package:27954/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP06R"/>
</packageinstances>
</package3d>
<package3d name="TP06SQ" urn="urn:adsk.eagle:package:27952/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP06SQ"/>
</packageinstances>
</package3d>
<package3d name="TP07R" urn="urn:adsk.eagle:package:27970/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP07R"/>
</packageinstances>
</package3d>
<package3d name="TP07SQ" urn="urn:adsk.eagle:package:27955/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP07SQ"/>
</packageinstances>
</package3d>
<package3d name="TP08R" urn="urn:adsk.eagle:package:27956/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP08R"/>
</packageinstances>
</package3d>
<package3d name="TP08SQ" urn="urn:adsk.eagle:package:27960/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP08SQ"/>
</packageinstances>
</package3d>
<package3d name="TP09R" urn="urn:adsk.eagle:package:27958/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP09R"/>
</packageinstances>
</package3d>
<package3d name="TP09SQ" urn="urn:adsk.eagle:package:27957/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP09SQ"/>
</packageinstances>
</package3d>
<package3d name="TP10R" urn="urn:adsk.eagle:package:27959/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP10R"/>
</packageinstances>
</package3d>
<package3d name="TP10SQ" urn="urn:adsk.eagle:package:27962/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP10SQ"/>
</packageinstances>
</package3d>
<package3d name="TP11R" urn="urn:adsk.eagle:package:27961/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP11R"/>
</packageinstances>
</package3d>
<package3d name="TP11SQ" urn="urn:adsk.eagle:package:27965/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP11SQ"/>
</packageinstances>
</package3d>
<package3d name="TP12SQ" urn="urn:adsk.eagle:package:27964/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP12SQ"/>
</packageinstances>
</package3d>
<package3d name="TP12R" urn="urn:adsk.eagle:package:27963/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP12R"/>
</packageinstances>
</package3d>
<package3d name="TP13R" urn="urn:adsk.eagle:package:27967/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP13R"/>
</packageinstances>
</package3d>
<package3d name="TP14R" urn="urn:adsk.eagle:package:27966/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP14R"/>
</packageinstances>
</package3d>
<package3d name="TP15R" urn="urn:adsk.eagle:package:27968/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP15R"/>
</packageinstances>
</package3d>
<package3d name="TP16R" urn="urn:adsk.eagle:package:27969/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP16R"/>
</packageinstances>
</package3d>
<package3d name="TP17R" urn="urn:adsk.eagle:package:27971/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP17R"/>
</packageinstances>
</package3d>
<package3d name="TP18R" urn="urn:adsk.eagle:package:27981/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP18R"/>
</packageinstances>
</package3d>
<package3d name="TP19R" urn="urn:adsk.eagle:package:27972/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP19R"/>
</packageinstances>
</package3d>
<package3d name="TP20R" urn="urn:adsk.eagle:package:27973/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP20R"/>
</packageinstances>
</package3d>
<package3d name="TP13SQ" urn="urn:adsk.eagle:package:27974/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP13SQ"/>
</packageinstances>
</package3d>
<package3d name="TP14SQ" urn="urn:adsk.eagle:package:27984/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP14SQ"/>
</packageinstances>
</package3d>
<package3d name="TP15SQ" urn="urn:adsk.eagle:package:27975/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP15SQ"/>
</packageinstances>
</package3d>
<package3d name="TP16SQ" urn="urn:adsk.eagle:package:27976/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP16SQ"/>
</packageinstances>
</package3d>
<package3d name="TP17SQ" urn="urn:adsk.eagle:package:27977/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP17SQ"/>
</packageinstances>
</package3d>
<package3d name="TP18SQ" urn="urn:adsk.eagle:package:27979/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP18SQ"/>
</packageinstances>
</package3d>
<package3d name="TP19SQ" urn="urn:adsk.eagle:package:27978/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP19SQ"/>
</packageinstances>
</package3d>
<package3d name="TP20SQ" urn="urn:adsk.eagle:package:27980/1" type="box" library_version="3">
<description>TEST PAD</description>
<packageinstances>
<packageinstance name="TP20SQ"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="TP" urn="urn:adsk.eagle:symbol:27940/1" library_version="3">
<wire x1="-0.762" y1="-0.762" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="-0.762" x2="0" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="-0.762" y2="-0.762" width="0.254" layer="94"/>
<text x="-1.27" y="1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-1.27" size="1.778" layer="97">&gt;TP_SIGNAL_NAME</text>
<pin name="TP" x="0" y="-2.54" visible="off" length="short" direction="in" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TP" urn="urn:adsk.eagle:component:27992/3" prefix="TP" library_version="3">
<description>&lt;b&gt;Test pad&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="TP" x="0" y="0"/>
</gates>
<devices>
<device name="B1,27" package="B1,27">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27944/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="19" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="B2,54" package="B2,54">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27948/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-13" package="P1-13">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27946/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="12" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-13Y" package="P1-13Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27947/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-17" package="P1-17">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27949/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-17Y" package="P1-17Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27953/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-20" package="P1-20">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27950/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-20Y" package="P1-20Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27951/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP06R" package="TP06R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27954/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP06SQ" package="TP06SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27952/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP07R" package="TP07R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27970/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP07SQ" package="TP07SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27955/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP08R" package="TP08R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27956/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP08SQ" package="TP08SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27960/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP09R" package="TP09R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27958/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP09SQ" package="TP09SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27957/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP10R" package="TP10R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27959/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP10SQ" package="TP10SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27962/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="4" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP11R" package="TP11R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27961/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP11SQ" package="TP11SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27965/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP12SQ" package="TP12SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27964/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP12R" package="TP12R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27963/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP13R" package="TP13R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27967/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP14R" package="TP14R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27966/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP15R" package="TP15R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27968/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP16R" package="TP16R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27969/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP17R" package="TP17R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27971/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP18R" package="TP18R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27981/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP19R" package="TP19R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27972/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP20R" package="TP20R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27973/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP13SQ" package="TP13SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27974/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP14SQ" package="TP14SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27984/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP15SQ" package="TP15SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27975/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP16SQ" package="TP16SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27976/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP17SQ" package="TP17SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27977/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP18SQ" package="TP18SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27979/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP19SQ" package="TP19SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27978/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP20SQ" package="TP20SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27980/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TXB0101DCKR">
<description>&lt;Texas Instruments TXB0101DCKR, Voltage Level Translator, 3-State, 1.2  3.6 V, 1.65  5.5 V, 6-Pin SC-70&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOT65P210X110-6N">
<description>&lt;b&gt;dck&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.95" y="0.65" dx="1.2" dy="0.4" layer="1"/>
<smd name="2" x="-0.95" y="0" dx="1.2" dy="0.4" layer="1"/>
<smd name="3" x="-0.95" y="-0.65" dx="1.2" dy="0.4" layer="1"/>
<smd name="4" x="0.95" y="-0.65" dx="1.2" dy="0.4" layer="1"/>
<smd name="5" x="0.95" y="0" dx="1.2" dy="0.4" layer="1"/>
<smd name="6" x="0.95" y="0.65" dx="1.2" dy="0.4" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.8" y1="1.325" x2="1.8" y2="1.325" width="0.05" layer="51"/>
<wire x1="1.8" y1="1.325" x2="1.8" y2="-1.325" width="0.05" layer="51"/>
<wire x1="1.8" y1="-1.325" x2="-1.8" y2="-1.325" width="0.05" layer="51"/>
<wire x1="-1.8" y1="-1.325" x2="-1.8" y2="1.325" width="0.05" layer="51"/>
<wire x1="-0.625" y1="1" x2="0.625" y2="1" width="0.1" layer="51"/>
<wire x1="0.625" y1="1" x2="0.625" y2="-1" width="0.1" layer="51"/>
<wire x1="0.625" y1="-1" x2="-0.625" y2="-1" width="0.1" layer="51"/>
<wire x1="-0.625" y1="-1" x2="-0.625" y2="1" width="0.1" layer="51"/>
<wire x1="-0.625" y1="0.35" x2="0.025" y2="1" width="0.1" layer="51"/>
<wire x1="-1.55" y1="1.2" x2="-0.35" y2="1.2" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="TXB0101DCKR">
<wire x1="5.08" y1="2.54" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-7.62" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="24.13" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="24.13" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="VCCA" x="0" y="0" length="middle"/>
<pin name="GND" x="0" y="-2.54" length="middle"/>
<pin name="A" x="0" y="-5.08" length="middle"/>
<pin name="VCCB" x="27.94" y="0" length="middle" rot="R180"/>
<pin name="OE" x="27.94" y="-2.54" length="middle" rot="R180"/>
<pin name="B" x="27.94" y="-5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TXB0101DCKR" prefix="IC">
<description>&lt;b&gt;Texas Instruments TXB0101DCKR, Voltage Level Translator, 3-State, 1.2  3.6 V, 1.65  5.5 V, 6-Pin SC-70&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.ti.com/lit/gpn/txb0101"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TXB0101DCKR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT65P210X110-6N">
<connects>
<connect gate="G$1" pin="A" pad="3"/>
<connect gate="G$1" pin="B" pad="4"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="OE" pad="5"/>
<connect gate="G$1" pin="VCCA" pad="1"/>
<connect gate="G$1" pin="VCCB" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="TXB0101DCKR" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/txb0101dckr/texas-instruments" constant="no"/>
<attribute name="DESCRIPTION" value="Texas Instruments TXB0101DCKR, Voltage Level Translator, 3-State, 1.2  3.6 V, 1.65  5.5 V, 6-Pin SC-70" constant="no"/>
<attribute name="HEIGHT" value="1.1mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Texas Instruments" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TXB0101DCKR" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="595-TXB0101DCKR" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0101DCKR?qs=dqESbKqT1ja7in%2FiCwfNsg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex" urn="urn:adsk.eagle:library:165">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="22-23-2101" urn="urn:adsk.eagle:footprint:8078267/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 10 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232101_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-12.7" y1="3.175" x2="12.7" y2="3.175" width="0.254" layer="21"/>
<wire x1="12.7" y1="3.175" x2="12.7" y2="1.27" width="0.254" layer="21"/>
<wire x1="12.7" y1="1.27" x2="12.7" y2="-3.175" width="0.254" layer="21"/>
<wire x1="12.7" y1="-3.175" x2="-12.7" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-12.7" y1="-3.175" x2="-12.7" y2="1.27" width="0.254" layer="21"/>
<wire x1="-12.7" y1="1.27" x2="-12.7" y2="3.175" width="0.254" layer="21"/>
<wire x1="-12.7" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-11.43" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="0" drill="1" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="0" drill="1" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="0" drill="1" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="0" drill="1" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="1" shape="long" rot="R90"/>
<text x="-12.7" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-12.7" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2051" urn="urn:adsk.eagle:footprint:8078262/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 5 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232051_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<wire x1="-6.35" y1="3.175" x2="6.35" y2="3.175" width="0.254" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.35" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.35" y1="1.27" x2="6.35" y2="-3.175" width="0.254" layer="21"/>
<wire x1="6.35" y1="-3.175" x2="-6.35" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-3.175" x2="-6.35" y2="1.27" width="0.254" layer="21"/>
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="3.175" width="0.254" layer="21"/>
<wire x1="-6.35" y1="1.27" x2="6.35" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="1" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="1" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="1" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="1" shape="long" rot="R90"/>
<text x="-6.35" y="3.81" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="22-23-2081" urn="urn:adsk.eagle:footprint:8078265/1" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 8 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232081_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
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
<packages3d>
<package3d name="22-23-2101" urn="urn:adsk.eagle:package:8078641/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 10 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232101_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2101"/>
</packageinstances>
</package3d>
<package3d name="22-23-2051" urn="urn:adsk.eagle:package:8078636/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 5 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232051_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2051"/>
</packageinstances>
</package3d>
<package3d name="22-23-2081" urn="urn:adsk.eagle:package:8078639/1" type="box" library_version="5">
<description>&lt;b&gt;KK® 254 Solid Header, Vertical, with Friction Lock, 8 Circuits, Tin (Sn) Plating&lt;/b&gt;&lt;p&gt;&lt;a href =http://www.molex.com/pdm_docs/sd/022232081_sd.pdf&gt;Datasheet &lt;/a&gt;</description>
<packageinstances>
<packageinstance name="22-23-2081"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MV" urn="urn:adsk.eagle:symbol:6783/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" urn="urn:adsk.eagle:symbol:6785/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2101" urn="urn:adsk.eagle:component:8078966/3" prefix="X" library_version="5">
<description>.100" (2.54mm) Center Header - 10 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="10.16" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-9" symbol="M" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-10" symbol="M" x="0" y="-12.7" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2101">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078641/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2101" constant="no"/>
<attribute name="OC_FARNELL" value="1756828" constant="no"/>
<attribute name="OC_NEWARK" value="94C0765" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2051" urn="urn:adsk.eagle:component:8078935/3" prefix="X" library_version="5">
<description>.100" (2.54mm) Center Header - 5 Pin</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="22-23-2051">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078636/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2051" constant="no"/>
<attribute name="OC_FARNELL" value="1462952" constant="no"/>
<attribute name="OC_NEWARK" value="38C9178" constant="no"/>
<attribute name="POPULARITY" value="4" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="22-23-2081" urn="urn:adsk.eagle:component:8078932/3" prefix="X" library_version="5">
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
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8078639/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="22-23-2081" constant="no"/>
<attribute name="OC_FARNELL" value="1756826" constant="no"/>
<attribute name="OC_NEWARK" value="01C7592" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PMIC-MC33932VW_SOP44_">
<packages>
<package name="SOP44-0.65-15.8X10.9MM">
<description>&lt;b&gt;44 LEAD HSOP W/PROTRUDING HEADSINK&lt;/b&gt;&lt;p&gt;
Source: http://www.freescale.com/files/shared/doc/package_info/98ARH98330A.pdf</description>
<wire x1="-7.9" y1="5.45" x2="7.9" y2="5.45" width="0.2032" layer="21"/>
<wire x1="7.9" y1="5.45" x2="7.9" y2="1.6" width="0.2032" layer="21"/>
<wire x1="7.9" y1="1.25" x2="6.8" y2="1.25" width="0.2032" layer="51"/>
<wire x1="6.8" y1="-1.25" x2="7.9" y2="-1.25" width="0.2032" layer="51"/>
<wire x1="7.9" y1="-1.6" x2="7.9" y2="-5.45" width="0.2032" layer="21"/>
<wire x1="7.9" y1="-5.45" x2="-7.1" y2="-5.45" width="0.2032" layer="21"/>
<wire x1="-7.1" y1="-5.45" x2="-7.9" y2="-4.65" width="0.2032" layer="21"/>
<wire x1="-7.9" y1="-4.65" x2="-7.9" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-7.9" y1="-1.25" x2="-6.8" y2="-1.25" width="0.2032" layer="51"/>
<wire x1="-6.8" y1="1.25" x2="-7.9" y2="1.25" width="0.2032" layer="51"/>
<wire x1="-7.9" y1="1.6" x2="-7.9" y2="5.45" width="0.2032" layer="21"/>
<wire x1="-6.8" y1="-1.25" x2="-6.8" y2="1.25" width="0.2032" layer="51"/>
<wire x1="6.8" y1="1.25" x2="6.8" y2="-1.25" width="0.2032" layer="51"/>
<wire x1="-7.9" y1="-1.25" x2="-7.9" y2="1.25" width="0.2032" layer="51"/>
<wire x1="7.9" y1="1.25" x2="7.9" y2="-1.25" width="0.2032" layer="51"/>
<rectangle x1="-7.462409375" y1="-6.98661875" x2="-6.2" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-6.802040625" y1="-6.977090625" x2="-5.55" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-6.150059375" y1="-6.975059375" x2="-4.9" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-5.51045" y1="-6.98825" x2="-4.25" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-4.85493125" y1="-6.982090625" x2="-3.6" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-4.204390625" y1="-6.982290625" x2="-2.95" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-3.55673125" y1="-6.98821875" x2="-2.3" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-2.90363125" y1="-6.983740625" x2="-1.65" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-2.250359375" y1="-6.97613125" x2="-1" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-1.60255" y1="-6.9861" x2="-0.35" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-0.950459375" y1="-6.97836875" x2="0.3" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-0.300453125" y1="-6.985509375" x2="0.95" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="0.350684375" y1="-6.98865" x2="1.6" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="1.00083125" y1="-6.98081875" x2="2.25" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="1.652040625" y1="-6.983640625" x2="2.9" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="2.30316875" y1="-6.98461875" x2="3.55" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="2.95343125" y1="-6.983109375" x2="4.2" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="3.600940625" y1="-6.97681875" x2="4.85" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="4.25613125" y1="-6.985059375" x2="5.5" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="4.90758125" y1="-6.985790625" x2="6.15" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="5.55841875" y1="-6.985590625" x2="6.8" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="6.20853125" y1="-6.9846" x2="7.45" y2="-6.525" layer="29" rot="R90"/>
<rectangle x1="-7.67553125" y1="-6.548609375" x2="-5.9875" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-7.02356875" y1="-6.54781875" x2="-5.3375" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-6.37325" y1="-6.54855" x2="-4.6875" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-5.71531875" y1="-6.54073125" x2="-4.0375" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-5.06833125" y1="-6.54503125" x2="-3.3875" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-4.41373125" y1="-6.53931875" x2="-2.7375" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-3.76411875" y1="-6.54031875" x2="-2.0875" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-3.11651875" y1="-6.545940625" x2="-1.4375" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-2.4665" y1="-6.54811875" x2="-0.7875" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-1.81555" y1="-6.5485" x2="-0.1375" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-1.16411875" y1="-6.546590625" x2="0.5125" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="-0.512775" y1="-6.54101875" x2="1.1625" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="0.1376875" y1="-6.546440625" x2="1.8125" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="0.78843125" y1="-6.545240625" x2="2.4625" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="1.440159375" y1="-6.54961875" x2="3.1125" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="2.0913" y1="-6.5494" x2="3.7625" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="2.74085" y1="-6.545509375" x2="4.4125" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="3.38961875" y1="-6.541590625" x2="5.0625" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="4.04163125" y1="-6.54418125" x2="5.7125" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="4.68935" y1="-6.54008125" x2="6.3625" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="5.34661875" y1="-6.54868125" x2="7.0125" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="5.9941" y1="-6.544709375" x2="7.6625" y2="-6.2375" layer="51" rot="R90"/>
<rectangle x1="6.201159375" y1="6.52621875" x2="7.45" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="5.55518125" y1="6.531090625" x2="6.8" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="4.90356875" y1="6.52975" x2="6.15" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="4.25436875" y1="6.53171875" x2="5.5" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="3.60053125" y1="6.525959375" x2="4.85" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="2.955790625" y1="6.537809375" x2="4.2" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="2.30008125" y1="6.525240625" x2="3.55" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="1.65241875" y1="6.53458125" x2="2.9" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="1.001490625" y1="6.53473125" x2="2.25" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="0.35031875" y1="6.53096875" x2="1.6" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-0.30018125" y1="6.528909375" x2="0.95" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-0.95046875" y1="6.52823125" x2="0.3" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-1.60291875" y1="6.536909375" x2="-0.35" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-2.25426875" y1="6.53736875" x2="-1" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-2.905040625" y1="6.53633125" x2="-1.65" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-3.556890625" y1="6.537659375" x2="-2.3" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-4.201859375" y1="6.52788125" x2="-2.95" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-4.85235" y1="6.528159375" x2="-3.6" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-5.500609375" y1="6.52573125" x2="-4.25" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-6.155659375" y1="6.531" x2="-4.9" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-6.80733125" y1="6.53203125" x2="-5.55" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="-7.46431875" y1="6.537540625" x2="-6.2" y2="6.975" layer="29" rot="R270"/>
<rectangle x1="5.989" y1="6.239059375" x2="7.6625" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="5.340590625" y1="6.241109375" x2="7.0125" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="4.69505" y1="6.24755" x2="6.3625" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="4.04518125" y1="6.249359375" x2="5.7125" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="3.389859375" y1="6.24185" x2="5.0625" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="2.7381" y1="6.238859375" x2="4.4125" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="2.09063125" y1="6.246859375" x2="3.7625" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="1.4401" y1="6.24878125" x2="3.1125" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="0.787875" y1="6.24048125" x2="2.4625" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="0.137615625" y1="6.24278125" x2="1.8125" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-0.513328125" y1="6.24756875" x2="1.1625" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-1.16316875" y1="6.24106875" x2="0.5125" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-1.816009375" y1="6.24956875" x2="-0.1375" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-2.46295" y1="6.23863125" x2="-0.7875" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-3.11493125" y1="6.24236875" x2="-1.4375" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-3.76548125" y1="6.242440625" x2="-2.0875" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-4.41733125" y1="6.24431875" x2="-2.7375" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-5.068090625" y1="6.244390625" x2="-3.3875" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-5.713590625" y1="6.238690625" x2="-4.0375" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-6.36603125" y1="6.240959375" x2="-4.6875" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-7.02586875" y1="6.249390625" x2="-5.3375" y2="6.5375" layer="51" rot="R270"/>
<rectangle x1="-7.66325" y1="6.238109375" x2="-5.9875" y2="6.5375" layer="51" rot="R270"/>
<text x="-8.255859375" y="-1.9052" size="0.889090625" layer="25" ratio="11" rot="R90">&gt;NAME</text>
<text x="8.89635" y="-2.541809375" size="0.635453125" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<circle x="-7.83" y="-6.326" radius="0.635" width="0" layer="21"/>
<text x="7.62358125" y="-6.98828125" size="0.81318125" layer="21">22</text>
<text x="7.51003125" y="6.00803125" size="0.8138875" layer="21">23</text>
<text x="-8.50603125" y="6.004259375" size="0.813378125" layer="21">44</text>
<smd name="1" x="-6.825" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="2" x="-6.175" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="3" x="-5.525" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="4" x="-4.875" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="5" x="-4.225" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="6" x="-3.575" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="7" x="-2.925" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="8" x="-2.275" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="9" x="-1.625" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="10" x="-0.975" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="11" x="-0.325" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="12" x="0.325" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="13" x="0.975" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="14" x="1.625" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="15" x="2.275" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="16" x="2.925" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="17" x="3.575" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="18" x="4.225" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="19" x="4.875" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="20" x="5.525" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="21" x="6.175" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="22" x="6.825" y="-6.75" dx="1.2" dy="0.4" layer="1" rot="R90" stop="no"/>
<smd name="23" x="6.825" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="24" x="6.175" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="25" x="5.525" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="26" x="4.875" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="27" x="4.225" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="28" x="3.575" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="29" x="2.925" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="30" x="2.275" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="31" x="1.625" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="32" x="0.975" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="33" x="0.325" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="34" x="-0.325" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="35" x="-0.975" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="36" x="-1.625" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="37" x="-2.275" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="38" x="-2.925" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="39" x="-3.575" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="40" x="-4.225" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="41" x="-4.875" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="42" x="-5.525" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="43" x="-6.175" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="44" x="-6.825" y="6.75" dx="1.2" dy="0.4" layer="1" rot="R270" stop="no"/>
<smd name="EH@1" x="0" y="0" dx="12.6" dy="7.3" layer="1"/>
<smd name="EH@2" x="-7.15" y="0" dx="1.7" dy="2.9" layer="1"/>
<smd name="EH@3" x="7.15" y="0" dx="1.7" dy="2.9" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="PMIC-MC33932">
<wire x1="-17.78" y1="-30.48" x2="17.78" y2="-30.48" width="0.254" layer="94"/>
<wire x1="17.78" y1="-30.48" x2="17.78" y2="27.94" width="0.254" layer="94"/>
<wire x1="17.78" y1="27.94" x2="-17.78" y2="27.94" width="0.254" layer="94"/>
<wire x1="-17.78" y1="27.94" x2="-17.78" y2="-30.48" width="0.254" layer="94"/>
<text x="-17.8146" y="27.9944" size="1.781459375" layer="95">&gt;NAME</text>
<text x="7.62705" y="27.9658" size="1.779640625" layer="96">&gt;VALUE</text>
<pin name="!SFA" x="20.32" y="25.4" length="short" direction="oc" rot="R180"/>
<pin name="!SFB" x="-20.32" y="-27.94" length="short" direction="oc"/>
<pin name="CCPA" x="20.32" y="17.78" length="short" direction="out" rot="R180"/>
<pin name="CCPB" x="-20.32" y="-20.32" length="short" direction="out"/>
<pin name="D1" x="-20.32" y="25.4" length="short" direction="in"/>
<pin name="D3" x="20.32" y="-27.94" length="short" direction="in" rot="R180"/>
<pin name="EH@1" x="-2.54" y="-33.02" visible="pin" length="short" direction="pas" rot="R90"/>
<pin name="EH@2" x="0" y="-33.02" visible="pin" length="short" direction="pas" rot="R90"/>
<pin name="EH@3" x="2.54" y="-33.02" visible="pin" length="short" direction="pas" rot="R90"/>
<pin name="EN/!D2" x="-20.32" y="20.32" length="short" direction="in"/>
<pin name="EN/!D4" x="20.32" y="-22.86" length="short" direction="in" rot="R180"/>
<pin name="FBA" x="-20.32" y="22.86" length="short" direction="out"/>
<pin name="FBB" x="20.32" y="-25.4" length="short" direction="out" rot="R180"/>
<pin name="IN1" x="20.32" y="22.86" length="short" direction="in" rot="R180"/>
<pin name="IN2" x="20.32" y="20.32" length="short" direction="in" rot="R180"/>
<pin name="IN3" x="-20.32" y="-25.4" length="short" direction="in"/>
<pin name="IN4" x="-20.32" y="-22.86" length="short" direction="in"/>
<pin name="OUT1" x="-20.32" y="10.16" length="short" direction="out"/>
<pin name="OUT1@1" x="-20.32" y="7.62" length="short" direction="pas"/>
<pin name="OUT1@2" x="-20.32" y="5.08" length="short" direction="pas"/>
<pin name="OUT2" x="20.32" y="5.08" length="short" direction="out" rot="R180"/>
<pin name="OUT2@1" x="20.32" y="7.62" length="short" direction="pas" rot="R180"/>
<pin name="OUT2@2" x="20.32" y="10.16" length="short" direction="pas" rot="R180"/>
<pin name="OUT3" x="20.32" y="-12.7" length="short" direction="out" rot="R180"/>
<pin name="OUT3@1" x="20.32" y="-10.16" length="short" direction="pas" rot="R180"/>
<pin name="OUT3@2" x="20.32" y="-7.62" length="short" direction="pas" rot="R180"/>
<pin name="OUT4" x="-20.32" y="-7.62" length="short" direction="out"/>
<pin name="OUT4@1" x="-20.32" y="-10.16" length="short" direction="pas"/>
<pin name="OUT4@2" x="-20.32" y="-12.7" length="short" direction="pas"/>
<pin name="PGNDA" x="-20.32" y="2.54" length="short" direction="pwr"/>
<pin name="PGNDA@1" x="-20.32" y="0" length="short" direction="pwr"/>
<pin name="PGNDA@2" x="20.32" y="0" length="short" direction="pwr" rot="R180"/>
<pin name="PGNDA@3" x="20.32" y="2.54" length="short" direction="pwr" rot="R180"/>
<pin name="PGNDB" x="-20.32" y="-2.54" length="short" direction="pwr"/>
<pin name="PGNDB@1" x="-20.32" y="-5.08" length="short" direction="pwr"/>
<pin name="PGNDB@2" x="20.32" y="-5.08" length="short" direction="pwr" rot="R180"/>
<pin name="PGNDB@3" x="20.32" y="-2.54" length="short" direction="pwr" rot="R180"/>
<pin name="VPWRA" x="-20.32" y="17.78" length="short" direction="in"/>
<pin name="VPWRA@1" x="-20.32" y="15.24" length="short" direction="in"/>
<pin name="VPWRA@2" x="-20.32" y="12.7" length="short" direction="in"/>
<pin name="VPWRA@3" x="20.32" y="12.7" length="short" direction="in" rot="R180"/>
<pin name="VPWRA@4" x="20.32" y="15.24" length="short" direction="in" rot="R180"/>
<pin name="VPWRB" x="-20.32" y="-15.24" length="short" direction="in"/>
<pin name="VPWRB@1" x="-20.32" y="-17.78" length="short" direction="in"/>
<pin name="VPWRB@2" x="20.32" y="-20.32" length="short" direction="in" rot="R180"/>
<pin name="VPWRB@3" x="20.32" y="-17.78" length="short" direction="in" rot="R180"/>
<pin name="VPWRB@4" x="20.32" y="-15.24" length="short" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PMIC-MC33932VW(SOP44)" prefix="U">
<description>310030140</description>
<gates>
<gate name="G$1" symbol="PMIC-MC33932" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOP44-0.65-15.8X10.9MM">
<connects>
<connect gate="G$1" pin="!SFA" pad="44"/>
<connect gate="G$1" pin="!SFB" pad="22"/>
<connect gate="G$1" pin="CCPA" pad="41"/>
<connect gate="G$1" pin="CCPB" pad="19"/>
<connect gate="G$1" pin="D1" pad="1"/>
<connect gate="G$1" pin="D3" pad="23"/>
<connect gate="G$1" pin="EH@1" pad="EH@1"/>
<connect gate="G$1" pin="EH@2" pad="EH@2"/>
<connect gate="G$1" pin="EH@3" pad="EH@3"/>
<connect gate="G$1" pin="EN/!D2" pad="3"/>
<connect gate="G$1" pin="EN/!D4" pad="25"/>
<connect gate="G$1" pin="FBA" pad="2"/>
<connect gate="G$1" pin="FBB" pad="24"/>
<connect gate="G$1" pin="IN1" pad="43"/>
<connect gate="G$1" pin="IN2" pad="42"/>
<connect gate="G$1" pin="IN3" pad="21"/>
<connect gate="G$1" pin="IN4" pad="20"/>
<connect gate="G$1" pin="OUT1" pad="7"/>
<connect gate="G$1" pin="OUT1@1" pad="8"/>
<connect gate="G$1" pin="OUT1@2" pad="9"/>
<connect gate="G$1" pin="OUT2" pad="36"/>
<connect gate="G$1" pin="OUT2@1" pad="37"/>
<connect gate="G$1" pin="OUT2@2" pad="38"/>
<connect gate="G$1" pin="OUT3" pad="29"/>
<connect gate="G$1" pin="OUT3@1" pad="30"/>
<connect gate="G$1" pin="OUT3@2" pad="31"/>
<connect gate="G$1" pin="OUT4" pad="14"/>
<connect gate="G$1" pin="OUT4@1" pad="15"/>
<connect gate="G$1" pin="OUT4@2" pad="16"/>
<connect gate="G$1" pin="PGNDA" pad="10"/>
<connect gate="G$1" pin="PGNDA@1" pad="11"/>
<connect gate="G$1" pin="PGNDA@2" pad="34"/>
<connect gate="G$1" pin="PGNDA@3" pad="35"/>
<connect gate="G$1" pin="PGNDB" pad="12"/>
<connect gate="G$1" pin="PGNDB@1" pad="13"/>
<connect gate="G$1" pin="PGNDB@2" pad="32"/>
<connect gate="G$1" pin="PGNDB@3" pad="33"/>
<connect gate="G$1" pin="VPWRA" pad="4"/>
<connect gate="G$1" pin="VPWRA@1" pad="5"/>
<connect gate="G$1" pin="VPWRA@2" pad="6"/>
<connect gate="G$1" pin="VPWRA@3" pad="39"/>
<connect gate="G$1" pin="VPWRA@4" pad="40"/>
<connect gate="G$1" pin="VPWRB" pad="17"/>
<connect gate="G$1" pin="VPWRB@1" pad="18"/>
<connect gate="G$1" pin="VPWRB@2" pad="26"/>
<connect gate="G$1" pin="VPWRB@3" pad="27"/>
<connect gate="G$1" pin="VPWRB@4" pad="28"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Motor Driver CMOS Parallel 44-HSOP "/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=525358"/>
<attribute name="MF" value="NXP USA"/>
<attribute name="MP" value="MC33932VW"/>
<attribute name="PACKAGE" value="HSOP-44 NXP Semiconductors"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="1-1586043-4">
<packages>
<package name="TE_1-1586043-4">
<wire x1="-32.84" y1="-13.9" x2="-32.84" y2="-1.1" width="0.127" layer="51"/>
<wire x1="-32.84" y1="-1.1" x2="7.7" y2="-1.1" width="0.127" layer="51"/>
<wire x1="7.7" y1="-1.1" x2="7.7" y2="-13.9" width="0.127" layer="51"/>
<wire x1="7.7" y1="-13.9" x2="-32.84" y2="-13.9" width="0.127" layer="51"/>
<wire x1="-32.84" y1="-13.9" x2="-32.84" y2="-13.9" width="0.127" layer="51"/>
<wire x1="-32.84" y1="-13.9" x2="7.7" y2="-13.9" width="0.127" layer="51"/>
<wire x1="7.7" y1="-13.9" x2="7.7" y2="-13.9" width="0.127" layer="51"/>
<wire x1="-32.84" y1="-13.9" x2="-32.84" y2="-1.1" width="0.127" layer="21"/>
<wire x1="7.7" y1="-1.1" x2="7.7" y2="-13.9" width="0.127" layer="21"/>
<wire x1="-32.84" y1="-1.1" x2="-26.535" y2="-1.1" width="0.127" layer="21"/>
<wire x1="1.395" y1="-1.1" x2="7.7" y2="-1.1" width="0.127" layer="21"/>
<wire x1="-32.84" y1="-13.9" x2="7.7" y2="-13.9" width="0.127" layer="21"/>
<wire x1="-33.09" y1="-14.15" x2="-33.09" y2="6.825" width="0.05" layer="39"/>
<wire x1="-33.09" y1="6.825" x2="7.95" y2="6.825" width="0.05" layer="39"/>
<wire x1="7.95" y1="6.825" x2="7.95" y2="-14.15" width="0.05" layer="39"/>
<wire x1="7.95" y1="-14.15" x2="-33.09" y2="-14.15" width="0.05" layer="39"/>
<text x="-33.84" y="7.825" size="1.27" layer="25">&gt;NAME</text>
<text x="-33.84" y="-16.15" size="1.27" layer="27">&gt;VALUE</text>
<circle x="8.35" y="0" radius="0.1" width="0.2" layer="21"/>
<circle x="8.35" y="0" radius="0.1" width="0.2" layer="51"/>
<hole x="-29.64" y="-4.2" drill="3.2"/>
<hole x="4.5" y="-4.2" drill="3.2"/>
<pad name="1" x="0" y="0" drill="1.8" diameter="2.15" shape="square"/>
<pad name="2" x="0" y="5.5" drill="1.8" diameter="2.15"/>
<pad name="3" x="-4.19" y="0" drill="1.8" diameter="2.15"/>
<pad name="4" x="-4.19" y="5.5" drill="1.8" diameter="2.15"/>
<pad name="5" x="-8.38" y="0" drill="1.8" diameter="2.15"/>
<pad name="6" x="-8.38" y="5.5" drill="1.8" diameter="2.15"/>
<pad name="7" x="-12.57" y="0" drill="1.8" diameter="2.15"/>
<pad name="8" x="-12.57" y="5.5" drill="1.8" diameter="2.15"/>
<pad name="9" x="-16.76" y="0" drill="1.8" diameter="2.15"/>
<pad name="10" x="-16.76" y="5.5" drill="1.8" diameter="2.15"/>
<pad name="11" x="-20.95" y="0" drill="1.8" diameter="2.15"/>
<pad name="12" x="-20.95" y="5.5" drill="1.8" diameter="2.15"/>
<pad name="13" x="-25.14" y="0" drill="1.8" diameter="2.15"/>
<pad name="14" x="-25.14" y="5.5" drill="1.8" diameter="2.15"/>
</package>
</packages>
<symbols>
<symbol name="1-1586043-4">
<wire x1="-5.08" y1="-17.78" x2="-5.08" y2="20.32" width="0.254" layer="94"/>
<wire x1="-5.08" y1="20.32" x2="5.08" y2="20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="20.32" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="-17.78" x2="-5.08" y2="-17.78" width="0.254" layer="94"/>
<text x="-5.58" y="20.32" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-10.16" y="17.78" length="middle" direction="pas"/>
<pin name="2" x="-10.16" y="15.24" length="middle" direction="pas"/>
<pin name="3" x="-10.16" y="12.7" length="middle" direction="pas"/>
<pin name="4" x="-10.16" y="10.16" length="middle" direction="pas"/>
<pin name="5" x="-10.16" y="7.62" length="middle" direction="pas"/>
<pin name="6" x="-10.16" y="5.08" length="middle" direction="pas"/>
<pin name="7" x="-10.16" y="2.54" length="middle" direction="pas"/>
<pin name="8" x="-10.16" y="0" length="middle" direction="pas"/>
<pin name="9" x="-10.16" y="-2.54" length="middle" direction="pas"/>
<pin name="10" x="-10.16" y="-5.08" length="middle" direction="pas"/>
<pin name="11" x="-10.16" y="-7.62" length="middle" direction="pas"/>
<pin name="12" x="-10.16" y="-10.16" length="middle" direction="pas"/>
<pin name="13" x="-10.16" y="-12.7" length="middle" direction="pas"/>
<pin name="14" x="-10.16" y="-15.24" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1-1586043-4" prefix="J">
<gates>
<gate name="G$1" symbol="1-1586043-4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TE_1-1586043-4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="TE"/>
<attribute name="PARTREV" value="R"/>
<attribute name="STANDARD" value="Manufacturer Recommendations"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led" urn="urn:adsk.eagle:library:259">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="1206" urn="urn:adsk.eagle:footprint:15651/1" library_version="5">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
</package>
<package name="LD260" urn="urn:adsk.eagle:footprint:15652/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
</package>
<package name="LED2X5" urn="urn:adsk.eagle:footprint:15653/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
2 x 5 mm, rectangle</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-0.254" x2="1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="0.9398" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-0.6096" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.651" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.4478" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-0.6096" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.413" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-1.27" x2="2.413" y2="1.27" layer="21"/>
</package>
<package name="LED3MM" urn="urn:adsk.eagle:footprint:15654/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
3 mm, round</description>
<wire x1="1.5748" y1="-1.27" x2="1.5748" y2="1.27" width="0.254" layer="51"/>
<wire x1="-1.524" y1="0" x2="-1.1708" y2="0.9756" width="0.1524" layer="51" curve="-39.80361"/>
<wire x1="-1.524" y1="0" x2="-1.1391" y2="-1.0125" width="0.1524" layer="51" curve="41.633208"/>
<wire x1="1.1571" y1="0.9918" x2="1.524" y2="0" width="0.1524" layer="51" curve="-40.601165"/>
<wire x1="1.1708" y1="-0.9756" x2="1.524" y2="0" width="0.1524" layer="51" curve="39.80361"/>
<wire x1="0" y1="1.524" x2="1.2401" y2="0.8858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="0.9144" x2="0" y2="1.524" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.203" y2="-0.9356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-0.9356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<wire x1="-2.032" y1="0" x2="-1.7891" y2="0.9634" width="0.254" layer="51" curve="-28.301701"/>
<wire x1="-2.032" y1="0" x2="-1.7306" y2="-1.065" width="0.254" layer="51" curve="31.60822"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED5MM" urn="urn:adsk.eagle:footprint:15655/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LSU260" urn="urn:adsk.eagle:footprint:15656/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
1 mm, round, Siemens</description>
<wire x1="0" y1="-0.508" x2="-1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.508" x2="-1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.508" x2="0" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-0.254" x2="-1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.254" x2="-1.143" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.254" x2="1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="0.254" x2="0.508" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.381" x2="0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-0.381" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.381" x2="0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.508" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0.381" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.254" x2="0.254" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0" x2="0" y2="0.254" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-0.381" x2="0.381" y2="0.381" width="0.1524" layer="21" curve="90"/>
<circle x="0" y="0" radius="0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="0.8382" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.8542" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.397" y1="-0.254" x2="-1.143" y2="0.254" layer="51"/>
<rectangle x1="0.508" y1="-0.254" x2="1.397" y2="0.254" layer="51"/>
</package>
<package name="LZR181" urn="urn:adsk.eagle:footprint:15657/1" library_version="5">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
1 LED, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="0.7439" x2="0" y2="1.143" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="1.143" x2="0.8678" y2="0.7439" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-0.7439" x2="0" y2="-1.143" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-1.143" x2="0.8678" y2="-0.7439" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="0.8678" y1="-0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="0.7439" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="-0.7439" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.889" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.27" y2="0.254" layer="51"/>
</package>
<package name="Q62902-B152" urn="urn:adsk.eagle:footprint:15658/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-2.9718" y1="-1.8542" x2="-2.9718" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-0.254" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="-1.8542" x2="-2.54" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.1082" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="1.8542" x2="2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.54" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-1.1486" y1="0.8814" x2="0" y2="1.4478" width="0.1524" layer="21" curve="-52.498642"/>
<wire x1="0" y1="1.4478" x2="1.1476" y2="0.8827" width="0.1524" layer="21" curve="-52.433716"/>
<wire x1="-1.1351" y1="-0.8987" x2="0" y2="-1.4478" width="0.1524" layer="21" curve="51.629985"/>
<wire x1="0" y1="-1.4478" x2="1.1305" y2="-0.9044" width="0.1524" layer="21" curve="51.339172"/>
<wire x1="1.1281" y1="-0.9074" x2="1.4478" y2="0" width="0.1524" layer="51" curve="38.811177"/>
<wire x1="1.1401" y1="0.8923" x2="1.4478" y2="0" width="0.1524" layer="51" curve="-38.048073"/>
<wire x1="-1.4478" y1="0" x2="-1.1305" y2="-0.9044" width="0.1524" layer="51" curve="38.659064"/>
<wire x1="-1.4478" y1="0" x2="-1.1456" y2="0.8853" width="0.1524" layer="51" curve="-37.696376"/>
<wire x1="0" y1="1.7018" x2="1.4674" y2="0.8618" width="0.1524" layer="21" curve="-59.573488"/>
<wire x1="-1.4618" y1="0.8714" x2="0" y2="1.7018" width="0.1524" layer="21" curve="-59.200638"/>
<wire x1="0" y1="-1.7018" x2="1.4571" y2="-0.8793" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.4571" y1="-0.8793" x2="0" y2="-1.7018" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.7018" y1="0" x2="-1.4447" y2="0.8995" width="0.1524" layer="51" curve="-31.907626"/>
<wire x1="-1.7018" y1="0" x2="-1.4502" y2="-0.8905" width="0.1524" layer="51" curve="31.551992"/>
<wire x1="1.4521" y1="0.8874" x2="1.7018" y2="0" width="0.1524" layer="51" curve="-31.429586"/>
<wire x1="1.4459" y1="-0.8975" x2="1.7018" y2="0" width="0.1524" layer="51" curve="31.828757"/>
<wire x1="-2.1082" y1="1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<wire x1="2.9718" y1="1.8542" x2="2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B153" urn="urn:adsk.eagle:footprint:15659/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-5.5118" y1="-3.5052" x2="-5.5118" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-0.254" x2="-5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="-3.5052" x2="-5.08" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-4.6482" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="3.5052" x2="5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.08" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.6482" y1="3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="3.5052" x2="5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.2129" y1="0.0539" x2="-0.0539" y2="2.2129" width="0.1524" layer="51" curve="-90.010616"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-4.191" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B155" urn="urn:adsk.eagle:footprint:15660/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-1.27" y1="-3.048" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="2.921" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-5.207" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.54" x2="-5.207" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-6.985" y1="0.635" x2="-6.985" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.397" x2="-6.096" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="1.905" x2="-5.207" y2="-1.905" width="0.1524" layer="21"/>
<pad name="K" x="7.62" y="1.27" drill="0.8128" shape="long"/>
<pad name="A" x="7.62" y="-1.27" drill="0.8128" shape="long"/>
<text x="3.302" y="-2.794" size="1.016" layer="21" ratio="14">A+</text>
<text x="3.302" y="1.778" size="1.016" layer="21" ratio="14">K-</text>
<text x="11.684" y="-2.794" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.635" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.921" y1="1.016" x2="6.731" y2="1.524" layer="21"/>
<rectangle x1="2.921" y1="-1.524" x2="6.731" y2="-1.016" layer="21"/>
<hole x="0" y="0" drill="0.8128"/>
</package>
<package name="Q62902-B156" urn="urn:adsk.eagle:footprint:15661/1" library_version="5">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0.0539" y1="-2.2129" x2="2.2129" y2="-0.0539" width="0.1524" layer="51" curve="90.005308"/>
<wire x1="2.54" y1="3.81" x2="3.81" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="-2.54" y2="-3.302" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="4.0894" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.7846" y="-5.3594" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.556" y="-3.302" size="1.016" layer="21" ratio="14">+</text>
<text x="2.794" y="-3.302" size="1.016" layer="21" ratio="14">-</text>
</package>
<package name="SFH480" urn="urn:adsk.eagle:footprint:15662/1" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SFH482" urn="urn:adsk.eagle:footprint:15650/1" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="U57X32" urn="urn:adsk.eagle:footprint:15640/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
rectangle, 5.7 x 3.2 mm</description>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="2.54" y2="1.016" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.27" x2="2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="2.54" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="2.54" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.016" x2="2.54" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.27" x2="-1.778" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.27" x2="0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="1.27" x2="0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.27" x2="1.778" y2="-1.27" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="3.683" y="0.254" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.683" y="-1.524" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="IRL80A" urn="urn:adsk.eagle:footprint:15663/1" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
IR transmitter Siemens</description>
<wire x1="0.889" y1="2.286" x2="0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.762" x2="0.889" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.635" x2="0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-1.778" x2="0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.286" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="-0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0.762" x2="-0.889" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.778" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="0.889" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="0.762" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="0.508" x2="-1.143" y2="-0.508" width="0.0508" layer="21"/>
<pad name="K" x="0" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A" x="0" y="-1.27" drill="0.8128" shape="octagon"/>
<text x="1.27" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.27" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="P-LCC-2" urn="urn:adsk.eagle:footprint:15664/1" library_version="5">
<description>&lt;b&gt;TOPLED® High-optical Power LED (HOP)&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-1.8" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="C" x="0" y="-2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="2.54" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-2.25" x2="1.3" y2="-0.75" layer="31"/>
<rectangle x1="-1.3" y1="0.75" x2="1.3" y2="2.25" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.4" y1="0.65" x2="1.4" y2="2.35" layer="29"/>
<rectangle x1="-1.4" y1="-2.35" x2="1.4" y2="-0.65" layer="29"/>
</package>
<package name="OSRAM-MINI-TOP-LED" urn="urn:adsk.eagle:footprint:15665/1" library_version="5">
<description>&lt;b&gt;BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<wire x1="-0.6" y1="0.9" x2="-0.6" y2="-0.7" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="-0.9" x2="0.6" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.9" x2="0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="0.9" x2="-0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.95" x2="-0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="1.1" x2="0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="1.1" x2="0.45" y2="0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="-0.7" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-1.1" x2="0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="-1.1" x2="0.45" y2="-0.95" width="0.1016" layer="51"/>
<smd name="A" x="0" y="2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="1.905" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.175" size="1.27" layer="21">C</text>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.5" y1="0.6" x2="0.5" y2="1.4" layer="29"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-0.6" layer="29"/>
<rectangle x1="-0.15" y1="-0.6" x2="0.15" y2="-0.3" layer="51"/>
<rectangle x1="-0.45" y1="0.65" x2="0.45" y2="1.35" layer="31"/>
<rectangle x1="-0.45" y1="-1.35" x2="0.45" y2="-0.65" layer="31"/>
</package>
<package name="OSRAM-SIDELED" urn="urn:adsk.eagle:footprint:15666/1" library_version="5">
<description>&lt;b&gt;Super SIDELED® High-Current LED&lt;/b&gt;&lt;p&gt;
LG A672, LP A672 &lt;br&gt;
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<wire x1="-1.85" y1="-2.05" x2="-1.85" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="-0.75" x2="-1.7" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="-0.75" x2="-1.7" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="0.75" x2="-1.85" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="0.75" x2="-1.85" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="2.05" x2="0.9" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="-1.85" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="-2.05" x2="1.85" y2="-1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="-1.85" x2="1.85" y2="1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="1.85" x2="1.05" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.9" x2="-0.55" y2="0.9" width="0.1016" layer="51" curve="-167.319617"/>
<wire x1="-0.55" y1="-0.9" x2="0.85" y2="-1.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.55" y1="0.9" x2="0.85" y2="1.2" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="-2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="0.635" y="-3.175" size="1.27" layer="21" rot="R90">C</text>
<text x="0.635" y="2.54" size="1.27" layer="21" rot="R90">A</text>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-2.2" x2="2.1" y2="-0.4" layer="29"/>
<rectangle x1="-2.1" y1="0.4" x2="2.1" y2="2.2" layer="29"/>
<rectangle x1="-1.9" y1="-2.1" x2="1.9" y2="-0.6" layer="31"/>
<rectangle x1="-1.9" y1="0.6" x2="1.9" y2="2.1" layer="31"/>
<rectangle x1="-1.85" y1="-2.05" x2="-0.7" y2="-1" layer="51"/>
</package>
<package name="SMART-LED" urn="urn:adsk.eagle:footprint:15667/1" library_version="5">
<description>&lt;b&gt;SmartLEDTM Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="A" x="0" y="0.725" dx="0.35" dy="0.35" layer="1"/>
<smd name="B" x="0" y="-0.725" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-0.635" size="1.016" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.016" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
</package>
<package name="P-LCC-2-TOPLED-RG" urn="urn:adsk.eagle:footprint:15668/1" library_version="5">
<description>&lt;b&gt;Hyper TOPLED® RG Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="2.45" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-2.45" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="21"/>
<smd name="C" x="0" y="-3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="3.29" size="1.27" layer="21">A</text>
<text x="-0.635" y="-4.56" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-3" x2="1.3" y2="-1.5" layer="31"/>
<rectangle x1="-1.3" y1="1.5" x2="1.3" y2="3" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.15" y1="2.4" x2="1.15" y2="2.7" layer="51"/>
<rectangle x1="-1.15" y1="-2.7" x2="1.15" y2="-2.4" layer="51"/>
<rectangle x1="-1.5" y1="1.5" x2="1.5" y2="3.2" layer="29"/>
<rectangle x1="-1.5" y1="-3.2" x2="1.5" y2="-1.5" layer="29"/>
<hole x="0" y="0" drill="2.8"/>
</package>
<package name="MICRO-SIDELED" urn="urn:adsk.eagle:footprint:15669/1" library_version="5">
<description>&lt;b&gt;Hyper Micro SIDELED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<wire x1="0.65" y1="1.1" x2="-0.1" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="-0.35" y2="1" width="0.1016" layer="51"/>
<wire x1="-0.35" y1="1" x2="-0.35" y2="-0.9" width="0.1016" layer="21"/>
<wire x1="-0.35" y1="-0.9" x2="-0.1" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="-1.1" x2="0.65" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="0.65" y2="1.1" width="0.1016" layer="21"/>
<wire x1="0.6" y1="0.9" x2="0.25" y2="0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="0.7" x2="0.25" y2="-0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="-0.7" x2="0.6" y2="-0.9" width="0.0508" layer="21"/>
<smd name="A" x="0" y="1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.4" y1="1.1" x2="0.4" y2="1.8" layer="29"/>
<rectangle x1="-0.4" y1="-1.8" x2="0.4" y2="-1.1" layer="29"/>
<rectangle x1="-0.35" y1="-1.75" x2="0.35" y2="-1.15" layer="31"/>
<rectangle x1="-0.35" y1="1.15" x2="0.35" y2="1.75" layer="31"/>
<rectangle x1="-0.125" y1="1.125" x2="0.125" y2="1.75" layer="51"/>
<rectangle x1="-0.125" y1="-1.75" x2="0.125" y2="-1.125" layer="51"/>
</package>
<package name="P-LCC-4" urn="urn:adsk.eagle:footprint:15670/1" library_version="5">
<description>&lt;b&gt;Power TOPLED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="1.8" x2="-0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.8" x2="-0.5" y2="1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.65" x2="0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.8" x2="-0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="-1.8" x2="-0.5" y2="-1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.65" x2="0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.8" x2="1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1" y1="-1.8" x2="1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="A" x="-2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@3" x="2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@4" x="2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="-2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="1.27" layer="21">C</text>
<text x="-1.905" y="2.54" size="1.27" layer="21">A</text>
<text x="1.27" y="2.54" size="1.27" layer="21">C</text>
<text x="1.27" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.15" y1="0.75" x2="-0.35" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="0.75" x2="1.15" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="-1.85" x2="1.15" y2="-0.75" layer="29"/>
<rectangle x1="-1.15" y1="-1.85" x2="-0.35" y2="-0.75" layer="29"/>
<rectangle x1="-1.1" y1="-1.8" x2="-0.4" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="-1.8" x2="1.1" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="0.8" x2="1.1" y2="1.8" layer="31"/>
<rectangle x1="-1.1" y1="0.8" x2="-0.4" y2="1.8" layer="31"/>
<rectangle x1="-0.2" y1="-0.2" x2="0.2" y2="0.2" layer="21"/>
</package>
<package name="CHIP-LED0603" urn="urn:adsk.eagle:footprint:15671/1" library_version="5">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB Q993&lt;br&gt;
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<wire x1="-0.4" y1="0.45" x2="-0.4" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.45" x2="0.4" y2="-0.45" width="0.1016" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-0.635" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.45" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="0.45" y2="-0.45" layer="51"/>
<rectangle x1="-0.45" y1="0" x2="-0.3" y2="0.3" layer="21"/>
<rectangle x1="0.3" y1="0" x2="0.45" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
</package>
<package name="CHIP-LED0805" urn="urn:adsk.eagle:footprint:15672/1" library_version="5">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB R99A&lt;br&gt;
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<wire x1="-0.625" y1="0.45" x2="-0.625" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.625" y1="0.45" x2="0.625" y2="-0.475" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.675" y1="0" x2="-0.525" y2="0.3" layer="21"/>
<rectangle x1="0.525" y1="0" x2="0.675" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
<rectangle x1="-0.675" y1="0.45" x2="0.675" y2="1.05" layer="51"/>
<rectangle x1="-0.675" y1="-1.05" x2="0.675" y2="-0.45" layer="51"/>
</package>
<package name="MINI-TOPLED-SANTANA" urn="urn:adsk.eagle:footprint:15673/1" library_version="5">
<description>&lt;b&gt;Mini TOPLED Santana®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<wire x1="0.7" y1="-1" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.35" y1="-1" x2="-0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="-1" x2="-0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="1" x2="0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="0.7" y1="1" x2="0.7" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.45" y1="-0.7" x2="-0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="-0.7" x2="-0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="0.7" x2="0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="0.45" y1="0.7" x2="0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<smd name="C" x="0" y="-2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.55" y1="1.5" x2="0.55" y2="2.1" layer="29"/>
<rectangle x1="-0.55" y1="-2.1" x2="0.55" y2="-1.5" layer="29"/>
<rectangle x1="-0.5" y1="-2.05" x2="0.5" y2="-1.55" layer="31"/>
<rectangle x1="-0.5" y1="1.55" x2="0.5" y2="2.05" layer="31"/>
<rectangle x1="-0.2" y1="-0.4" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.5" y1="-2.1" x2="0.5" y2="-1.4" layer="51"/>
<rectangle x1="-0.5" y1="1.4" x2="0.5" y2="2.05" layer="51"/>
<rectangle x1="-0.5" y1="1" x2="0.5" y2="1.4" layer="21"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-1.05" layer="21"/>
<hole x="0" y="0" drill="2.7"/>
</package>
<package name="CHIPLED_0805" urn="urn:adsk.eagle:footprint:15674/1" library_version="5">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.1" y1="0" x2="0.1" y2="0.2" layer="21"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.8" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_1206" urn="urn:adsk.eagle:footprint:15675/1" library_version="5">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.75" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.75" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
<rectangle x1="-0.85" y1="0.35" x2="-0.525" y2="0.775" layer="21"/>
<rectangle x1="0.525" y1="0.35" x2="0.85" y2="0.775" layer="21"/>
<rectangle x1="-0.175" y1="0" x2="0.175" y2="0.35" layer="21"/>
</package>
<package name="CHIPLED_0603" urn="urn:adsk.eagle:footprint:15676/1" library_version="5">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
</package>
<package name="CHIPLED-0603-TTW" urn="urn:adsk.eagle:footprint:15677/1" library_version="5">
<description>&lt;b&gt;CHIPLED-0603&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.4" y1="0.625" x2="0.4" y2="1.125" layer="29"/>
<rectangle x1="-0.4" y1="-1.125" x2="0.4" y2="-0.625" layer="29"/>
<rectangle x1="-0.175" y1="-0.675" x2="0.175" y2="-0.325" layer="29"/>
</package>
<package name="SMARTLED-TTW" urn="urn:adsk.eagle:footprint:15678/1" library_version="5">
<description>&lt;b&gt;SmartLED TTW&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
<rectangle x1="-0.225" y1="0.3" x2="0.225" y2="0.975" layer="31"/>
<rectangle x1="-0.175" y1="-0.7" x2="0.175" y2="-0.325" layer="29" rot="R180"/>
<rectangle x1="-0.225" y1="-0.975" x2="0.225" y2="-0.3" layer="31" rot="R180"/>
</package>
<package name="LUMILED+" urn="urn:adsk.eagle:footprint:15679/1" library_version="5">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; with cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="1">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LUMILED" urn="urn:adsk.eagle:footprint:15680/1" library_version="5">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; without cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LED10MM" urn="urn:adsk.eagle:footprint:15681/1" library_version="5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
10 mm, round</description>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="21" curve="-306.869898"/>
<wire x1="4.445" y1="0" x2="0" y2="-4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="3.81" y1="0" x2="0" y2="-3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="3.175" y1="0" x2="0" y2="-3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="-4.445" y1="0" x2="0" y2="4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.81" y1="0" x2="0" y2="3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.175" y1="0" x2="0" y2="3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<circle x="0" y="0" radius="5.08" width="0.127" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.6764" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.6764" shape="octagon"/>
<text x="6.35" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="6.35" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="KA-3528ASYC" urn="urn:adsk.eagle:footprint:15682/1" library_version="5">
<description>&lt;b&gt;SURFACE MOUNT LED LAMP&lt;/b&gt; 3.5x2.8mm&lt;p&gt;
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<wire x1="-1.55" y1="1.35" x2="1.55" y2="1.35" width="0.1016" layer="21"/>
<wire x1="1.55" y1="1.35" x2="1.55" y2="-1.35" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-1.35" x2="-1.55" y2="-1.35" width="0.1016" layer="21"/>
<wire x1="-1.55" y1="-1.35" x2="-1.55" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="0.95" x2="0.65" y2="0.95" width="0.1016" layer="21" curve="-68.40813"/>
<wire x1="0.65" y1="-0.95" x2="-0.65" y2="-0.95" width="0.1016" layer="21" curve="-68.40813"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="A" x="-1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<smd name="C" x="1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.75" y1="0.6" x2="-1.6" y2="1.1" layer="51"/>
<rectangle x1="-1.75" y1="-1.1" x2="-1.6" y2="-0.6" layer="51"/>
<rectangle x1="1.6" y1="-1.1" x2="1.75" y2="-0.6" layer="51" rot="R180"/>
<rectangle x1="1.6" y1="0.6" x2="1.75" y2="1.1" layer="51" rot="R180"/>
<polygon width="0.1016" layer="51">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-0.625"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
<polygon width="0.1016" layer="21">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-1.175"/>
<vertex x="1" y="-1.175"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
</package>
<package name="SML0805" urn="urn:adsk.eagle:footprint:15683/1" library_version="5">
<description>&lt;b&gt;SML0805-2CW-TR (0805 PROFILE)&lt;/b&gt; COOL WHITE&lt;p&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0093.pdf</description>
<wire x1="-0.95" y1="-0.55" x2="0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.55" x2="0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.55" x2="-0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="0.55" x2="-0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="-0.175" y1="-0.025" x2="0" y2="0.15" width="0.0634" layer="21"/>
<wire x1="0" y1="0.15" x2="0.15" y2="0" width="0.0634" layer="21"/>
<wire x1="0.15" y1="0" x2="-0.025" y2="-0.175" width="0.0634" layer="21"/>
<wire x1="-0.025" y1="-0.175" x2="-0.175" y2="-0.025" width="0.0634" layer="21"/>
<circle x="-0.275" y="0.4" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SML1206" urn="urn:adsk.eagle:footprint:15684/1" library_version="5">
<description>&lt;b&gt;SML10XXKH-TR (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;SML10R3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10E3KH-TR&lt;/td&gt;&lt;td&gt;SUPER REDSUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10O3KH-TR&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PY3KH-TR&lt;/td&gt;&lt;td&gt;PURE YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10OY3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10AG3KH-TR&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10BG3KH-TR&lt;/td&gt;&lt;td&gt;BLUE GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PB1KH-TR&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10CW1KH-TR&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;

Source: http://www.ledtronics.com/ds/smd-1206/dstr0094.PDF</description>
<wire x1="-1.5" y1="0.5" x2="-1.5" y2="-0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="1.5" y1="-0.5" x2="1.5" y2="0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<circle x="-0.725" y="0.525" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="0.4" x2="-1.15" y2="0.8" layer="51"/>
<rectangle x1="-1.6" y1="-0.8" x2="-1.15" y2="-0.4" layer="51"/>
<rectangle x1="-1.175" y1="-0.6" x2="-1" y2="-0.275" layer="51"/>
<rectangle x1="1.15" y1="-0.8" x2="1.6" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="1.15" y1="0.4" x2="1.6" y2="0.8" layer="51" rot="R180"/>
<rectangle x1="1" y1="0.275" x2="1.175" y2="0.6" layer="51" rot="R180"/>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
</package>
<package name="SML0603" urn="urn:adsk.eagle:footprint:15685/1" library_version="5">
<description>&lt;b&gt;SML0603-XXX (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;AG3K&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B1K&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R1K&lt;/td&gt;&lt;td&gt;SUPER RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R3K&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3K&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3KH&lt;/td&gt;&lt;td&gt;SOFT ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3KH&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3K&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2CW&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<wire x1="-0.75" y1="0.35" x2="0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="0.35" x2="0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="-0.35" x2="-0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.75" y1="-0.35" x2="-0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.3" x2="-0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="0.45" y1="0.3" x2="0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.35" x2="0.2" y2="0.35" width="0.1016" layer="21"/>
<wire x1="-0.2" y1="-0.35" x2="0.2" y2="-0.35" width="0.1016" layer="21"/>
<smd name="C" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.4" y1="0.175" x2="0" y2="0.4" layer="51"/>
<rectangle x1="-0.25" y1="0.175" x2="0" y2="0.4" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1206" urn="urn:adsk.eagle:package:15796/2" type="model" library_version="5">
<description>CHICAGO MINIATURE LAMP, INC.
7022X Series SMT LEDs 1206 Package Size</description>
<packageinstances>
<packageinstance name="1206"/>
</packageinstances>
</package3d>
<package3d name="LD260" urn="urn:adsk.eagle:package:15794/1" type="box" library_version="5">
<description>LED
5 mm, square, Siemens</description>
<packageinstances>
<packageinstance name="LD260"/>
</packageinstances>
</package3d>
<package3d name="LED2X5" urn="urn:adsk.eagle:package:15800/1" type="box" library_version="5">
<description>LED
2 x 5 mm, rectangle</description>
<packageinstances>
<packageinstance name="LED2X5"/>
</packageinstances>
</package3d>
<package3d name="LED3MM" urn="urn:adsk.eagle:package:15797/1" type="box" library_version="5">
<description>LED
3 mm, round</description>
<packageinstances>
<packageinstance name="LED3MM"/>
</packageinstances>
</package3d>
<package3d name="LED5MM" urn="urn:adsk.eagle:package:15799/2" type="model" library_version="5">
<description>LED
5 mm, round</description>
<packageinstances>
<packageinstance name="LED5MM"/>
</packageinstances>
</package3d>
<package3d name="LSU260" urn="urn:adsk.eagle:package:15805/1" type="box" library_version="5">
<description>LED
1 mm, round, Siemens</description>
<packageinstances>
<packageinstance name="LSU260"/>
</packageinstances>
</package3d>
<package3d name="LZR181" urn="urn:adsk.eagle:package:15808/1" type="box" library_version="5">
<description>LED BLOCK
1 LED, Siemens</description>
<packageinstances>
<packageinstance name="LZR181"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B152" urn="urn:adsk.eagle:package:15803/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B152"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B153" urn="urn:adsk.eagle:package:15804/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B153"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B155" urn="urn:adsk.eagle:package:15807/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B155"/>
</packageinstances>
</package3d>
<package3d name="Q62902-B156" urn="urn:adsk.eagle:package:15806/1" type="box" library_version="5">
<description>LED HOLDER
Siemens</description>
<packageinstances>
<packageinstance name="Q62902-B156"/>
</packageinstances>
</package3d>
<package3d name="SFH480" urn="urn:adsk.eagle:package:15809/1" type="box" library_version="5">
<description>IR LED
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking
Inifineon</description>
<packageinstances>
<packageinstance name="SFH480"/>
</packageinstances>
</package3d>
<package3d name="SFH482" urn="urn:adsk.eagle:package:15795/1" type="box" library_version="5">
<description>IR LED
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking
Inifineon</description>
<packageinstances>
<packageinstance name="SFH482"/>
</packageinstances>
</package3d>
<package3d name="U57X32" urn="urn:adsk.eagle:package:15789/1" type="box" library_version="5">
<description>LED
rectangle, 5.7 x 3.2 mm</description>
<packageinstances>
<packageinstance name="U57X32"/>
</packageinstances>
</package3d>
<package3d name="IRL80A" urn="urn:adsk.eagle:package:15810/1" type="box" library_version="5">
<description>IR LED
IR transmitter Siemens</description>
<packageinstances>
<packageinstance name="IRL80A"/>
</packageinstances>
</package3d>
<package3d name="P-LCC-2" urn="urn:adsk.eagle:package:15817/1" type="box" library_version="5">
<description>TOPLED® High-optical Power LED (HOP)
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<packageinstances>
<packageinstance name="P-LCC-2"/>
</packageinstances>
</package3d>
<package3d name="OSRAM-MINI-TOP-LED" urn="urn:adsk.eagle:package:15811/1" type="box" library_version="5">
<description>BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<packageinstances>
<packageinstance name="OSRAM-MINI-TOP-LED"/>
</packageinstances>
</package3d>
<package3d name="OSRAM-SIDELED" urn="urn:adsk.eagle:package:15812/1" type="box" library_version="5">
<description>Super SIDELED® High-Current LED
LG A672, LP A672 
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<packageinstances>
<packageinstance name="OSRAM-SIDELED"/>
</packageinstances>
</package3d>
<package3d name="SMART-LED" urn="urn:adsk.eagle:package:15814/1" type="box" library_version="5">
<description>SmartLEDTM Hyper-Bright LED
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<packageinstances>
<packageinstance name="SMART-LED"/>
</packageinstances>
</package3d>
<package3d name="P-LCC-2-TOPLED-RG" urn="urn:adsk.eagle:package:15813/1" type="box" library_version="5">
<description>Hyper TOPLED® RG Hyper-Bright LED
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<packageinstances>
<packageinstance name="P-LCC-2-TOPLED-RG"/>
</packageinstances>
</package3d>
<package3d name="MICRO-SIDELED" urn="urn:adsk.eagle:package:15815/1" type="box" library_version="5">
<description>Hyper Micro SIDELED®
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<packageinstances>
<packageinstance name="MICRO-SIDELED"/>
</packageinstances>
</package3d>
<package3d name="P-LCC-4" urn="urn:adsk.eagle:package:15816/1" type="box" library_version="5">
<description>Power TOPLED®
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<packageinstances>
<packageinstance name="P-LCC-4"/>
</packageinstances>
</package3d>
<package3d name="CHIP-LED0603" urn="urn:adsk.eagle:package:15819/3" type="model" library_version="5">
<description>Hyper CHIPLED Hyper-Bright LED
LB Q993
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<packageinstances>
<packageinstance name="CHIP-LED0603"/>
</packageinstances>
</package3d>
<package3d name="CHIP-LED0805" urn="urn:adsk.eagle:package:15818/2" type="model" library_version="5">
<description>Hyper CHIPLED Hyper-Bright LED
LB R99A
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<packageinstances>
<packageinstance name="CHIP-LED0805"/>
</packageinstances>
</package3d>
<package3d name="MINI-TOPLED-SANTANA" urn="urn:adsk.eagle:package:15820/1" type="box" library_version="5">
<description>Mini TOPLED Santana®
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<packageinstances>
<packageinstance name="MINI-TOPLED-SANTANA"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED_0805" urn="urn:adsk.eagle:package:15821/2" type="model" library_version="5">
<description>CHIPLED
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED_0805"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED_1206" urn="urn:adsk.eagle:package:15823/2" type="model" library_version="5">
<description>CHIPLED
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED_1206"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED_0603" urn="urn:adsk.eagle:package:15822/2" type="model" library_version="5">
<description>CHIPLED
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED_0603"/>
</packageinstances>
</package3d>
<package3d name="CHIPLED-0603-TTW" urn="urn:adsk.eagle:package:15824/1" type="box" library_version="5">
<description>CHIPLED-0603
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603
Package able to withstand TTW-soldering heat
Package suitable for TTW-soldering
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<packageinstances>
<packageinstance name="CHIPLED-0603-TTW"/>
</packageinstances>
</package3d>
<package3d name="SMARTLED-TTW" urn="urn:adsk.eagle:package:15825/1" type="box" library_version="5">
<description>SmartLED TTW
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603
Package able to withstand TTW-soldering heat
Package suitable for TTW-soldering
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<packageinstances>
<packageinstance name="SMARTLED-TTW"/>
</packageinstances>
</package3d>
<package3d name="LUMILED+" urn="urn:adsk.eagle:package:15826/1" type="box" library_version="5">
<description>Lumileds Lighting. LUXEON® with cool pad
Source: K2.pdf</description>
<packageinstances>
<packageinstance name="LUMILED+"/>
</packageinstances>
</package3d>
<package3d name="LUMILED" urn="urn:adsk.eagle:package:15827/1" type="box" library_version="5">
<description>Lumileds Lighting. LUXEON® without cool pad
Source: K2.pdf</description>
<packageinstances>
<packageinstance name="LUMILED"/>
</packageinstances>
</package3d>
<package3d name="LED10MM" urn="urn:adsk.eagle:package:15828/1" type="box" library_version="5">
<description>LED
10 mm, round</description>
<packageinstances>
<packageinstance name="LED10MM"/>
</packageinstances>
</package3d>
<package3d name="KA-3528ASYC" urn="urn:adsk.eagle:package:15831/1" type="box" library_version="5">
<description>SURFACE MOUNT LED LAMP 3.5x2.8mm
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<packageinstances>
<packageinstance name="KA-3528ASYC"/>
</packageinstances>
</package3d>
<package3d name="SML0805" urn="urn:adsk.eagle:package:15830/1" type="box" library_version="5">
<description>SML0805-2CW-TR (0805 PROFILE) COOL WHITE
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0093.pdf</description>
<packageinstances>
<packageinstance name="SML0805"/>
</packageinstances>
</package3d>
<package3d name="SML1206" urn="urn:adsk.eagle:package:15829/1" type="box" library_version="5">
<description>SML10XXKH-TR (HIGH INTENSITY) LED

SML10R3KH-TRULTRA RED
SML10E3KH-TRSUPER REDSUPER BLUE
SML10O3KH-TRSUPER ORANGE
SML10PY3KH-TRPURE YELLOW
SML10OY3KH-TRULTRA YELLOW
SML10AG3KH-TRAQUA GREEN
SML10BG3KH-TRBLUE GREEN
SML10PB1KH-TRSUPER BLUE
SML10CW1KH-TRWHITE


Source: http://www.ledtronics.com/ds/smd-1206/dstr0094.PDF</description>
<packageinstances>
<packageinstance name="SML1206"/>
</packageinstances>
</package3d>
<package3d name="SML0603" urn="urn:adsk.eagle:package:15832/1" type="box" library_version="5">
<description>SML0603-XXX (HIGH INTENSITY) LED

AG3KAQUA GREEN
B1KSUPER BLUE
R1KSUPER RED
R3KULTRA RED
O3KSUPER ORANGE
O3KHSOFT ORANGE
Y3KHSUPER YELLOW
Y3KSUPER YELLOW
2CWWHITE

Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<packageinstances>
<packageinstance name="SML0603"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LED" urn="urn:adsk.eagle:symbol:15639/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED" urn="urn:adsk.eagle:component:15916/10" prefix="LED" uservalue="yes" library_version="5">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
&lt;u&gt;OSRAM&lt;/u&gt;:&lt;br&gt;

- &lt;u&gt;CHIPLED&lt;/u&gt;&lt;br&gt;
LG R971, LG N971, LY N971, LG Q971, LY Q971, LO R971, LY R971
LH N974, LH R974&lt;br&gt;
LS Q976, LO Q976, LY Q976&lt;br&gt;
LO Q996&lt;br&gt;

- &lt;u&gt;Hyper CHIPLED&lt;/u&gt;&lt;br&gt;
LW Q18S&lt;br&gt;
LB Q993, LB Q99A, LB R99A&lt;br&gt;

- &lt;u&gt;SideLED&lt;/u&gt;&lt;br&gt;
LS A670, LO A670, LY A670, LG A670, LP A670&lt;br&gt;
LB A673, LV A673, LT A673, LW A673&lt;br&gt;
LH A674&lt;br&gt;
LY A675&lt;br&gt;
LS A676, LA A676, LO A676, LY A676, LW A676&lt;br&gt;
LS A679, LY A679, LG A679&lt;br&gt;

-  &lt;u&gt;Hyper Micro SIDELED®&lt;/u&gt;&lt;br&gt;
LS Y876, LA Y876, LO Y876, LY Y876&lt;br&gt;
LT Y87S&lt;br&gt;

- &lt;u&gt;SmartLED&lt;/u&gt;&lt;br&gt;
LW L88C, LW L88S&lt;br&gt;
LB L89C, LB L89S, LG L890&lt;br&gt;
LS L89K, LO L89K, LY L89K&lt;br&gt;
LS L896, LA L896, LO L896, LY L896&lt;br&gt;

- &lt;u&gt;TOPLED&lt;/u&gt;&lt;br&gt;
LS T670, LO T670, LY T670, LG T670, LP T670&lt;br&gt;
LSG T670, LSP T670, LSY T670, LOP T670, LYG T670&lt;br&gt;
LG T671, LOG T671, LSG T671&lt;br&gt;
LB T673, LV T673, LT T673, LW T673&lt;br&gt;
LH T674&lt;br&gt;
LS T676, LA T676, LO T676, LY T676, LB T676, LH T676, LSB T676, LW T676&lt;br&gt;
LB T67C, LV T67C, LT T67C, LS T67K, LO T67K, LY T67K, LW E67C&lt;br&gt;
LS E67B, LA E67B, LO E67B, LY E67B, LB E67C, LV E67C, LT E67C&lt;br&gt;
LW T67C&lt;br&gt;
LS T679, LY T679, LG T679&lt;br&gt;
LS T770, LO T770, LY T770, LG T770, LP T770&lt;br&gt;
LB T773, LV T773, LT T773, LW T773&lt;br&gt;
LH T774&lt;br&gt;
LS E675, LA E675, LY E675, LS T675&lt;br&gt;
LS T776, LA T776, LO T776, LY T776, LB T776&lt;br&gt;
LHGB T686&lt;br&gt;
LT T68C, LB T68C&lt;br&gt;

- &lt;u&gt;Hyper Mini TOPLED®&lt;/u&gt;&lt;br&gt;
LB M676&lt;br&gt;

- &lt;u&gt;Mini TOPLED Santana®&lt;/u&gt;&lt;br&gt;
LG M470&lt;br&gt;
LS M47K, LO M47K, LY M47K
&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;

&lt;u&gt;LUXEON:&lt;/u&gt;&lt;br&gt;
- &lt;u&gt;LUMILED®&lt;/u&gt;&lt;br&gt;
LXK2-PW12-R00, LXK2-PW12-S00, LXK2-PW14-U00, LXK2-PW14-V00&lt;br&gt;
LXK2-PM12-R00, LXK2-PM12-S00, LXK2-PM14-U00&lt;br&gt;
LXK2-PE12-Q00, LXK2-PE12-R00, LXK2-PE12-S00, LXK2-PE14-T00, LXK2-PE14-U00&lt;br&gt;
LXK2-PB12-K00, LXK2-PB12-L00, LXK2-PB12-M00, LXK2-PB14-N00, LXK2-PB14-P00, LXK2-PB14-Q00&lt;br&gt;
LXK2-PR12-L00, LXK2-PR12-M00, LXK2-PR14-Q00, LXK2-PR14-R00&lt;br&gt;
LXK2-PD12-Q00, LXK2-PD12-R00, LXK2-PD12-S00&lt;br&gt;
LXK2-PH12-R00, LXK2-PH12-S00&lt;br&gt;
LXK2-PL12-P00, LXK2-PL12-Q00, LXK2-PL12-R00
&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;

&lt;u&gt;KINGBRIGHT:&lt;/U&gt;&lt;p&gt;
KA-3528ASYC&lt;br&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="SMT1206" package="1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15796/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="20" constant="no"/>
</technology>
</technologies>
</device>
<device name="LD260" package="LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15794/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SQR2X5" package="LED2X5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15800/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="3MM" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15797/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="97" constant="no"/>
</technology>
</technologies>
</device>
<device name="5MM" package="LED5MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15799/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="93" constant="no"/>
</technology>
</technologies>
</device>
<device name="LSU260" package="LSU260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15805/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="LZR181" package="LZR181">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15808/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="B152" package="Q62902-B152">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15803/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="B153" package="Q62902-B153">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15804/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="B155" package="Q62902-B155">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15807/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="B156" package="Q62902-B156">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15806/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SFH480" package="SFH480">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15809/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="SFH482" package="SFH482">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15795/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SQR5.7X3.2" package="U57X32">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15789/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="IRL80A" package="IRL80A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15810/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="P-LCC-2" package="P-LCC-2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15817/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="MINI-TOP" package="OSRAM-MINI-TOP-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15811/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SIDELED" package="OSRAM-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15812/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMART-LED" package="SMART-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="B"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15814/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="P-LCC-2-BACK" package="P-LCC-2-TOPLED-RG">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15813/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="MICRO-SIDELED" package="MICRO-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15815/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="P-LCC-4" package="P-LCC-4">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C@4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15816/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-LED0603" package="CHIP-LED0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15819/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="26" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIP-LED0805" package="CHIP-LED0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15818/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="68" constant="no"/>
</technology>
</technologies>
</device>
<device name="TOPLED-SANTANA" package="MINI-TOPLED-SANTANA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15820/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED_0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15821/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="52" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED_1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15823/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED_0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15822/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
<device name="CHIPLED-0603-TTW" package="CHIPLED-0603-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15824/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="SMARTLED-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15825/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
<device name="-LUMILED+" package="LUMILED+">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15826/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="-LUMILED" package="LUMILED">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15827/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="10MM" package="LED10MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15828/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="KA-3528ASYC" package="KA-3528ASYC">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15831/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML0805" package="SML0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15830/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML1206" package="SML1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15829/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="6" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML0603" package="SML0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15832/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="maxim-10">
<packages>
<package name="SOIC127P1030X265-18N">
<wire x1="-3.81" y1="4.826" x2="-3.81" y2="5.334" width="0" layer="51"/>
<wire x1="-3.81" y1="5.334" x2="-5.3086" y2="5.334" width="0" layer="51"/>
<wire x1="-5.3086" y1="5.334" x2="-5.3086" y2="4.826" width="0" layer="51"/>
<wire x1="-5.3086" y1="4.826" x2="-3.81" y2="4.826" width="0" layer="51"/>
<wire x1="-3.81" y1="3.556" x2="-3.81" y2="4.064" width="0" layer="51"/>
<wire x1="-3.81" y1="4.064" x2="-5.3086" y2="4.064" width="0" layer="51"/>
<wire x1="-5.3086" y1="4.064" x2="-5.3086" y2="3.556" width="0" layer="51"/>
<wire x1="-5.3086" y1="3.556" x2="-3.81" y2="3.556" width="0" layer="51"/>
<wire x1="-3.81" y1="2.286" x2="-3.81" y2="2.794" width="0" layer="51"/>
<wire x1="-3.81" y1="2.794" x2="-5.3086" y2="2.794" width="0" layer="51"/>
<wire x1="-5.3086" y1="2.794" x2="-5.3086" y2="2.286" width="0" layer="51"/>
<wire x1="-5.3086" y1="2.286" x2="-3.81" y2="2.286" width="0" layer="51"/>
<wire x1="-3.81" y1="1.016" x2="-3.81" y2="1.524" width="0" layer="51"/>
<wire x1="-3.81" y1="1.524" x2="-5.3086" y2="1.524" width="0" layer="51"/>
<wire x1="-5.3086" y1="1.524" x2="-5.3086" y2="1.016" width="0" layer="51"/>
<wire x1="-5.3086" y1="1.016" x2="-3.81" y2="1.016" width="0" layer="51"/>
<wire x1="-3.81" y1="-0.254" x2="-3.81" y2="0.254" width="0" layer="51"/>
<wire x1="-3.81" y1="0.254" x2="-5.3086" y2="0.254" width="0" layer="51"/>
<wire x1="-5.3086" y1="0.254" x2="-5.3086" y2="-0.254" width="0" layer="51"/>
<wire x1="-5.3086" y1="-0.254" x2="-3.81" y2="-0.254" width="0" layer="51"/>
<wire x1="-3.81" y1="-1.524" x2="-3.81" y2="-1.016" width="0" layer="51"/>
<wire x1="-3.81" y1="-1.016" x2="-5.3086" y2="-1.016" width="0" layer="51"/>
<wire x1="-5.3086" y1="-1.016" x2="-5.3086" y2="-1.524" width="0" layer="51"/>
<wire x1="-5.3086" y1="-1.524" x2="-3.81" y2="-1.524" width="0" layer="51"/>
<wire x1="-3.81" y1="-2.794" x2="-3.81" y2="-2.286" width="0" layer="51"/>
<wire x1="-3.81" y1="-2.286" x2="-5.3086" y2="-2.286" width="0" layer="51"/>
<wire x1="-5.3086" y1="-2.286" x2="-5.3086" y2="-2.794" width="0" layer="51"/>
<wire x1="-5.3086" y1="-2.794" x2="-3.81" y2="-2.794" width="0" layer="51"/>
<wire x1="-3.81" y1="-4.064" x2="-3.81" y2="-3.556" width="0" layer="51"/>
<wire x1="-3.81" y1="-3.556" x2="-5.3086" y2="-3.556" width="0" layer="51"/>
<wire x1="-5.3086" y1="-3.556" x2="-5.3086" y2="-4.064" width="0" layer="51"/>
<wire x1="-5.3086" y1="-4.064" x2="-3.81" y2="-4.064" width="0" layer="51"/>
<wire x1="-3.81" y1="-5.334" x2="-3.81" y2="-4.826" width="0" layer="51"/>
<wire x1="-3.81" y1="-4.826" x2="-5.3086" y2="-4.826" width="0" layer="51"/>
<wire x1="-5.3086" y1="-4.826" x2="-5.3086" y2="-5.334" width="0" layer="51"/>
<wire x1="-5.3086" y1="-5.334" x2="-3.81" y2="-5.334" width="0" layer="51"/>
<wire x1="3.81" y1="-4.826" x2="3.81" y2="-5.334" width="0" layer="51"/>
<wire x1="3.81" y1="-5.334" x2="5.3086" y2="-5.334" width="0" layer="51"/>
<wire x1="5.3086" y1="-5.334" x2="5.3086" y2="-4.826" width="0" layer="51"/>
<wire x1="5.3086" y1="-4.826" x2="3.81" y2="-4.826" width="0" layer="51"/>
<wire x1="3.81" y1="-3.556" x2="3.81" y2="-4.064" width="0" layer="51"/>
<wire x1="3.81" y1="-4.064" x2="5.3086" y2="-4.064" width="0" layer="51"/>
<wire x1="5.3086" y1="-4.064" x2="5.3086" y2="-3.556" width="0" layer="51"/>
<wire x1="5.3086" y1="-3.556" x2="3.81" y2="-3.556" width="0" layer="51"/>
<wire x1="3.81" y1="-2.286" x2="3.81" y2="-2.794" width="0" layer="51"/>
<wire x1="3.81" y1="-2.794" x2="5.3086" y2="-2.794" width="0" layer="51"/>
<wire x1="5.3086" y1="-2.794" x2="5.3086" y2="-2.286" width="0" layer="51"/>
<wire x1="5.3086" y1="-2.286" x2="3.81" y2="-2.286" width="0" layer="51"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0" layer="51"/>
<wire x1="3.81" y1="-1.524" x2="5.3086" y2="-1.524" width="0" layer="51"/>
<wire x1="5.3086" y1="-1.524" x2="5.3086" y2="-1.016" width="0" layer="51"/>
<wire x1="5.3086" y1="-1.016" x2="3.81" y2="-1.016" width="0" layer="51"/>
<wire x1="3.81" y1="0.254" x2="3.81" y2="-0.254" width="0" layer="51"/>
<wire x1="3.81" y1="-0.254" x2="5.3086" y2="-0.254" width="0" layer="51"/>
<wire x1="5.3086" y1="-0.254" x2="5.3086" y2="0.254" width="0" layer="51"/>
<wire x1="5.3086" y1="0.254" x2="3.81" y2="0.254" width="0" layer="51"/>
<wire x1="3.81" y1="1.524" x2="3.81" y2="1.016" width="0" layer="51"/>
<wire x1="3.81" y1="1.016" x2="5.3086" y2="1.016" width="0" layer="51"/>
<wire x1="5.3086" y1="1.016" x2="5.3086" y2="1.524" width="0" layer="51"/>
<wire x1="5.3086" y1="1.524" x2="3.81" y2="1.524" width="0" layer="51"/>
<wire x1="3.81" y1="2.794" x2="3.81" y2="2.286" width="0" layer="51"/>
<wire x1="3.81" y1="2.286" x2="5.3086" y2="2.286" width="0" layer="51"/>
<wire x1="5.3086" y1="2.286" x2="5.3086" y2="2.794" width="0" layer="51"/>
<wire x1="5.3086" y1="2.794" x2="3.81" y2="2.794" width="0" layer="51"/>
<wire x1="3.81" y1="4.064" x2="3.81" y2="3.556" width="0" layer="51"/>
<wire x1="3.81" y1="3.556" x2="5.3086" y2="3.556" width="0" layer="51"/>
<wire x1="5.3086" y1="3.556" x2="5.3086" y2="4.064" width="0" layer="51"/>
<wire x1="5.3086" y1="4.064" x2="3.81" y2="4.064" width="0" layer="51"/>
<wire x1="3.81" y1="5.334" x2="3.81" y2="4.826" width="0" layer="51"/>
<wire x1="3.81" y1="4.826" x2="5.3086" y2="4.826" width="0" layer="51"/>
<wire x1="5.3086" y1="4.826" x2="5.3086" y2="5.334" width="0" layer="51"/>
<wire x1="5.3086" y1="5.334" x2="3.81" y2="5.334" width="0" layer="51"/>
<wire x1="-3.81" y1="-5.8674" x2="3.81" y2="-5.8674" width="0" layer="51"/>
<wire x1="3.81" y1="-5.8674" x2="3.81" y2="5.8674" width="0" layer="51"/>
<wire x1="3.81" y1="5.8674" x2="0.3048" y2="5.8674" width="0" layer="51"/>
<wire x1="0.3048" y1="5.8674" x2="-0.3048" y2="5.8674" width="0" layer="51"/>
<wire x1="-0.3048" y1="5.8674" x2="-3.81" y2="5.8674" width="0" layer="51"/>
<wire x1="-3.81" y1="5.8674" x2="-3.81" y2="-5.8674" width="0" layer="51"/>
<wire x1="0.3048" y1="5.8674" x2="-0.3048" y2="5.8674" width="0" layer="51" curve="-180"/>
<wire x1="3.81" y1="5.6896" x2="3.81" y2="5.8674" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.6896" x2="-3.81" y2="-5.8674" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-5.8674" x2="3.81" y2="-5.8674" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-5.8674" x2="3.81" y2="-5.6896" width="0.1524" layer="21"/>
<wire x1="3.81" y1="5.8674" x2="0.3048" y2="5.8674" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.8674" x2="-0.3048" y2="5.8674" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="5.8674" x2="-3.81" y2="5.8674" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="5.8674" x2="-3.81" y2="5.6896" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.8674" x2="-0.3048" y2="5.8674" width="0.1524" layer="21" curve="-180"/>
<text x="-3.456940625" y="7.625609375" size="2.08433125" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.45523125" y="-8.89215" size="2.0833" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="1" x="-4.6736" y="5.08" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="2" x="-4.6736" y="3.81" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="3" x="-4.6736" y="2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="4" x="-4.6736" y="1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="5" x="-4.6736" y="0" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="6" x="-4.6736" y="-1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="7" x="-4.6736" y="-2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="8" x="-4.6736" y="-3.81" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="9" x="-4.6736" y="-5.08" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="10" x="4.6736" y="-5.08" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="11" x="4.6736" y="-3.81" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="12" x="4.6736" y="-2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="13" x="4.6736" y="-1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="14" x="4.6736" y="0" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="15" x="4.6736" y="1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="16" x="4.6736" y="2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="17" x="4.6736" y="3.81" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="18" x="4.6736" y="5.08" dx="1.9812" dy="0.5588" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="ULN2803ADW">
<wire x1="-12.7" y1="12.7" x2="-12.7" y2="-20.32" width="0.127" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="12.7" y2="-20.32" width="0.127" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="12.7" y2="12.7" width="0.127" layer="94"/>
<wire x1="12.7" y1="12.7" x2="-12.7" y2="12.7" width="0.127" layer="94"/>
<text x="-5.18811875" y="15.1066" size="2.034559375" layer="95" ratio="5" rot="SR0">&gt;NAME</text>
<text x="-3.94293125" y="-25.2602" size="2.035059375" layer="96" ratio="5" rot="SR0">&gt;VALUE</text>
<pin name="1B" x="-17.78" y="7.62" length="middle" direction="in"/>
<pin name="2B" x="-17.78" y="5.08" length="middle" direction="in"/>
<pin name="3B" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="4B" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="5B" x="-17.78" y="-2.54" length="middle" direction="in"/>
<pin name="6B" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="7B" x="-17.78" y="-7.62" length="middle" direction="in"/>
<pin name="8B" x="-17.78" y="-10.16" length="middle" direction="in"/>
<pin name="GND" x="-17.78" y="-15.24" length="middle" direction="pas"/>
<pin name="1C" x="17.78" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="2C" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="3C" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="4C" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
<pin name="5C" x="17.78" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="6C" x="17.78" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="7C" x="17.78" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="8C" x="17.78" y="-10.16" length="middle" direction="out" rot="R180"/>
<pin name="COM" x="17.78" y="-15.24" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ULN2803ADW" prefix="U">
<description>Darlington transistor array</description>
<gates>
<gate name="A" symbol="ULN2803ADW" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P1030X265-18N">
<connects>
<connect gate="A" pin="1B" pad="1"/>
<connect gate="A" pin="1C" pad="18"/>
<connect gate="A" pin="2B" pad="2"/>
<connect gate="A" pin="2C" pad="17"/>
<connect gate="A" pin="3B" pad="3"/>
<connect gate="A" pin="3C" pad="16"/>
<connect gate="A" pin="4B" pad="4"/>
<connect gate="A" pin="4C" pad="15"/>
<connect gate="A" pin="5B" pad="5"/>
<connect gate="A" pin="5C" pad="14"/>
<connect gate="A" pin="6B" pad="6"/>
<connect gate="A" pin="6C" pad="13"/>
<connect gate="A" pin="7B" pad="7"/>
<connect gate="A" pin="7C" pad="12"/>
<connect gate="A" pin="8B" pad="8"/>
<connect gate="A" pin="8C" pad="11"/>
<connect gate="A" pin="COM" pad="10"/>
<connect gate="A" pin="GND" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Bipolar (BJT) Transistor Array 8 NPN Darlington 50V 500mA Surface Mount 18-SOIC "/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=38030"/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MP" value="ULN2803ADW"/>
<attribute name="PACKAGE" value="SOIC-18 Texas Instruments"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02" urn="urn:adsk.eagle:footprint:22309/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90" urn="urn:adsk.eagle:footprint:22310/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
<package name="1X16" urn="urn:adsk.eagle:footprint:22297/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="15.24" y1="0.635" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-1.27" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="1.27" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-0.635" x2="-18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-1.27" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-1.27" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-1.27" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-1.27" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-20.3962" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-20.32" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="-19.304" y1="-0.254" x2="-18.796" y2="0.254" layer="51"/>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
</package>
<package name="1X16/90" urn="urn:adsk.eagle:footprint:22298/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-20.32" y1="-1.905" x2="-17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="6.985" x2="-19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="6.985" x2="-16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="6.985" x2="13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="6.985" x2="16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.985" x2="19.05" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-20.955" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="22.225" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-19.431" y1="0.635" x2="-18.669" y2="1.143" layer="21"/>
<rectangle x1="-16.891" y1="0.635" x2="-16.129" y2="1.143" layer="21"/>
<rectangle x1="-14.351" y1="0.635" x2="-13.589" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="13.589" y1="0.635" x2="14.351" y2="1.143" layer="21"/>
<rectangle x1="16.129" y1="0.635" x2="16.891" y2="1.143" layer="21"/>
<rectangle x1="18.669" y1="0.635" x2="19.431" y2="1.143" layer="21"/>
<rectangle x1="-19.431" y1="-2.921" x2="-18.669" y2="-1.905" layer="21"/>
<rectangle x1="-16.891" y1="-2.921" x2="-16.129" y2="-1.905" layer="21"/>
<rectangle x1="-14.351" y1="-2.921" x2="-13.589" y2="-1.905" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="-2.921" x2="14.351" y2="-1.905" layer="21"/>
<rectangle x1="16.129" y1="-2.921" x2="16.891" y2="-1.905" layer="21"/>
<rectangle x1="18.669" y1="-2.921" x2="19.431" y2="-1.905" layer="21"/>
</package>
<package name="1X08" urn="urn:adsk.eagle:footprint:22262/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.2362" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
<package name="1X08/90" urn="urn:adsk.eagle:footprint:22261/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-10.795" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="12.065" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X02" urn="urn:adsk.eagle:package:22435/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02"/>
</packageinstances>
</package3d>
<package3d name="1X02/90" urn="urn:adsk.eagle:package:22437/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02/90"/>
</packageinstances>
</package3d>
<package3d name="1X16" urn="urn:adsk.eagle:package:22432/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X16"/>
</packageinstances>
</package3d>
<package3d name="1X16/90" urn="urn:adsk.eagle:package:22430/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X16/90"/>
</packageinstances>
</package3d>
<package3d name="1X08" urn="urn:adsk.eagle:package:22409/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X08"/>
</packageinstances>
</package3d>
<package3d name="1X08/90" urn="urn:adsk.eagle:package:22413/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X08/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD2" urn="urn:adsk.eagle:symbol:22308/1" library_version="4">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD16" urn="urn:adsk.eagle:symbol:22296/1" library_version="4">
<wire x1="-6.35" y1="-22.86" x2="1.27" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="1.27" y2="20.32" width="0.4064" layer="94"/>
<wire x1="1.27" y1="20.32" x2="-6.35" y2="20.32" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="20.32" x2="-6.35" y2="-22.86" width="0.4064" layer="94"/>
<text x="-6.35" y="20.955" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD8" urn="urn:adsk.eagle:symbol:22260/1" library_version="4">
<wire x1="-6.35" y1="-10.16" x2="1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="12.7" x2="-6.35" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="12.7" x2="-6.35" y2="-10.16" width="0.4064" layer="94"/>
<text x="-6.35" y="13.335" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" urn="urn:adsk.eagle:component:22516/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22435/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="98" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22437/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="24" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X16" urn="urn:adsk.eagle:component:22522/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD16" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X16">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22432/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X16/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22430/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X8" urn="urn:adsk.eagle:component:22503/5" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X08">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22409/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="67" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X08/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22413/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="7" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="REF3440IDBVR">
<packages>
<package name="SOT95P280X145-6N">
<wire x1="-0.88" y1="-1.53" x2="-0.88" y2="1.53" width="0.127" layer="51"/>
<wire x1="-0.88" y1="1.53" x2="0.88" y2="1.53" width="0.127" layer="51"/>
<wire x1="0.88" y1="1.53" x2="0.88" y2="-1.53" width="0.127" layer="51"/>
<wire x1="0.88" y1="-1.53" x2="-0.88" y2="-1.53" width="0.127" layer="51"/>
<wire x1="-0.88" y1="1.56" x2="0.88" y2="1.56" width="0.127" layer="21"/>
<wire x1="-0.88" y1="-1.56" x2="0.88" y2="-1.56" width="0.127" layer="21"/>
<wire x1="-2.11" y1="1.49" x2="-1.13" y2="1.49" width="0.05" layer="39"/>
<wire x1="-1.13" y1="1.49" x2="-1.13" y2="1.78" width="0.05" layer="39"/>
<wire x1="-1.13" y1="1.78" x2="1.13" y2="1.78" width="0.05" layer="39"/>
<wire x1="1.13" y1="1.78" x2="1.13" y2="1.49" width="0.05" layer="39"/>
<wire x1="1.13" y1="1.49" x2="2.11" y2="1.49" width="0.05" layer="39"/>
<wire x1="2.11" y1="-1.49" x2="1.13" y2="-1.49" width="0.05" layer="39"/>
<wire x1="1.13" y1="-1.49" x2="1.13" y2="-1.78" width="0.05" layer="39"/>
<wire x1="1.13" y1="-1.78" x2="-1.13" y2="-1.78" width="0.05" layer="39"/>
<wire x1="-1.13" y1="-1.78" x2="-1.13" y2="-1.49" width="0.05" layer="39"/>
<wire x1="-1.13" y1="-1.49" x2="-2.11" y2="-1.49" width="0.05" layer="39"/>
<wire x1="-2.11" y1="-1.49" x2="-2.11" y2="1.49" width="0.05" layer="39"/>
<wire x1="2.11" y1="-1.49" x2="2.11" y2="1.49" width="0.05" layer="39"/>
<text x="-2" y="1.9" size="0.8128" layer="25">&gt;NAME</text>
<text x="-2.2" y="-2.7" size="0.8128" layer="27">&gt;VALUE</text>
<circle x="-2.4" y="1" radius="0.1" width="0.2" layer="21"/>
<circle x="-2.4" y="1" radius="0.1" width="0.2" layer="51"/>
<smd name="1" x="-1.255" y="0.95" dx="1.21" dy="0.58" layer="1" roundness="50"/>
<smd name="2" x="-1.255" y="0" dx="1.21" dy="0.58" layer="1" roundness="50"/>
<smd name="3" x="-1.255" y="-0.95" dx="1.21" dy="0.58" layer="1" roundness="50"/>
<smd name="4" x="1.255" y="-0.95" dx="1.21" dy="0.58" layer="1" roundness="50" rot="R180"/>
<smd name="5" x="1.255" y="0" dx="1.21" dy="0.58" layer="1" roundness="50" rot="R180"/>
<smd name="6" x="1.255" y="0.95" dx="1.21" dy="0.58" layer="1" roundness="50" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="REF3440IDBVR">
<wire x1="12.7" y1="-7.62" x2="12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="7.62" x2="-12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-7.62" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<text x="-12.7" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND_F" x="17.78" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_S" x="17.78" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="ENABLE" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="IN" x="-17.78" y="5.08" length="middle" direction="in"/>
<pin name="OUT_S" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="OUT_F" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="REF3440IDBVR" prefix="U">
<description>4.1V Low-Drift Low-Power Small-Footprint Series Voltage Reference 6-SOT-23 -40 to 125</description>
<gates>
<gate name="G$1" symbol="REF3440IDBVR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT95P280X145-6N">
<connects>
<connect gate="G$1" pin="ENABLE" pad="3"/>
<connect gate="G$1" pin="GND_F" pad="1"/>
<connect gate="G$1" pin="GND_S" pad="2"/>
<connect gate="G$1" pin="IN" pad="4"/>
<connect gate="G$1" pin="OUT_F" pad="6"/>
<connect gate="G$1" pin="OUT_S" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Series Voltage Reference IC ±0.05% SOT-23-6 "/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MP" value="REF3440IDBVR"/>
<attribute name="PACKAGE" value="SOT-23 Texas Instruments"/>
<attribute name="PRICE" value="None"/>
</technology>
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
<class number="0" name="default" width="0.127" drill="0.127">
<clearance class="0" value="0.127"/>
</class>
<class number="1" name="icurrent" width="0.1778" drill="0">
</class>
<class number="2" name="mcurrent" width="0.3048" drill="0">
</class>
</classes>
<modules>
<module name="RESET_M" prefix="" dx="30.48" dy="20.32">
<ports>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
</modules>
<parts>
<part name="IC1" library="PIC32MK1024MCF100-I_PT" deviceset="PIC32MK1024MCF100-I_PT" device=""/>
<part name="R1" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="1k"/>
<part name="R2" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="10k"/>
<part name="C1" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="IC2" library="SamacSys_Parts" deviceset="ADM3095EBRZ" device=""/>
<part name="OS1" library="IQD-Frequency-Products" library_urn="urn:adsk.eagle:library:90" deviceset="OSC-OE" device="-CFPS-32" package3d_urn="urn:adsk.eagle:package:3365/1"/>
<part name="S1" library="B3W-9000-Y1N" deviceset="B3W-9000-Y1N" device=""/>
<part name="VSS6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C2" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C3" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C4" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C6" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS20" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="L1" library="inductor-neosid" library_urn="urn:adsk.eagle:library:241" deviceset="SM-1206" device="" package3d_urn="urn:adsk.eagle:package:14693/2" value="1000"/>
<part name="VDD12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C7" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="22uf"/>
<part name="VSS21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="IC4" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX203ECWP" device="" package3d_urn="urn:adsk.eagle:package:17520/2"/>
<part name="U$1" library="MAX6818" deviceset="MAX6818" device=""/>
<part name="F1" library="polyfuse-smd_10" deviceset="?" device="1206L" technology="050"/>
<part name="F2" library="polyfuse-smd_10" deviceset="?" device="1206L" technology="050"/>
<part name="R5" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="0"/>
<part name="R6" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="0"/>
<part name="VSS24" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="C10" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C11" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="22uf"/>
<part name="VSS25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS26" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="SV2" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA06-1" device="" package3d_urn="urn:adsk.eagle:package:8340/1" value="ICSP2"/>
<part name="OS2" library="IQD-Frequency-Products" library_urn="urn:adsk.eagle:library:90" deviceset="OSC-OE" device="-IQXO-793" package3d_urn="urn:adsk.eagle:package:3371/1"/>
<part name="C12" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VDD17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS29" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS33" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VSS34" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS35" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="TP1" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="TP" device="B1,27" package3d_urn="urn:adsk.eagle:package:27944/2"/>
<part name="C5" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C8" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C9" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C13" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="IC6" library="TXB0101DCKR" deviceset="TXB0101DCKR" device=""/>
<part name="VSS5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R3" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="1k"/>
<part name="VSS15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="IC7" library="TXB0101DCKR" deviceset="TXB0101DCKR" device=""/>
<part name="IC8" library="TXB0101DCKR" deviceset="TXB0101DCKR" device=""/>
<part name="VSS16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="X1" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2101" device="" package3d_urn="urn:adsk.eagle:package:8078641/1"/>
<part name="VSS18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="U1" library="PMIC-MC33932VW_SOP44_" deviceset="PMIC-MC33932VW(SOP44)" device=""/>
<part name="U2" library="PMIC-MC33932VW_SOP44_" deviceset="PMIC-MC33932VW(SOP44)" device=""/>
<part name="VSS19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS27" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="IC3" library="TXB0101DCKR" deviceset="TXB0101DCKR" device=""/>
<part name="IC5" library="TXB0101DCKR" deviceset="TXB0101DCKR" device=""/>
<part name="IC9" library="TXB0101DCKR" deviceset="TXB0101DCKR" device=""/>
<part name="VSS30" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS31" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS32" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C14" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C15" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS36" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C16" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C17" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS37" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="J1" library="1-1586043-4" deviceset="1-1586043-4" device=""/>
<part name="VSS38" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="P+12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+20" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="VSS39" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C18" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C19" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS40" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS41" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="DIN" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2101" device="" package3d_urn="urn:adsk.eagle:package:8078641/1"/>
<part name="VSS42" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C20" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C21" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="R4" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="100"/>
<part name="R7" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="100"/>
<part name="VSS43" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS44" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R8" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="100"/>
<part name="R9" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="100"/>
<part name="VSS45" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS46" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS47" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS48" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R10" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="1k"/>
<part name="VSS49" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS50" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS51" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS52" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS53" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C22" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C23" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="P+23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+24" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="C24" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="C25" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="P+25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="P+26" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="R11" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="1k"/>
<part name="R12" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="1k"/>
<part name="R13" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="1k"/>
<part name="LED1" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LED" device="CHIPLED_1206" package3d_urn="urn:adsk.eagle:package:15823/2" value="led1"/>
<part name="LED2" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LED" device="CHIPLED_1206" package3d_urn="urn:adsk.eagle:package:15823/2" value="led2"/>
<part name="LED3" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LED" device="CHIPLED_1206" package3d_urn="urn:adsk.eagle:package:15823/2" value="led3"/>
<part name="VSS54" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="TP5" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="TP" device="B1,27" package3d_urn="urn:adsk.eagle:package:27944/2"/>
<part name="TP6" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="TP" device="B1,27" package3d_urn="urn:adsk.eagle:package:27944/2"/>
<part name="P+11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="C26" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="22uf"/>
<part name="VSS55" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="+3V2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C27" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="22uf"/>
<part name="VDD19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U3" library="maxim-10" deviceset="ULN2803ADW" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="DO" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2101" device="" package3d_urn="urn:adsk.eagle:package:8078641/1"/>
<part name="RS485" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2051" device="" package3d_urn="urn:adsk.eagle:package:8078636/1"/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+24V" device=""/>
<part name="VSS56" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="TP7" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="TP" device="B1,27" package3d_urn="urn:adsk.eagle:package:27944/2"/>
<part name="P+28" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="R14" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="M0805" package3d_urn="urn:adsk.eagle:package:23556/2" value="0"/>
<part name="SPI" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2101" device="" package3d_urn="urn:adsk.eagle:package:8078641/1"/>
<part name="P+29" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VSS57" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="X2" library="con-molex" library_urn="urn:adsk.eagle:library:165" deviceset="22-23-2081" device="" package3d_urn="urn:adsk.eagle:package:8078639/1"/>
<part name="P+30" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VSS58" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS59" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="P+31" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2" value="vref-"/>
<part name="JP2" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2" value="vref+"/>
<part name="VSS60" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="JP3" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X16" device="" package3d_urn="urn:adsk.eagle:package:22432/2" value="io pins"/>
<part name="U4" library="REF3440IDBVR" deviceset="REF3440IDBVR" device=""/>
<part name="VSS61" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="P+32" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="C28" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="22uf"/>
<part name="C29" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS62" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS63" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="C30" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="22uf"/>
<part name="C31" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="C-US" device="C0805" package3d_urn="urn:adsk.eagle:package:23617/2" value="0.1"/>
<part name="VSS64" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS65" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="R15" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="R0805" package3d_urn="urn:adsk.eagle:package:23553/2" value="120"/>
<part name="JP4" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X8" device="" package3d_urn="urn:adsk.eagle:package:22409/2" value="IO_volts"/>
<part name="VSS66" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VSS67" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD20" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="P+33" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VSS68" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VSS" device=""/>
<part name="VDD25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="P+9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VDD13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="P+22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VDD11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="P+5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="P+7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VDD8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="VDD10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="P+6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="VDD9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-12.7" y="-109.22" size="1.778" layer="91">change to VDD from VSS</text>
<text x="-12.7" y="-86.36" size="1.778" layer="91">change to VSS from orig VCC</text>
<text x="-132.08" y="-40.64" size="1.778" layer="91">A</text>
<text x="-132.08" y="-50.8" size="1.778" layer="91">B</text>
<text x="-132.08" y="-35.56" size="1.778" layer="91">Index</text>
<text x="-137.16" y="-33.02" size="1.778" layer="91">Index</text>
<text x="-137.16" y="-30.48" size="1.778" layer="91">A</text>
<text x="-137.16" y="-27.94" size="1.778" layer="91">B</text>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="12.7" y="45.72" smashed="yes">
<attribute name="NAME" x="156.21" y="104.14" size="1.778" layer="91" align="center-left"/>
<attribute name="VALUE" x="156.21" y="101.6" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R1" gate="G$1" x="-30.48" y="15.24" smashed="yes">
<attribute name="NAME" x="-34.29" y="16.7386" size="1.778" layer="95"/>
<attribute name="VALUE" x="-34.29" y="11.938" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="-40.64" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="-36.83" y="13.7414" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-36.83" y="18.542" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C1" gate="G$1" x="-35.56" y="7.62" smashed="yes">
<attribute name="NAME" x="-34.544" y="8.255" size="1.778" layer="95"/>
<attribute name="VALUE" x="-34.544" y="3.429" size="1.778" layer="96"/>
</instance>
<instance part="VDD1" gate="G$1" x="-45.72" y="17.78" smashed="yes">
<attribute name="VALUE" x="-48.26" y="15.24" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS1" gate="G$1" x="-35.56" y="0" smashed="yes">
<attribute name="VALUE" x="-38.1" y="-2.54" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS2" gate="G$1" x="172.72" y="45.72" smashed="yes" rot="R90">
<attribute name="VALUE" x="177.8" y="43.18" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS3" gate="G$1" x="104.14" y="-109.22" smashed="yes">
<attribute name="VALUE" x="101.6" y="-114.3" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS4" gate="G$1" x="-7.62" y="10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="-12.7" y="12.7" size="1.778" layer="96"/>
</instance>
<instance part="VDD2" gate="G$1" x="-7.62" y="43.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="-5.08" y="40.64" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VDD3" gate="G$1" x="91.44" y="116.84" smashed="yes">
<attribute name="VALUE" x="88.9" y="114.3" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD4" gate="G$1" x="83.82" y="-109.22" smashed="yes" rot="R180">
<attribute name="VALUE" x="86.36" y="-106.68" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="IC2" gate="G$1" x="203.2" y="-53.34" smashed="yes">
<attribute name="NAME" x="229.87" y="-45.72" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="212.09" y="-48.26" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="OS1" gate="A" x="238.76" y="17.78" smashed="yes" rot="R180">
<attribute name="NAME" x="246.38" y="9.525" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="246.38" y="27.94" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="S1" gate="G$1" x="-73.66" y="7.62" smashed="yes">
<attribute name="NAME" x="-57.15" y="15.24" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-57.15" y="12.7" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="VSS6" gate="G$1" x="-83.82" y="2.54" smashed="yes">
<attribute name="VALUE" x="-86.36" y="-2.54" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS7" gate="G$1" x="251.46" y="25.4" smashed="yes" rot="R180">
<attribute name="VALUE" x="254" y="30.48" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD5" gate="G$1" x="251.46" y="10.16" smashed="yes" rot="R180">
<attribute name="VALUE" x="254" y="12.7" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD6" gate="G$1" x="226.06" y="10.16" smashed="yes" rot="R180">
<attribute name="VALUE" x="228.6" y="12.7" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS8" gate="G$1" x="203.2" y="-50.8" smashed="yes" rot="R180">
<attribute name="VALUE" x="205.74" y="-45.72" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS9" gate="G$1" x="233.68" y="-50.8" smashed="yes" rot="R180">
<attribute name="VALUE" x="236.22" y="-45.72" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS10" gate="G$1" x="233.68" y="-73.66" smashed="yes">
<attribute name="VALUE" x="231.14" y="-78.74" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS11" gate="G$1" x="203.2" y="-73.66" smashed="yes">
<attribute name="VALUE" x="200.66" y="-78.74" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD7" gate="G$1" x="193.04" y="-53.34" smashed="yes">
<attribute name="VALUE" x="190.5" y="-55.88" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C2" gate="G$1" x="259.08" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="258.064" y="14.605" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="258.064" y="19.431" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C3" gate="G$1" x="185.42" y="-60.96" smashed="yes">
<attribute name="NAME" x="186.436" y="-60.325" size="1.778" layer="95"/>
<attribute name="VALUE" x="186.436" y="-65.151" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="195.58" y="-53.34" smashed="yes" rot="R180">
<attribute name="NAME" x="194.564" y="-53.975" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="194.564" y="-49.149" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS12" gate="G$1" x="185.42" y="-68.58" smashed="yes">
<attribute name="VALUE" x="182.88" y="-73.66" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS13" gate="G$1" x="195.58" y="-45.72" smashed="yes" rot="R180">
<attribute name="VALUE" x="198.12" y="-40.64" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C6" gate="G$1" x="66.04" y="-111.76" smashed="yes">
<attribute name="NAME" x="67.056" y="-111.125" size="1.778" layer="95"/>
<attribute name="VALUE" x="67.056" y="-115.951" size="1.778" layer="96"/>
</instance>
<instance part="VSS20" gate="G$1" x="66.04" y="-119.38" smashed="yes">
<attribute name="VALUE" x="63.5" y="-124.46" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="L1" gate="G$1" x="60.96" y="-109.22" smashed="yes">
<attribute name="NAME" x="57.15" y="-107.442" size="1.778" layer="95"/>
<attribute name="VALUE" x="57.15" y="-112.776" size="1.778" layer="96"/>
</instance>
<instance part="VDD12" gate="G$1" x="45.72" y="-111.76" smashed="yes" rot="R180">
<attribute name="VALUE" x="48.26" y="-109.22" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C7" gate="G$1" x="50.8" y="-111.76" smashed="yes">
<attribute name="NAME" x="51.816" y="-111.125" size="1.778" layer="95"/>
<attribute name="VALUE" x="51.816" y="-115.951" size="1.778" layer="96"/>
</instance>
<instance part="VSS21" gate="G$1" x="50.8" y="-119.38" smashed="yes">
<attribute name="VALUE" x="48.26" y="-124.46" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD15" gate="G$1" x="180.34" y="-5.08" smashed="yes" rot="R270">
<attribute name="VALUE" x="177.8" y="-2.54" size="1.778" layer="96"/>
</instance>
<instance part="IC4" gate="G$1" x="218.44" y="-15.24" smashed="yes">
<attribute name="NAME" x="208.28" y="3.175" size="1.778" layer="95"/>
<attribute name="VALUE" x="208.28" y="-38.1" size="1.778" layer="96"/>
</instance>
<instance part="U$1" gate="G$1" x="-48.26" y="-144.78" smashed="yes">
<attribute name="VALUE" x="-55.89086875" y="-132.0619" size="2.54361875" layer="96"/>
<attribute name="NAME" x="-66.089" y="-109.122" size="1.7829" layer="95"/>
</instance>
<instance part="F1" gate="G$1" x="-91.44" y="134.62" smashed="yes">
<attribute name="NAME" x="-95.25" y="137.16" size="1.778" layer="95"/>
<attribute name="VALUE" x="-95.25" y="130.81" size="1.778" layer="96"/>
</instance>
<instance part="F2" gate="G$1" x="-111.76" y="109.22" smashed="yes">
<attribute name="NAME" x="-115.57" y="111.76" size="1.778" layer="95"/>
<attribute name="VALUE" x="-115.57" y="105.41" size="1.778" layer="96"/>
</instance>
<instance part="R5" gate="G$1" x="-101.6" y="109.22" smashed="yes">
<attribute name="NAME" x="-105.41" y="110.7186" size="1.778" layer="95"/>
<attribute name="VALUE" x="-105.41" y="105.918" size="1.778" layer="96"/>
</instance>
<instance part="R6" gate="G$1" x="-81.28" y="134.62" smashed="yes">
<attribute name="NAME" x="-85.09" y="136.1186" size="1.778" layer="95"/>
<attribute name="VALUE" x="-85.09" y="131.318" size="1.778" layer="96"/>
</instance>
<instance part="VSS24" gate="G$1" x="-53.34" y="88.9" smashed="yes">
<attribute name="VALUE" x="-55.88" y="83.82" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD16" gate="G$1" x="-93.98" y="106.68" smashed="yes" rot="R180">
<attribute name="VALUE" x="-93.98" y="101.6" size="1.778" layer="96"/>
</instance>
<instance part="P+2" gate="VCC" x="-76.2" y="132.08" smashed="yes" rot="R180">
<attribute name="VALUE" x="-73.66" y="132.08" size="1.778" layer="96"/>
</instance>
<instance part="+3V1" gate="G$1" x="-121.92" y="109.22" smashed="yes" rot="R90">
<attribute name="VALUE" x="-116.84" y="106.68" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+3" gate="1" x="-101.6" y="134.62" smashed="yes" rot="R90">
<attribute name="VALUE" x="-96.52" y="132.08" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="-71.12" y="88.9" smashed="yes">
<attribute name="VALUE" x="-73.025" y="85.725" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="GND" x="-48.26" y="-185.42" smashed="yes">
<attribute name="VALUE" x="-50.165" y="-188.595" size="1.778" layer="96"/>
</instance>
<instance part="C10" gate="G$1" x="-86.36" y="106.68" smashed="yes">
<attribute name="NAME" x="-85.344" y="107.315" size="1.778" layer="95"/>
<attribute name="VALUE" x="-85.344" y="102.489" size="1.778" layer="96"/>
</instance>
<instance part="C11" gate="G$1" x="-76.2" y="106.68" smashed="yes">
<attribute name="NAME" x="-75.184" y="107.315" size="1.778" layer="95"/>
<attribute name="VALUE" x="-75.184" y="102.489" size="1.778" layer="96"/>
</instance>
<instance part="VSS25" gate="G$1" x="-86.36" y="99.06" smashed="yes">
<attribute name="VALUE" x="-88.9" y="93.98" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS26" gate="G$1" x="-76.2" y="99.06" smashed="yes">
<attribute name="VALUE" x="-78.74" y="93.98" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SV2" gate="1" x="-30.48" y="-96.52" smashed="yes">
<attribute name="VALUE" x="-31.75" y="-109.22" size="1.778" layer="96"/>
<attribute name="NAME" x="-31.75" y="-88.138" size="1.778" layer="95"/>
</instance>
<instance part="OS2" gate="A" x="238.76" y="45.72" smashed="yes" rot="R180">
<attribute name="NAME" x="246.38" y="37.465" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="246.38" y="55.88" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C12" gate="G$1" x="259.08" y="43.18" smashed="yes" rot="R180">
<attribute name="NAME" x="258.064" y="42.545" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="258.064" y="47.371" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VDD17" gate="G$1" x="251.46" y="38.1" smashed="yes" rot="R180">
<attribute name="VALUE" x="254" y="40.64" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD18" gate="G$1" x="226.06" y="38.1" smashed="yes" rot="R180">
<attribute name="VALUE" x="228.6" y="40.64" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS29" gate="G$1" x="251.46" y="53.34" smashed="yes" rot="R180">
<attribute name="VALUE" x="254" y="58.42" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD21" gate="G$1" x="-7.62" y="7.62" smashed="yes" rot="R90">
<attribute name="VALUE" x="-5.08" y="5.08" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS33" gate="G$1" x="172.72" y="20.32" smashed="yes" rot="R90">
<attribute name="VALUE" x="177.8" y="17.78" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VDD22" gate="G$1" x="106.68" y="-109.22" smashed="yes" rot="R180">
<attribute name="VALUE" x="109.22" y="-106.68" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS34" gate="G$1" x="81.28" y="-109.22" smashed="yes">
<attribute name="VALUE" x="78.74" y="-114.3" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS35" gate="G$1" x="68.58" y="-109.22" smashed="yes">
<attribute name="VALUE" x="66.04" y="-114.3" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD23" gate="G$1" x="172.72" y="12.7" smashed="yes" rot="R270">
<attribute name="VALUE" x="170.18" y="15.24" size="1.778" layer="96"/>
</instance>
<instance part="TP1" gate="G$1" x="88.9" y="111.76" smashed="yes" rot="R90">
<attribute name="NAME" x="87.63" y="110.49" size="1.778" layer="95" rot="R90"/>
<attribute name="TP_SIGNAL_NAME" x="90.17" y="113.03" size="1.778" layer="97" rot="R90"/>
</instance>
<instance part="C5" gate="G$1" x="-5.08" y="5.08" smashed="yes">
<attribute name="NAME" x="-4.064" y="5.715" size="1.778" layer="95"/>
<attribute name="VALUE" x="-4.064" y="0.889" size="1.778" layer="96"/>
</instance>
<instance part="C8" gate="G$1" x="88.9" y="119.38" smashed="yes" rot="R270">
<attribute name="NAME" x="89.535" y="118.364" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="84.709" y="118.364" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS14" gate="G$1" x="-5.08" y="-2.54" smashed="yes">
<attribute name="VALUE" x="-7.62" y="-7.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C9" gate="G$1" x="-5.08" y="40.64" smashed="yes">
<attribute name="NAME" x="-4.064" y="41.275" size="1.778" layer="95"/>
<attribute name="VALUE" x="-4.064" y="36.449" size="1.778" layer="96"/>
</instance>
<instance part="C13" gate="G$1" x="96.52" y="-99.06" smashed="yes" rot="R270">
<attribute name="NAME" x="97.155" y="-100.076" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="92.329" y="-100.076" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="IC6" gate="G$1" x="-88.9" y="-30.48" smashed="yes">
<attribute name="NAME" x="-80.01" y="-25.4" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-82.55" y="-40.64" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="VSS5" gate="G$1" x="-99.06" y="-33.02" smashed="yes" rot="R270">
<attribute name="VALUE" x="-104.14" y="-30.48" size="1.778" layer="96"/>
</instance>
<instance part="R3" gate="G$1" x="-48.26" y="-27.94" smashed="yes" rot="R90">
<attribute name="NAME" x="-49.7586" y="-31.75" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-44.958" y="-31.75" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS15" gate="G$1" x="-48.26" y="-20.32" smashed="yes" rot="R180">
<attribute name="VALUE" x="-45.72" y="-15.24" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="IC7" gate="G$1" x="-88.9" y="-15.24" smashed="yes">
<attribute name="NAME" x="-80.01" y="-10.16" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-82.55" y="-25.4" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC8" gate="G$1" x="-88.9" y="-45.72" smashed="yes">
<attribute name="NAME" x="-80.01" y="-40.64" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-82.55" y="-55.88" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="VSS16" gate="G$1" x="-91.44" y="-17.78" smashed="yes" rot="R270">
<attribute name="VALUE" x="-96.52" y="-15.24" size="1.778" layer="96"/>
</instance>
<instance part="VSS17" gate="G$1" x="-91.44" y="-48.26" smashed="yes" rot="R270">
<attribute name="VALUE" x="-96.52" y="-45.72" size="1.778" layer="96"/>
</instance>
<instance part="X1" gate="-1" x="-142.24" y="-40.64" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-39.878" size="1.524" layer="95" rot="R180"/>
<attribute name="VALUE" x="-141.478" y="-42.037" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="X1" gate="-2" x="-142.24" y="-38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-37.338" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-3" x="-142.24" y="-35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-34.798" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-4" x="-142.24" y="-33.02" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-32.258" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-5" x="-142.24" y="-30.48" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-29.718" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-6" x="-142.24" y="-27.94" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-27.178" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-7" x="-142.24" y="-25.4" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-24.638" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-8" x="-142.24" y="-22.86" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-22.098" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-9" x="-142.24" y="-20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-19.558" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="-10" x="-142.24" y="-17.78" smashed="yes" rot="R180">
<attribute name="NAME" x="-144.78" y="-17.018" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="VSS18" gate="G$1" x="-132.08" y="-15.24" smashed="yes" rot="R180">
<attribute name="VALUE" x="-129.54" y="-10.16" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="U1" gate="G$1" x="228.6" y="104.14" smashed="yes">
<attribute name="NAME" x="210.7854" y="132.1344" size="1.781459375" layer="95"/>
<attribute name="VALUE" x="236.22705" y="132.1058" size="1.779640625" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="213.36" y="-119.38" smashed="yes">
<attribute name="NAME" x="195.5454" y="-91.3856" size="1.781459375" layer="95"/>
<attribute name="VALUE" x="220.98705" y="-91.4142" size="1.779640625" layer="96"/>
</instance>
<instance part="VSS19" gate="G$1" x="182.88" y="-121.92" smashed="yes">
<attribute name="VALUE" x="180.34" y="-127" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS22" gate="G$1" x="243.84" y="-121.92" smashed="yes">
<attribute name="VALUE" x="241.3" y="-127" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS23" gate="G$1" x="200.66" y="101.6" smashed="yes">
<attribute name="VALUE" x="198.12" y="96.52" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS27" gate="G$1" x="256.54" y="101.6" smashed="yes">
<attribute name="VALUE" x="254" y="96.52" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="IC3" gate="G$1" x="-134.62" y="-68.58" smashed="yes">
<attribute name="NAME" x="-110.49" y="-60.96" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-110.49" y="-63.5" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC5" gate="G$1" x="-134.62" y="-86.36" smashed="yes">
<attribute name="NAME" x="-110.49" y="-78.74" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-110.49" y="-81.28" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC9" gate="G$1" x="-134.62" y="-104.14" smashed="yes">
<attribute name="NAME" x="-110.49" y="-96.52" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-110.49" y="-99.06" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="VSS30" gate="G$1" x="-137.16" y="-71.12" smashed="yes" rot="R270">
<attribute name="VALUE" x="-142.24" y="-68.58" size="1.778" layer="96"/>
</instance>
<instance part="VSS31" gate="G$1" x="-137.16" y="-88.9" smashed="yes" rot="R270">
<attribute name="VALUE" x="-142.24" y="-86.36" size="1.778" layer="96"/>
</instance>
<instance part="VSS32" gate="G$1" x="-137.16" y="-106.68" smashed="yes" rot="R270">
<attribute name="VALUE" x="-142.24" y="-104.14" size="1.778" layer="96"/>
</instance>
<instance part="C14" gate="G$1" x="-86.36" y="-7.62" smashed="yes" rot="R90">
<attribute name="NAME" x="-86.995" y="-6.604" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-82.169" y="-6.604" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C15" gate="G$1" x="-55.88" y="-7.62" smashed="yes" rot="R270">
<attribute name="NAME" x="-55.245" y="-8.636" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-60.071" y="-8.636" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS36" gate="G$1" x="-73.66" y="-10.16" smashed="yes">
<attribute name="VALUE" x="-76.2" y="-15.24" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C16" gate="G$1" x="-132.08" y="-60.96" smashed="yes" rot="R90">
<attribute name="NAME" x="-132.715" y="-59.944" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-127.889" y="-59.944" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C17" gate="G$1" x="-109.22" y="-60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="-108.585" y="-61.976" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-113.411" y="-61.976" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS37" gate="G$1" x="-119.38" y="-63.5" smashed="yes">
<attribute name="VALUE" x="-121.92" y="-68.58" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="J1" gate="G$1" x="86.36" y="-152.4" smashed="yes">
<attribute name="NAME" x="80.78" y="-132.08" size="1.778" layer="95"/>
<attribute name="VALUE" x="81.28" y="-172.72" size="1.778" layer="96"/>
</instance>
<instance part="VSS38" gate="G$1" x="76.2" y="-132.08" smashed="yes" rot="R180">
<attribute name="VALUE" x="78.74" y="-127" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="P+12" gate="1" x="60.96" y="-137.16" smashed="yes">
<attribute name="VALUE" x="58.42" y="-142.24" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+13" gate="1" x="63.5" y="-170.18" smashed="yes" rot="R180">
<attribute name="VALUE" x="66.04" y="-165.1" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="P+14" gate="1" x="185.42" y="-134.62" smashed="yes" rot="R90">
<attribute name="VALUE" x="190.5" y="-137.16" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+15" gate="1" x="182.88" y="-104.14" smashed="yes" rot="R90">
<attribute name="VALUE" x="187.96" y="-106.68" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+16" gate="1" x="241.3" y="-104.14" smashed="yes" rot="R270">
<attribute name="VALUE" x="236.22" y="-101.6" size="1.778" layer="96"/>
</instance>
<instance part="P+17" gate="1" x="246.38" y="-134.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="241.3" y="-132.08" size="1.778" layer="96"/>
</instance>
<instance part="P+18" gate="1" x="198.12" y="119.38" smashed="yes" rot="R90">
<attribute name="VALUE" x="203.2" y="116.84" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+19" gate="1" x="198.12" y="88.9" smashed="yes" rot="R90">
<attribute name="VALUE" x="203.2" y="86.36" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+20" gate="1" x="261.62" y="86.36" smashed="yes" rot="R270">
<attribute name="VALUE" x="256.54" y="88.9" size="1.778" layer="96"/>
</instance>
<instance part="P+21" gate="1" x="261.62" y="119.38" smashed="yes" rot="R270">
<attribute name="VALUE" x="256.54" y="121.92" size="1.778" layer="96"/>
</instance>
<instance part="VSS39" gate="G$1" x="58.42" y="-167.64" smashed="yes">
<attribute name="VALUE" x="55.88" y="-172.72" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C18" gate="G$1" x="251.46" y="-106.68" smashed="yes" rot="R90">
<attribute name="NAME" x="250.825" y="-105.664" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="255.651" y="-105.664" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C19" gate="G$1" x="170.18" y="-106.68" smashed="yes" rot="R270">
<attribute name="NAME" x="170.815" y="-107.696" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="165.989" y="-107.696" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS40" gate="G$1" x="162.56" y="-109.22" smashed="yes">
<attribute name="VALUE" x="160.02" y="-114.3" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS41" gate="G$1" x="259.08" y="-109.22" smashed="yes">
<attribute name="VALUE" x="256.54" y="-114.3" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="DIN" gate="-1" x="-109.22" y="-137.16" smashed="yes">
<attribute name="NAME" x="-106.68" y="-137.922" size="1.524" layer="95"/>
<attribute name="VALUE" x="-109.982" y="-135.763" size="1.778" layer="96"/>
</instance>
<instance part="DIN" gate="-2" x="-109.22" y="-139.7" smashed="yes">
<attribute name="NAME" x="-106.68" y="-140.462" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-3" x="-109.22" y="-142.24" smashed="yes">
<attribute name="NAME" x="-106.68" y="-143.002" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-4" x="-109.22" y="-144.78" smashed="yes">
<attribute name="NAME" x="-106.68" y="-145.542" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-5" x="-109.22" y="-147.32" smashed="yes">
<attribute name="NAME" x="-106.68" y="-148.082" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-6" x="-109.22" y="-149.86" smashed="yes">
<attribute name="NAME" x="-106.68" y="-150.622" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-7" x="-109.22" y="-152.4" smashed="yes">
<attribute name="NAME" x="-106.68" y="-153.162" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-8" x="-109.22" y="-154.94" smashed="yes">
<attribute name="NAME" x="-106.68" y="-155.702" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-9" x="-109.22" y="-157.48" smashed="yes">
<attribute name="NAME" x="-106.68" y="-158.242" size="1.524" layer="95"/>
</instance>
<instance part="DIN" gate="-10" x="-109.22" y="-160.02" smashed="yes">
<attribute name="NAME" x="-106.68" y="-160.782" size="1.524" layer="95"/>
</instance>
<instance part="VSS42" gate="G$1" x="-121.92" y="-167.64" smashed="yes">
<attribute name="VALUE" x="-124.46" y="-172.72" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C20" gate="G$1" x="170.18" y="-114.3" smashed="yes" rot="R270">
<attribute name="NAME" x="170.815" y="-115.316" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="165.989" y="-115.316" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C21" gate="G$1" x="251.46" y="-114.3" smashed="yes" rot="R90">
<attribute name="NAME" x="250.825" y="-113.284" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="255.651" y="-113.284" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R4" gate="G$1" x="182.88" y="-96.52" smashed="yes">
<attribute name="NAME" x="179.07" y="-95.0214" size="1.778" layer="95"/>
<attribute name="VALUE" x="179.07" y="-99.822" size="1.778" layer="96"/>
</instance>
<instance part="R7" gate="G$1" x="246.38" y="-144.78" smashed="yes">
<attribute name="NAME" x="242.57" y="-143.2814" size="1.778" layer="95"/>
<attribute name="VALUE" x="242.57" y="-148.082" size="1.778" layer="96"/>
</instance>
<instance part="VSS43" gate="G$1" x="175.26" y="-96.52" smashed="yes" rot="R270">
<attribute name="VALUE" x="170.18" y="-93.98" size="1.778" layer="96"/>
</instance>
<instance part="VSS44" gate="G$1" x="254" y="-144.78" smashed="yes" rot="R90">
<attribute name="VALUE" x="259.08" y="-147.32" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R8" gate="G$1" x="261.62" y="78.74" smashed="yes">
<attribute name="NAME" x="257.81" y="80.2386" size="1.778" layer="95"/>
<attribute name="VALUE" x="257.81" y="75.438" size="1.778" layer="96"/>
</instance>
<instance part="R9" gate="G$1" x="193.04" y="127" smashed="yes">
<attribute name="NAME" x="189.23" y="128.4986" size="1.778" layer="95"/>
<attribute name="VALUE" x="189.23" y="123.698" size="1.778" layer="96"/>
</instance>
<instance part="VSS45" gate="G$1" x="185.42" y="127" smashed="yes" rot="R270">
<attribute name="VALUE" x="180.34" y="129.54" size="1.778" layer="96"/>
</instance>
<instance part="VSS46" gate="G$1" x="269.24" y="78.74" smashed="yes" rot="R90">
<attribute name="VALUE" x="274.32" y="76.2" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS47" gate="G$1" x="228.6" y="68.58" smashed="yes">
<attribute name="VALUE" x="226.06" y="63.5" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS48" gate="G$1" x="213.36" y="-154.94" smashed="yes">
<attribute name="VALUE" x="210.82" y="-160.02" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R10" gate="G$1" x="-48.26" y="5.08" smashed="yes" rot="R180">
<attribute name="NAME" x="-44.45" y="3.5814" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-44.45" y="8.382" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS49" gate="G$1" x="-53.34" y="0" smashed="yes">
<attribute name="VALUE" x="-55.88" y="-5.08" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS50" gate="G$1" x="193.04" y="-91.44" smashed="yes" rot="R180">
<attribute name="VALUE" x="195.58" y="-86.36" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS51" gate="G$1" x="233.68" y="-149.86" smashed="yes">
<attribute name="VALUE" x="231.14" y="-154.94" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS52" gate="G$1" x="208.28" y="132.08" smashed="yes" rot="R180">
<attribute name="VALUE" x="210.82" y="137.16" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS53" gate="G$1" x="248.92" y="73.66" smashed="yes">
<attribute name="VALUE" x="246.38" y="68.58" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C22" gate="G$1" x="180.34" y="83.82" smashed="yes" rot="R270">
<attribute name="NAME" x="180.975" y="82.804" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="176.149" y="82.804" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C23" gate="G$1" x="271.78" y="121.92" smashed="yes" rot="R270">
<attribute name="NAME" x="272.415" y="120.904" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="267.589" y="120.904" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="P+23" gate="1" x="175.26" y="81.28" smashed="yes" rot="R180">
<attribute name="VALUE" x="177.8" y="86.36" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="P+24" gate="1" x="274.32" y="119.38" smashed="yes" rot="R180">
<attribute name="VALUE" x="276.86" y="124.46" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C24" gate="G$1" x="160.02" y="-139.7" smashed="yes" rot="R270">
<attribute name="NAME" x="160.655" y="-140.716" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="155.829" y="-140.716" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C25" gate="G$1" x="259.08" y="-101.6" smashed="yes" rot="R90">
<attribute name="NAME" x="258.445" y="-100.584" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="263.271" y="-100.584" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+25" gate="1" x="152.4" y="-139.7" smashed="yes" rot="R90">
<attribute name="VALUE" x="157.48" y="-142.24" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+26" gate="1" x="266.7" y="-101.6" smashed="yes" rot="R270">
<attribute name="VALUE" x="261.62" y="-99.06" size="1.778" layer="96"/>
</instance>
<instance part="R11" gate="G$1" x="45.72" y="132.08" smashed="yes">
<attribute name="NAME" x="41.91" y="133.5786" size="1.778" layer="95"/>
<attribute name="VALUE" x="41.91" y="128.778" size="1.778" layer="96"/>
</instance>
<instance part="R12" gate="G$1" x="45.72" y="129.54" smashed="yes">
<attribute name="NAME" x="41.91" y="131.0386" size="1.778" layer="95"/>
<attribute name="VALUE" x="41.91" y="126.238" size="1.778" layer="96"/>
</instance>
<instance part="R13" gate="G$1" x="45.72" y="127" smashed="yes">
<attribute name="NAME" x="41.91" y="128.4986" size="1.778" layer="95"/>
<attribute name="VALUE" x="41.91" y="123.698" size="1.778" layer="96"/>
</instance>
<instance part="LED1" gate="G$1" x="35.56" y="132.08" smashed="yes" rot="R270">
<attribute name="NAME" x="30.988" y="128.524" size="1.778" layer="95"/>
<attribute name="VALUE" x="30.988" y="126.365" size="1.778" layer="96"/>
</instance>
<instance part="LED2" gate="G$1" x="35.56" y="127" smashed="yes" rot="R270">
<attribute name="NAME" x="30.988" y="123.444" size="1.778" layer="95"/>
<attribute name="VALUE" x="30.988" y="121.285" size="1.778" layer="96"/>
</instance>
<instance part="LED3" gate="G$1" x="35.56" y="121.92" smashed="yes" rot="R270">
<attribute name="NAME" x="30.988" y="118.364" size="1.778" layer="95"/>
<attribute name="VALUE" x="30.988" y="116.205" size="1.778" layer="96"/>
</instance>
<instance part="VSS54" gate="G$1" x="30.48" y="111.76" smashed="yes">
<attribute name="VALUE" x="27.94" y="106.68" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="TP5" gate="G$1" x="259.08" y="-58.42" smashed="yes" rot="R270">
<attribute name="NAME" x="260.35" y="-57.15" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="257.81" y="-59.69" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="TP6" gate="G$1" x="259.08" y="-66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="260.35" y="-64.77" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="257.81" y="-67.31" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="P+11" gate="VCC" x="175.26" y="-55.88" smashed="yes">
<attribute name="VALUE" x="172.72" y="-55.88" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C26" gate="G$1" x="50.8" y="-134.62" smashed="yes" rot="R270">
<attribute name="NAME" x="51.435" y="-135.636" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="46.609" y="-135.636" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS55" gate="G$1" x="43.18" y="-134.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="38.1" y="-132.08" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="VCC" x="-124.46" y="-15.24" smashed="yes">
<attribute name="VALUE" x="-121.92" y="-15.24" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+8" gate="VCC" x="-111.76" y="-167.64" smashed="yes" rot="R180">
<attribute name="VALUE" x="-109.22" y="-167.64" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="+3V2" gate="G$1" x="68.58" y="-134.62" smashed="yes">
<attribute name="VALUE" x="66.04" y="-134.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C27" gate="G$1" x="58.42" y="-129.54" smashed="yes" rot="R270">
<attribute name="NAME" x="59.055" y="-130.556" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="54.229" y="-130.556" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD19" gate="G$1" x="-48.26" y="-104.14" smashed="yes">
<attribute name="VALUE" x="-50.8" y="-106.68" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="U3" gate="A" x="-111.76" y="40.64" smashed="yes">
<attribute name="NAME" x="-116.94811875" y="55.7466" size="2.034559375" layer="95" ratio="5" rot="SR0"/>
<attribute name="VALUE" x="-115.70293125" y="15.3798" size="2.035059375" layer="96" ratio="5" rot="SR0"/>
</instance>
<instance part="SUPPLY3" gate="GND" x="-129.54" y="22.86" smashed="yes">
<attribute name="VALUE" x="-131.445" y="19.685" size="1.778" layer="96"/>
</instance>
<instance part="DO" gate="-1" x="-68.58" y="48.26" smashed="yes">
<attribute name="NAME" x="-66.04" y="47.498" size="1.524" layer="95"/>
<attribute name="VALUE" x="-69.342" y="49.657" size="1.778" layer="96"/>
</instance>
<instance part="DO" gate="-2" x="-68.58" y="45.72" smashed="yes">
<attribute name="NAME" x="-66.04" y="44.958" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-3" x="-68.58" y="43.18" smashed="yes">
<attribute name="NAME" x="-66.04" y="42.418" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-4" x="-68.58" y="40.64" smashed="yes">
<attribute name="NAME" x="-66.04" y="39.878" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-5" x="-68.58" y="38.1" smashed="yes">
<attribute name="NAME" x="-66.04" y="37.338" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-6" x="-68.58" y="35.56" smashed="yes">
<attribute name="NAME" x="-66.04" y="34.798" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-7" x="-68.58" y="33.02" smashed="yes">
<attribute name="NAME" x="-66.04" y="32.258" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-8" x="-68.58" y="30.48" smashed="yes">
<attribute name="NAME" x="-66.04" y="29.718" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-9" x="-68.58" y="27.94" smashed="yes">
<attribute name="NAME" x="-66.04" y="27.178" size="1.524" layer="95"/>
</instance>
<instance part="DO" gate="-10" x="-68.58" y="25.4" smashed="yes">
<attribute name="NAME" x="-66.04" y="24.638" size="1.524" layer="95"/>
</instance>
<instance part="RS485" gate="-1" x="259.08" y="-43.18" smashed="yes">
<attribute name="NAME" x="261.62" y="-43.942" size="1.524" layer="95"/>
<attribute name="VALUE" x="258.318" y="-41.783" size="1.778" layer="96"/>
</instance>
<instance part="RS485" gate="-2" x="259.08" y="-45.72" smashed="yes">
<attribute name="NAME" x="261.62" y="-46.482" size="1.524" layer="95"/>
</instance>
<instance part="RS485" gate="-3" x="259.08" y="-48.26" smashed="yes">
<attribute name="NAME" x="261.62" y="-49.022" size="1.524" layer="95"/>
</instance>
<instance part="RS485" gate="-4" x="259.08" y="-50.8" smashed="yes">
<attribute name="NAME" x="261.62" y="-51.562" size="1.524" layer="95"/>
</instance>
<instance part="RS485" gate="-5" x="259.08" y="-53.34" smashed="yes">
<attribute name="NAME" x="261.62" y="-54.102" size="1.524" layer="95"/>
</instance>
<instance part="SUPPLY4" gate="GND" x="-78.74" y="17.78" smashed="yes">
<attribute name="VALUE" x="-80.645" y="14.605" size="1.778" layer="96"/>
</instance>
<instance part="P+4" gate="1" x="-83.82" y="22.86" smashed="yes" rot="R180">
<attribute name="VALUE" x="-81.28" y="27.94" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS56" gate="G$1" x="256.54" y="-40.64" smashed="yes" rot="R180">
<attribute name="VALUE" x="259.08" y="-35.56" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="TP7" gate="G$1" x="259.08" y="-71.12" smashed="yes" rot="R270">
<attribute name="NAME" x="260.35" y="-69.85" size="1.778" layer="95" rot="R270"/>
<attribute name="TP_SIGNAL_NAME" x="257.81" y="-72.39" size="1.778" layer="97" rot="R270"/>
</instance>
<instance part="P+28" gate="VCC" x="254" y="-53.34" smashed="yes" rot="R90">
<attribute name="VALUE" x="254" y="-55.88" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R14" gate="G$1" x="-88.9" y="25.4" smashed="yes">
<attribute name="NAME" x="-92.71" y="26.8986" size="1.778" layer="95"/>
<attribute name="VALUE" x="-92.71" y="22.098" size="1.778" layer="96"/>
</instance>
<instance part="SPI" gate="-1" x="-101.6" y="86.36" smashed="yes">
<attribute name="NAME" x="-99.06" y="85.598" size="1.524" layer="95"/>
<attribute name="VALUE" x="-102.362" y="87.757" size="1.778" layer="96"/>
</instance>
<instance part="SPI" gate="-2" x="-101.6" y="83.82" smashed="yes">
<attribute name="NAME" x="-99.06" y="83.058" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-3" x="-101.6" y="81.28" smashed="yes">
<attribute name="NAME" x="-99.06" y="80.518" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-4" x="-101.6" y="78.74" smashed="yes">
<attribute name="NAME" x="-99.06" y="77.978" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-5" x="-101.6" y="76.2" smashed="yes">
<attribute name="NAME" x="-99.06" y="75.438" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-6" x="-101.6" y="73.66" smashed="yes">
<attribute name="NAME" x="-99.06" y="72.898" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-7" x="-101.6" y="71.12" smashed="yes">
<attribute name="NAME" x="-99.06" y="70.358" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-8" x="-101.6" y="68.58" smashed="yes">
<attribute name="NAME" x="-99.06" y="67.818" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-9" x="-101.6" y="66.04" smashed="yes">
<attribute name="NAME" x="-99.06" y="65.278" size="1.524" layer="95"/>
</instance>
<instance part="SPI" gate="-10" x="-101.6" y="63.5" smashed="yes">
<attribute name="NAME" x="-99.06" y="62.738" size="1.524" layer="95"/>
</instance>
<instance part="P+29" gate="VCC" x="-121.92" y="71.12" smashed="yes" rot="R90">
<attribute name="VALUE" x="-127" y="68.58" size="1.778" layer="96"/>
</instance>
<instance part="VSS57" gate="G$1" x="-114.3" y="66.04" smashed="yes">
<attribute name="VALUE" x="-111.76" y="63.5" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="X2" gate="-1" x="276.86" y="-7.62" smashed="yes">
<attribute name="NAME" x="279.4" y="-8.382" size="1.524" layer="95"/>
<attribute name="VALUE" x="276.098" y="-6.223" size="1.778" layer="96"/>
</instance>
<instance part="X2" gate="-2" x="276.86" y="-10.16" smashed="yes">
<attribute name="NAME" x="279.4" y="-10.922" size="1.524" layer="95"/>
</instance>
<instance part="X2" gate="-3" x="276.86" y="-12.7" smashed="yes">
<attribute name="NAME" x="279.4" y="-13.462" size="1.524" layer="95"/>
</instance>
<instance part="X2" gate="-4" x="276.86" y="-15.24" smashed="yes">
<attribute name="NAME" x="279.4" y="-16.002" size="1.524" layer="95"/>
</instance>
<instance part="X2" gate="-5" x="276.86" y="-17.78" smashed="yes">
<attribute name="NAME" x="279.4" y="-18.542" size="1.524" layer="95"/>
</instance>
<instance part="X2" gate="-6" x="276.86" y="-20.32" smashed="yes">
<attribute name="NAME" x="279.4" y="-21.082" size="1.524" layer="95"/>
</instance>
<instance part="X2" gate="-7" x="276.86" y="-22.86" smashed="yes">
<attribute name="NAME" x="279.4" y="-23.622" size="1.524" layer="95"/>
</instance>
<instance part="X2" gate="-8" x="276.86" y="-25.4" smashed="yes">
<attribute name="NAME" x="279.4" y="-26.162" size="1.524" layer="95"/>
</instance>
<instance part="P+30" gate="VCC" x="271.78" y="-15.24" smashed="yes" rot="R90">
<attribute name="VALUE" x="271.78" y="-15.24" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS58" gate="G$1" x="274.32" y="-5.08" smashed="yes" rot="R180">
<attribute name="VALUE" x="271.78" y="-5.08" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS59" gate="G$1" x="264.16" y="-17.78" smashed="yes" rot="R270">
<attribute name="VALUE" x="259.08" y="-17.78" size="1.778" layer="96"/>
</instance>
<instance part="P+31" gate="VCC" x="271.78" y="-25.4" smashed="yes" rot="R90">
<attribute name="VALUE" x="271.78" y="-25.4" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="JP1" gate="G$1" x="33.02" y="-106.68" smashed="yes">
<attribute name="NAME" x="26.67" y="-100.965" size="1.778" layer="95"/>
<attribute name="VALUE" x="26.67" y="-111.76" size="1.778" layer="96"/>
</instance>
<instance part="JP2" gate="G$1" x="33.02" y="-119.38" smashed="yes">
<attribute name="NAME" x="26.67" y="-113.665" size="1.778" layer="95"/>
<attribute name="VALUE" x="26.67" y="-124.46" size="1.778" layer="96"/>
</instance>
<instance part="VSS60" gate="G$1" x="17.78" y="-106.68" smashed="yes" rot="R270">
<attribute name="VALUE" x="12.7" y="-104.14" size="1.778" layer="96"/>
</instance>
<instance part="JP3" gate="A" x="111.76" y="-144.78" smashed="yes" rot="R180">
<attribute name="NAME" x="118.11" y="-165.735" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="118.11" y="-119.38" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="U4" gate="G$1" x="22.86" y="-147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="15.24" y="-160.02" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="33.02" y="-160.02" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS61" gate="G$1" x="35.56" y="-129.54" smashed="yes" rot="R90">
<attribute name="VALUE" x="40.64" y="-132.08" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="P+32" gate="1" x="33.02" y="-162.56" smashed="yes">
<attribute name="VALUE" x="30.48" y="-167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C28" gate="G$1" x="17.78" y="-167.64" smashed="yes">
<attribute name="NAME" x="18.796" y="-167.005" size="1.778" layer="95"/>
<attribute name="VALUE" x="18.796" y="-171.831" size="1.778" layer="96"/>
</instance>
<instance part="C29" gate="G$1" x="22.86" y="-167.64" smashed="yes">
<attribute name="NAME" x="23.876" y="-167.005" size="1.778" layer="95"/>
<attribute name="VALUE" x="23.876" y="-171.831" size="1.778" layer="96"/>
</instance>
<instance part="VSS62" gate="G$1" x="17.78" y="-175.26" smashed="yes">
<attribute name="VALUE" x="15.24" y="-180.34" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS63" gate="G$1" x="22.86" y="-175.26" smashed="yes">
<attribute name="VALUE" x="20.32" y="-180.34" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C30" gate="G$1" x="7.62" y="-132.08" smashed="yes">
<attribute name="NAME" x="8.636" y="-131.445" size="1.778" layer="95"/>
<attribute name="VALUE" x="8.636" y="-136.271" size="1.778" layer="96"/>
</instance>
<instance part="C31" gate="G$1" x="12.7" y="-121.92" smashed="yes">
<attribute name="NAME" x="13.716" y="-121.285" size="1.778" layer="95"/>
<attribute name="VALUE" x="13.716" y="-126.111" size="1.778" layer="96"/>
</instance>
<instance part="VSS64" gate="G$1" x="7.62" y="-139.7" smashed="yes">
<attribute name="VALUE" x="5.08" y="-144.78" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS65" gate="G$1" x="15.24" y="-127" smashed="yes" rot="R90">
<attribute name="VALUE" x="20.32" y="-129.54" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R15" gate="G$1" x="266.7" y="-60.96" smashed="yes" rot="R90">
<attribute name="NAME" x="265.2014" y="-64.77" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="270.002" y="-64.77" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="JP4" gate="A" x="127" y="129.54" smashed="yes" rot="R180">
<attribute name="NAME" x="133.35" y="116.205" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="133.35" y="142.24" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="VSS66" gate="G$1" x="132.08" y="-121.92" smashed="yes" rot="R180">
<attribute name="VALUE" x="134.62" y="-116.84" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VSS67" gate="G$1" x="144.78" y="139.7" smashed="yes" rot="R180">
<attribute name="VALUE" x="147.32" y="144.78" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD20" gate="G$1" x="160.02" y="134.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="157.48" y="137.16" size="1.778" layer="96"/>
</instance>
<instance part="P+33" gate="VCC" x="147.32" y="132.08" smashed="yes" rot="R270">
<attribute name="VALUE" x="147.32" y="134.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VSS68" gate="G$1" x="-15.24" y="-83.82" smashed="yes" rot="R180">
<attribute name="VALUE" x="-12.7" y="-78.74" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="VDD25" gate="G$1" x="-15.24" y="-111.76" smashed="yes" rot="R180">
<attribute name="VALUE" x="-12.7" y="-111.76" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="P+9" gate="VCC" x="-134.62" y="-83.82" smashed="yes">
<attribute name="VALUE" x="-137.16" y="-83.82" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+10" gate="VCC" x="-134.62" y="-101.6" smashed="yes">
<attribute name="VALUE" x="-137.16" y="-101.6" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD13" gate="G$1" x="-106.68" y="-83.82" smashed="yes">
<attribute name="VALUE" x="-109.22" y="-86.36" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD14" gate="G$1" x="-106.68" y="-101.6" smashed="yes">
<attribute name="VALUE" x="-109.22" y="-104.14" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+22" gate="VCC" x="-134.62" y="-58.42" smashed="yes">
<attribute name="VALUE" x="-137.16" y="-58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD11" gate="G$1" x="-106.68" y="-58.42" smashed="yes">
<attribute name="VALUE" x="-109.22" y="-60.96" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+5" gate="VCC" x="-88.9" y="-27.94" smashed="yes">
<attribute name="VALUE" x="-91.44" y="-27.94" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+7" gate="VCC" x="-88.9" y="-43.18" smashed="yes">
<attribute name="VALUE" x="-91.44" y="-43.18" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD8" gate="G$1" x="-60.96" y="-27.94" smashed="yes">
<attribute name="VALUE" x="-63.5" y="-30.48" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD10" gate="G$1" x="-60.96" y="-43.18" smashed="yes">
<attribute name="VALUE" x="-63.5" y="-45.72" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+6" gate="VCC" x="-88.9" y="-5.08" smashed="yes">
<attribute name="VALUE" x="-91.44" y="-5.08" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="VDD9" gate="G$1" x="-53.34" y="-5.08" smashed="yes">
<attribute name="VALUE" x="-55.88" y="-7.62" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="MCLEAR" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="C1" gate="G$1" pin="1"/>
<junction x="-35.56" y="10.16"/>
<junction x="-35.56" y="15.24"/>
<wire x1="-35.56" y1="10.16" x2="-35.56" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="10.16" x2="-53.34" y2="10.16" width="0.1524" layer="91"/>
<pinref part="S1" gate="G$1" pin="4"/>
<wire x1="-53.34" y1="10.16" x2="-53.34" y2="7.62" width="0.1524" layer="91"/>
<junction x="-53.34" y="7.62"/>
<label x="-35.56" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="4"/>
<wire x1="129.54" y1="127" x2="144.78" y2="127" width="0.1524" layer="91"/>
<junction x="129.54" y="127"/>
<junction x="144.78" y="127"/>
<label x="149.86" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="!MCLR"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="12.7" y1="15.24" x2="-22.86" y2="15.24" width="0.1524" layer="91"/>
<junction x="-25.4" y="15.24"/>
<junction x="12.7" y="15.24"/>
<wire x1="-22.86" y1="15.24" x2="-25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="15.24" x2="-22.86" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="15.24" x2="-22.86" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="SV2" gate="1" pin="1"/>
<wire x1="-22.86" y1="-104.14" x2="2.54" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-104.14" x2="2.54" y2="-71.12" width="0.1524" layer="91"/>
<junction x="2.54" y="-104.14"/>
<junction x="-22.86" y="-104.14"/>
<wire x1="-22.86" y1="-71.12" x2="2.54" y2="-71.12" width="0.1524" layer="91"/>
<junction x="-22.86" y="15.24"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<junction x="-45.72" y="15.24"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VDD_6"/>
<wire x1="91.44" y1="104.14" x2="91.44" y2="111.76" width="0.1524" layer="91"/>
<pinref part="VDD3" gate="G$1" pin="VDD"/>
<junction x="91.44" y="104.14"/>
<pinref part="TP1" gate="G$1" pin="TP"/>
<wire x1="91.44" y1="111.76" x2="91.44" y2="114.3" width="0.1524" layer="91"/>
<junction x="91.44" y="111.76"/>
<wire x1="91.44" y1="114.3" x2="91.44" y2="119.38" width="0.1524" layer="91"/>
<wire x1="91.44" y1="119.38" x2="91.44" y2="137.16" width="0.1524" layer="91"/>
<wire x1="91.44" y1="137.16" x2="-15.24" y2="137.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VDD_2"/>
<junction x="12.7" y="7.62"/>
<wire x1="12.7" y1="7.62" x2="-5.08" y2="7.62" width="0.1524" layer="91"/>
<pinref part="VDD21" gate="G$1" pin="VDD"/>
<pinref part="IC1" gate="G$1" pin="VDD_1"/>
<wire x1="12.7" y1="43.18" x2="-5.08" y2="43.18" width="0.1524" layer="91"/>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<junction x="12.7" y="43.18"/>
<wire x1="-5.08" y1="7.62" x2="-17.78" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="7.62" x2="-17.78" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="43.18" x2="-15.24" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="43.18" x2="-5.08" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="137.16" x2="-15.24" y2="43.18" width="0.1524" layer="91"/>
<junction x="-15.24" y="43.18"/>
<junction x="-5.08" y="7.62"/>
<junction x="91.44" y="114.3"/>
<junction x="-5.08" y="43.18"/>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="C8" gate="G$1" pin="1"/>
<junction x="91.44" y="119.38"/>
<pinref part="C9" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VDD_4"/>
<junction x="106.68" y="-88.9"/>
<wire x1="106.68" y1="-88.9" x2="106.68" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="VDD22" gate="G$1" pin="VDD"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="106.68" y1="-99.06" x2="106.68" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-99.06" x2="99.06" y2="-99.06" width="0.1524" layer="91"/>
<junction x="99.06" y="-99.06"/>
<junction x="106.68" y="-99.06"/>
<junction x="106.68" y="-106.68"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VDD_3"/>
<wire x1="83.82" y1="-88.9" x2="83.82" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="VDD4" gate="G$1" pin="VDD"/>
<junction x="83.82" y="-88.9"/>
<junction x="83.82" y="-106.68"/>
</segment>
<segment>
<pinref part="OS1" gate="A" pin="VDD"/>
<pinref part="VDD5" gate="G$1" pin="VDD"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="259.08" y1="12.7" x2="251.46" y2="12.7" width="0.1524" layer="91"/>
<junction x="251.46" y="12.7"/>
<wire x1="259.08" y1="12.7" x2="251.46" y2="12.7" width="0.1524" layer="91"/>
<junction x="259.08" y="12.7"/>
</segment>
<segment>
<pinref part="OS1" gate="A" pin="CON"/>
<pinref part="VDD6" gate="G$1" pin="VDD"/>
<junction x="226.06" y="12.7"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="VCC"/>
<wire x1="203.2" y1="-55.88" x2="195.58" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="VDD7" gate="G$1" pin="VDD"/>
<junction x="203.2" y="-55.88"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="195.58" y1="-55.88" x2="193.04" y2="-55.88" width="0.1524" layer="91"/>
<junction x="195.58" y="-55.88"/>
</segment>
<segment>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="55.88" y1="-109.22" x2="50.8" y2="-109.22" width="0.1524" layer="91"/>
<junction x="55.88" y="-109.22"/>
<pinref part="VDD12" gate="G$1" pin="VDD"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="50.8" y1="-109.22" x2="45.72" y2="-109.22" width="0.1524" layer="91"/>
<junction x="50.8" y="-109.22"/>
<junction x="45.72" y="-109.22"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VUSB3V3"/>
<wire x1="160.02" y1="-5.08" x2="177.8" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="VDD15" gate="G$1" pin="VDD"/>
<junction x="177.8" y="-5.08"/>
<junction x="160.02" y="-5.08"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="VDD16" gate="G$1" pin="VDD"/>
<junction x="-93.98" y="109.22"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="-76.2" y1="109.22" x2="-86.36" y2="109.22" width="0.1524" layer="91"/>
<junction x="-76.2" y="109.22"/>
<pinref part="C10" gate="G$1" pin="1"/>
<junction x="-86.36" y="109.22"/>
<wire x1="-86.36" y1="109.22" x2="-93.98" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="109.22" x2="-96.52" y2="109.22" width="0.1524" layer="91"/>
<junction x="-96.52" y="109.22"/>
</segment>
<segment>
<pinref part="OS2" gate="A" pin="VDD"/>
<pinref part="C12" gate="G$1" pin="1"/>
<pinref part="VDD17" gate="G$1" pin="VDD"/>
<wire x1="259.08" y1="40.64" x2="251.46" y2="40.64" width="0.1524" layer="91"/>
<junction x="251.46" y="40.64"/>
<wire x1="259.08" y1="40.64" x2="251.46" y2="40.64" width="0.1524" layer="91"/>
<junction x="259.08" y="40.64"/>
</segment>
<segment>
<pinref part="OS2" gate="A" pin="CON"/>
<pinref part="VDD18" gate="G$1" pin="VDD"/>
<junction x="226.06" y="40.64"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VDD_5"/>
<pinref part="VDD23" gate="G$1" pin="VDD"/>
<wire x1="170.18" y1="12.7" x2="160.02" y2="12.7" width="0.1524" layer="91"/>
<junction x="160.02" y="12.7"/>
<junction x="170.18" y="12.7"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="-48.26" y1="-109.22" x2="-48.26" y2="-106.68" width="0.1524" layer="91"/>
<junction x="-48.26" y="-109.22"/>
<pinref part="VDD19" gate="G$1" pin="VDD"/>
<junction x="-48.26" y="-106.68"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="7"/>
<wire x1="129.54" y1="134.62" x2="157.48" y2="134.62" width="0.1524" layer="91"/>
<junction x="129.54" y="134.62"/>
<junction x="157.48" y="134.62"/>
<pinref part="VDD20" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="SV2" gate="1" pin="2"/>
<wire x1="-22.86" y1="-101.6" x2="-15.24" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-101.6" x2="-15.24" y2="-109.22" width="0.1524" layer="91"/>
<junction x="-22.86" y="-101.6"/>
<pinref part="VDD25" gate="G$1" pin="VDD"/>
<junction x="-15.24" y="-109.22"/>
</segment>
<segment>
<pinref part="IC5" gate="G$1" pin="VCCB"/>
<pinref part="VDD13" gate="G$1" pin="VDD"/>
<junction x="-106.68" y="-86.36"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="VCCB"/>
<pinref part="VDD14" gate="G$1" pin="VDD"/>
<junction x="-106.68" y="-104.14"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="VCCB"/>
<pinref part="C17" gate="G$1" pin="1"/>
<wire x1="-104.14" y1="-68.58" x2="-106.68" y2="-60.96" width="0.1524" layer="91"/>
<junction x="-106.68" y="-60.96"/>
<wire x1="-104.14" y1="-68.58" x2="-106.68" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="VDD11" gate="G$1" pin="VDD"/>
<junction x="-106.68" y="-68.58"/>
</segment>
<segment>
<pinref part="IC6" gate="G$1" pin="VCCB"/>
<pinref part="VDD8" gate="G$1" pin="VDD"/>
<junction x="-60.96" y="-30.48"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="VCCB"/>
<pinref part="VDD10" gate="G$1" pin="VDD"/>
<junction x="-60.96" y="-45.72"/>
</segment>
<segment>
<pinref part="IC7" gate="G$1" pin="VCCB"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="-58.42" y1="-15.24" x2="-53.34" y2="-7.62" width="0.1524" layer="91"/>
<junction x="-53.34" y="-7.62"/>
<wire x1="-58.42" y1="-15.24" x2="-60.96" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="VDD9" gate="G$1" pin="VDD"/>
<junction x="-60.96" y="-15.24"/>
</segment>
</net>
<net name="VSS" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="VSS1" gate="G$1" pin="VSS"/>
<junction x="-35.56" y="2.54"/>
</segment>
<segment>
<pinref part="VSS33" gate="G$1" pin="VSS"/>
<pinref part="IC1" gate="G$1" pin="VSS_4"/>
<wire x1="160.02" y1="20.32" x2="170.18" y2="20.32" width="0.1524" layer="91"/>
<junction x="160.02" y="20.32"/>
<junction x="170.18" y="20.32"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VSS_5"/>
<wire x1="160.02" y1="45.72" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
<pinref part="VSS2" gate="G$1" pin="VSS"/>
<junction x="160.02" y="45.72"/>
<junction x="170.18" y="45.72"/>
</segment>
<segment>
<pinref part="VSS35" gate="G$1" pin="VSS"/>
<pinref part="IC1" gate="G$1" pin="AVSS"/>
<wire x1="68.58" y1="-88.9" x2="68.58" y2="-106.68" width="0.1524" layer="91"/>
<junction x="68.58" y="-88.9"/>
<junction x="68.58" y="-106.68"/>
</segment>
<segment>
<pinref part="VSS34" gate="G$1" pin="VSS"/>
<pinref part="IC1" gate="G$1" pin="VSS_2"/>
<wire x1="81.28" y1="-88.9" x2="81.28" y2="-99.06" width="0.1524" layer="91"/>
<junction x="81.28" y="-88.9"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="81.28" y1="-99.06" x2="81.28" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-99.06" x2="81.28" y2="-99.06" width="0.1524" layer="91"/>
<junction x="81.28" y="-99.06"/>
<junction x="91.44" y="-99.06"/>
<junction x="81.28" y="-106.68"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VSS_3"/>
<wire x1="104.14" y1="-88.9" x2="104.14" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="VSS3" gate="G$1" pin="VSS"/>
<junction x="104.14" y="-88.9"/>
<junction x="104.14" y="-106.68"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VSS_1"/>
<wire x1="12.7" y1="10.16" x2="-5.08" y2="10.16" width="0.1524" layer="91"/>
<pinref part="VSS4" gate="G$1" pin="VSS"/>
<junction x="12.7" y="10.16"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="35.56" width="0.1524" layer="91"/>
<junction x="-5.08" y="35.56"/>
<junction x="-5.08" y="10.16"/>
<wire x1="-5.08" y1="35.56" x2="-20.32" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="35.56" x2="-20.32" y2="134.62" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VSS_6"/>
<junction x="93.98" y="104.14"/>
<wire x1="93.98" y1="104.14" x2="93.98" y2="124.46" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="93.98" y1="124.46" x2="93.98" y2="134.62" width="0.1524" layer="91"/>
<wire x1="83.82" y1="119.38" x2="83.82" y2="124.46" width="0.1524" layer="91"/>
<wire x1="83.82" y1="124.46" x2="93.98" y2="124.46" width="0.1524" layer="91"/>
<junction x="83.82" y="119.38"/>
<junction x="93.98" y="124.46"/>
<wire x1="-20.32" y1="134.62" x2="93.98" y2="134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="S1" gate="G$1" pin="2"/>
<wire x1="-73.66" y1="5.08" x2="-83.82" y2="5.08" width="0.1524" layer="91"/>
<pinref part="VSS6" gate="G$1" pin="VSS"/>
<junction x="-73.66" y="5.08"/>
<junction x="-83.82" y="5.08"/>
</segment>
<segment>
<pinref part="OS1" gate="A" pin="VSS"/>
<pinref part="VSS7" gate="G$1" pin="VSS"/>
<junction x="251.46" y="22.86"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="259.08" y1="20.32" x2="251.46" y2="22.86" width="0.1524" layer="91"/>
<junction x="259.08" y="20.32"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND_1"/>
<pinref part="VSS8" gate="G$1" pin="VSS"/>
<junction x="203.2" y="-53.34"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND_8"/>
<pinref part="VSS9" gate="G$1" pin="VSS"/>
<pinref part="IC2" gate="G$1" pin="GND_7"/>
<wire x1="233.68" y1="-55.88" x2="233.68" y2="-53.34" width="0.1524" layer="91"/>
<junction x="233.68" y="-55.88"/>
<junction x="233.68" y="-53.34"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND_3"/>
<pinref part="VSS10" gate="G$1" pin="VSS"/>
<pinref part="IC2" gate="G$1" pin="GND_4"/>
<wire x1="233.68" y1="-71.12" x2="233.68" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-68.58" x2="238.76" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-68.58" x2="238.76" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="GND_5"/>
<pinref part="IC2" gate="G$1" pin="GND_6"/>
<wire x1="233.68" y1="-63.5" x2="233.68" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-63.5" x2="233.68" y2="-63.5" width="0.1524" layer="91"/>
<junction x="233.68" y="-71.12"/>
<junction x="233.68" y="-68.58"/>
<junction x="233.68" y="-63.5"/>
<junction x="233.68" y="-60.96"/>
<wire x1="233.68" y1="-71.12" x2="251.46" y2="-71.12" width="0.1524" layer="91"/>
<junction x="256.54" y="-71.12"/>
<pinref part="RS485" gate="-4" pin="S"/>
<wire x1="251.46" y1="-71.12" x2="256.54" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-50.8" x2="251.46" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-50.8" x2="251.46" y2="-71.12" width="0.1524" layer="91"/>
<junction x="251.46" y="-71.12"/>
<junction x="256.54" y="-50.8"/>
<pinref part="TP7" gate="G$1" pin="TP"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND_2"/>
<pinref part="VSS11" gate="G$1" pin="VSS"/>
<junction x="203.2" y="-71.12"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="VSS12" gate="G$1" pin="VSS"/>
<junction x="185.42" y="-66.04"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="VSS13" gate="G$1" pin="VSS"/>
<junction x="195.58" y="-48.26"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="VSS20" gate="G$1" pin="VSS"/>
<junction x="66.04" y="-116.84"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="VSS21" gate="G$1" pin="VSS"/>
<junction x="50.8" y="-116.84"/>
</segment>
<segment>
<pinref part="C10" gate="G$1" pin="2"/>
<pinref part="VSS25" gate="G$1" pin="VSS"/>
<junction x="-86.36" y="101.6"/>
</segment>
<segment>
<pinref part="C11" gate="G$1" pin="2"/>
<pinref part="VSS26" gate="G$1" pin="VSS"/>
<junction x="-76.2" y="101.6"/>
</segment>
<segment>
<pinref part="OS2" gate="A" pin="VSS"/>
<pinref part="VSS29" gate="G$1" pin="VSS"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="259.08" y1="48.26" x2="251.46" y2="50.8" width="0.1524" layer="91"/>
<junction x="259.08" y="48.26"/>
<junction x="251.46" y="50.8"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="VSS14" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="IC6" gate="G$1" pin="GND"/>
<pinref part="VSS5" gate="G$1" pin="VSS"/>
<wire x1="-96.52" y1="-33.02" x2="-88.9" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-88.9" y="-33.02"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="VSS15" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="IC7" gate="G$1" pin="GND"/>
<pinref part="VSS16" gate="G$1" pin="VSS"/>
<junction x="-88.9" y="-17.78"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="GND"/>
<pinref part="VSS17" gate="G$1" pin="VSS"/>
<junction x="-88.9" y="-48.26"/>
</segment>
<segment>
<pinref part="X1" gate="-9" pin="S"/>
<wire x1="-139.7" y1="-20.32" x2="-132.08" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-132.08" y1="-20.32" x2="-132.08" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="VSS18" gate="G$1" pin="VSS"/>
<junction x="-139.7" y="-20.32"/>
<pinref part="X1" gate="-10" pin="S"/>
<wire x1="-139.7" y1="-20.32" x2="-139.7" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-139.7" y="-17.78"/>
<junction x="-132.08" y="-17.78"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="PGNDA"/>
<pinref part="U2" gate="G$1" pin="PGNDB@1"/>
<wire x1="193.04" y1="-116.84" x2="193.04" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-119.38" x2="193.04" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-121.92" x2="193.04" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-119.38" x2="182.88" y2="-119.38" width="0.1524" layer="91"/>
<junction x="193.04" y="-116.84"/>
<pinref part="U2" gate="G$1" pin="PGNDA@1"/>
<junction x="193.04" y="-119.38"/>
<pinref part="U2" gate="G$1" pin="PGNDB"/>
<junction x="193.04" y="-121.92"/>
<junction x="193.04" y="-124.46"/>
<pinref part="VSS19" gate="G$1" pin="VSS"/>
<junction x="182.88" y="-119.38"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="PGNDA@3"/>
<pinref part="U2" gate="G$1" pin="PGNDB@2"/>
<wire x1="233.68" y1="-116.84" x2="233.68" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-119.38" x2="233.68" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-121.92" x2="233.68" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-119.38" x2="243.84" y2="-119.38" width="0.1524" layer="91"/>
<junction x="233.68" y="-116.84"/>
<pinref part="U2" gate="G$1" pin="PGNDA@2"/>
<junction x="233.68" y="-119.38"/>
<pinref part="U2" gate="G$1" pin="PGNDB@3"/>
<junction x="233.68" y="-121.92"/>
<junction x="233.68" y="-124.46"/>
<pinref part="VSS22" gate="G$1" pin="VSS"/>
<junction x="243.84" y="-119.38"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PGNDA"/>
<pinref part="U1" gate="G$1" pin="PGNDB@1"/>
<wire x1="208.28" y1="106.68" x2="208.28" y2="104.14" width="0.1524" layer="91"/>
<wire x1="208.28" y1="104.14" x2="208.28" y2="101.6" width="0.1524" layer="91"/>
<wire x1="208.28" y1="101.6" x2="208.28" y2="99.06" width="0.1524" layer="91"/>
<wire x1="208.28" y1="104.14" x2="200.66" y2="104.14" width="0.1524" layer="91"/>
<pinref part="VSS23" gate="G$1" pin="VSS"/>
<junction x="200.66" y="104.14"/>
<junction x="208.28" y="106.68"/>
<pinref part="U1" gate="G$1" pin="PGNDA@1"/>
<junction x="208.28" y="104.14"/>
<pinref part="U1" gate="G$1" pin="PGNDB"/>
<junction x="208.28" y="101.6"/>
<junction x="208.28" y="99.06"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PGNDA@3"/>
<pinref part="U1" gate="G$1" pin="PGNDB@2"/>
<wire x1="248.92" y1="106.68" x2="248.92" y2="104.14" width="0.1524" layer="91"/>
<wire x1="248.92" y1="104.14" x2="248.92" y2="101.6" width="0.1524" layer="91"/>
<wire x1="248.92" y1="101.6" x2="248.92" y2="99.06" width="0.1524" layer="91"/>
<wire x1="248.92" y1="104.14" x2="256.54" y2="104.14" width="0.1524" layer="91"/>
<pinref part="VSS27" gate="G$1" pin="VSS"/>
<junction x="256.54" y="104.14"/>
<junction x="248.92" y="106.68"/>
<pinref part="U1" gate="G$1" pin="PGNDA@2"/>
<junction x="248.92" y="104.14"/>
<pinref part="U1" gate="G$1" pin="PGNDB@3"/>
<junction x="248.92" y="101.6"/>
<junction x="248.92" y="99.06"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GND"/>
<pinref part="VSS30" gate="G$1" pin="VSS"/>
<junction x="-134.62" y="-71.12"/>
</segment>
<segment>
<pinref part="IC5" gate="G$1" pin="GND"/>
<pinref part="VSS31" gate="G$1" pin="VSS"/>
<junction x="-134.62" y="-88.9"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="GND"/>
<pinref part="VSS32" gate="G$1" pin="VSS"/>
<junction x="-134.62" y="-106.68"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="2"/>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="-81.28" y1="-7.62" x2="-73.66" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="VSS36" gate="G$1" pin="VSS"/>
<wire x1="-73.66" y1="-7.62" x2="-60.96" y2="-7.62" width="0.1524" layer="91"/>
<junction x="-73.66" y="-7.62"/>
<junction x="-81.28" y="-7.62"/>
<junction x="-60.96" y="-7.62"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="2"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="-127" y1="-60.96" x2="-119.38" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="VSS37" gate="G$1" pin="VSS"/>
<wire x1="-119.38" y1="-60.96" x2="-114.3" y2="-60.96" width="0.1524" layer="91"/>
<junction x="-119.38" y="-60.96"/>
<junction x="-127" y="-60.96"/>
<junction x="-114.3" y="-60.96"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<pinref part="VSS38" gate="G$1" pin="VSS"/>
<junction x="76.2" y="-134.62"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="13"/>
<wire x1="76.2" y1="-165.1" x2="58.42" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="VSS39" gate="G$1" pin="VSS"/>
<junction x="58.42" y="-165.1"/>
<junction x="76.2" y="-165.1"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="2"/>
<pinref part="VSS40" gate="G$1" pin="VSS"/>
<wire x1="162.56" y1="-106.68" x2="165.1" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="2"/>
<wire x1="165.1" y1="-106.68" x2="165.1" y2="-114.3" width="0.1524" layer="91"/>
<junction x="165.1" y="-106.68"/>
<junction x="165.1" y="-114.3"/>
<junction x="162.56" y="-106.68"/>
</segment>
<segment>
<pinref part="C18" gate="G$1" pin="2"/>
<pinref part="VSS41" gate="G$1" pin="VSS"/>
<wire x1="259.08" y1="-106.68" x2="256.54" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="C21" gate="G$1" pin="2"/>
<wire x1="256.54" y1="-114.3" x2="256.54" y2="-106.68" width="0.1524" layer="91"/>
<junction x="256.54" y="-114.3"/>
<junction x="256.54" y="-106.68"/>
<junction x="259.08" y="-106.68"/>
</segment>
<segment>
<pinref part="DIN" gate="-9" pin="S"/>
<wire x1="-111.76" y1="-157.48" x2="-121.92" y2="-157.48" width="0.1524" layer="91"/>
<pinref part="VSS42" gate="G$1" pin="VSS"/>
<wire x1="-121.92" y1="-157.48" x2="-121.92" y2="-165.1" width="0.1524" layer="91"/>
<junction x="-111.76" y="-157.48"/>
<junction x="-121.92" y="-165.1"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="VSS43" gate="G$1" pin="VSS"/>
<junction x="177.8" y="-96.52"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="VSS44" gate="G$1" pin="VSS"/>
<junction x="251.46" y="-144.78"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="VSS45" gate="G$1" pin="VSS"/>
<junction x="187.96" y="127"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="VSS46" gate="G$1" pin="VSS"/>
<junction x="266.7" y="78.74"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="EH@1"/>
<pinref part="U1" gate="G$1" pin="EH@2"/>
<wire x1="226.06" y1="71.12" x2="228.6" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="EH@3"/>
<wire x1="228.6" y1="71.12" x2="231.14" y2="71.12" width="0.1524" layer="91"/>
<pinref part="VSS47" gate="G$1" pin="VSS"/>
<junction x="228.6" y="71.12"/>
<junction x="226.06" y="71.12"/>
<junction x="231.14" y="71.12"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="EH@1"/>
<pinref part="U2" gate="G$1" pin="EH@3"/>
<wire x1="210.82" y1="-152.4" x2="213.36" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="VSS48" gate="G$1" pin="VSS"/>
<wire x1="213.36" y1="-152.4" x2="215.9" y2="-152.4" width="0.1524" layer="91"/>
<junction x="213.36" y="-152.4"/>
<junction x="210.82" y="-152.4"/>
<junction x="215.9" y="-152.4"/>
<pinref part="U2" gate="G$1" pin="EH@2"/>
</segment>
<segment>
<pinref part="S1" gate="G$1" pin="-"/>
<pinref part="VSS49" gate="G$1" pin="VSS"/>
<junction x="-53.34" y="2.54"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="D1"/>
<pinref part="VSS50" gate="G$1" pin="VSS"/>
<junction x="193.04" y="-93.98"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="D3"/>
<pinref part="VSS51" gate="G$1" pin="VSS"/>
<junction x="233.68" y="-147.32"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="D1"/>
<pinref part="VSS52" gate="G$1" pin="VSS"/>
<junction x="208.28" y="129.54"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="D3"/>
<pinref part="VSS53" gate="G$1" pin="VSS"/>
<junction x="248.92" y="76.2"/>
</segment>
<segment>
<pinref part="LED1" gate="G$1" pin="C"/>
<wire x1="30.48" y1="132.08" x2="30.48" y2="127" width="0.1524" layer="91"/>
<junction x="30.48" y="132.08"/>
<pinref part="LED2" gate="G$1" pin="C"/>
<junction x="30.48" y="127"/>
<wire x1="30.48" y1="127" x2="30.48" y2="121.92" width="0.1524" layer="91"/>
<pinref part="LED3" gate="G$1" pin="C"/>
<junction x="30.48" y="121.92"/>
<wire x1="30.48" y1="121.92" x2="30.48" y2="114.3" width="0.1524" layer="91"/>
<pinref part="VSS54" gate="G$1" pin="VSS"/>
<junction x="30.48" y="114.3"/>
</segment>
<segment>
<pinref part="C26" gate="G$1" pin="2"/>
<pinref part="VSS55" gate="G$1" pin="VSS"/>
<junction x="45.72" y="-134.62"/>
<wire x1="45.72" y1="-134.62" x2="45.72" y2="-129.54" width="0.1524" layer="91"/>
<pinref part="C27" gate="G$1" pin="2"/>
<wire x1="45.72" y1="-129.54" x2="53.34" y2="-129.54" width="0.1524" layer="91"/>
<junction x="53.34" y="-129.54"/>
</segment>
<segment>
<pinref part="RS485" gate="-1" pin="S"/>
<pinref part="VSS56" gate="G$1" pin="VSS"/>
<junction x="256.54" y="-43.18"/>
</segment>
<segment>
<pinref part="SPI" gate="-8" pin="S"/>
<wire x1="-104.14" y1="68.58" x2="-114.3" y2="68.58" width="0.1524" layer="91"/>
<junction x="-104.14" y="68.58"/>
<pinref part="VSS57" gate="G$1" pin="VSS"/>
<junction x="-114.3" y="68.58"/>
</segment>
<segment>
<pinref part="X2" gate="-1" pin="S"/>
<pinref part="VSS58" gate="G$1" pin="VSS"/>
<junction x="274.32" y="-7.62"/>
</segment>
<segment>
<pinref part="X2" gate="-5" pin="S"/>
<pinref part="VSS59" gate="G$1" pin="VSS"/>
<wire x1="266.7" y1="-17.78" x2="274.32" y2="-17.78" width="0.1524" layer="91"/>
<junction x="274.32" y="-17.78"/>
<junction x="266.7" y="-17.78"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<pinref part="VSS60" gate="G$1" pin="VSS"/>
<wire x1="20.32" y1="-106.68" x2="30.48" y2="-106.68" width="0.1524" layer="91"/>
<junction x="20.32" y="-106.68"/>
<junction x="30.48" y="-106.68"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="GND_S"/>
<wire x1="25.4" y1="-129.54" x2="27.94" y2="-129.54" width="0.1524" layer="91"/>
<junction x="25.4" y="-129.54"/>
<pinref part="U4" gate="G$1" pin="GND_F"/>
<junction x="27.94" y="-129.54"/>
<wire x1="27.94" y1="-129.54" x2="33.02" y2="-129.54" width="0.1524" layer="91"/>
<pinref part="VSS61" gate="G$1" pin="VSS"/>
<junction x="33.02" y="-129.54"/>
</segment>
<segment>
<pinref part="C28" gate="G$1" pin="2"/>
<pinref part="VSS62" gate="G$1" pin="VSS"/>
<junction x="17.78" y="-172.72"/>
</segment>
<segment>
<pinref part="C29" gate="G$1" pin="2"/>
<pinref part="VSS63" gate="G$1" pin="VSS"/>
<junction x="22.86" y="-172.72"/>
</segment>
<segment>
<pinref part="C30" gate="G$1" pin="2"/>
<pinref part="VSS64" gate="G$1" pin="VSS"/>
<junction x="7.62" y="-137.16"/>
</segment>
<segment>
<pinref part="C31" gate="G$1" pin="2"/>
<pinref part="VSS65" gate="G$1" pin="VSS"/>
<junction x="12.7" y="-127"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="16"/>
<wire x1="114.3" y1="-124.46" x2="132.08" y2="-124.46" width="0.1524" layer="91"/>
<junction x="114.3" y="-124.46"/>
<junction x="132.08" y="-124.46"/>
<pinref part="VSS66" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="8"/>
<wire x1="129.54" y1="137.16" x2="144.78" y2="137.16" width="0.1524" layer="91"/>
<junction x="129.54" y="137.16"/>
<junction x="144.78" y="137.16"/>
<pinref part="VSS67" gate="G$1" pin="VSS"/>
</segment>
<segment>
<pinref part="SV2" gate="1" pin="3"/>
<wire x1="-22.86" y1="-99.06" x2="-15.24" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-99.06" x2="-15.24" y2="-86.36" width="0.1524" layer="91"/>
<junction x="-22.86" y="-99.06"/>
<pinref part="VSS68" gate="G$1" pin="VSS"/>
<junction x="-15.24" y="-86.36"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="F1" gate="G$1" pin="2"/>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="-96.52" y1="134.62" x2="-99.06" y2="134.62" width="0.1524" layer="91"/>
<junction x="-96.52" y="134.62"/>
<junction x="-99.06" y="134.62"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="76.2" y1="-139.7" x2="60.96" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="P+12" gate="1" pin="+5V"/>
<junction x="60.96" y="-139.7"/>
<junction x="76.2" y="-139.7"/>
<pinref part="C26" gate="G$1" pin="1"/>
<wire x1="53.34" y1="-134.62" x2="55.88" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-134.62" x2="55.88" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-139.7" x2="60.96" y2="-139.7" width="0.1524" layer="91"/>
<junction x="53.34" y="-134.62"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="IN"/>
<wire x1="17.78" y1="-165.1" x2="20.32" y2="-165.1" width="0.1524" layer="91"/>
<junction x="17.78" y="-165.1"/>
<pinref part="U4" gate="G$1" pin="ENABLE"/>
<junction x="20.32" y="-165.1"/>
<wire x1="20.32" y1="-165.1" x2="22.86" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+32" gate="1" pin="+5V"/>
<junction x="33.02" y="-165.1"/>
<pinref part="C28" gate="G$1" pin="1"/>
<pinref part="C29" gate="G$1" pin="1"/>
<wire x1="22.86" y1="-165.1" x2="33.02" y2="-165.1" width="0.1524" layer="91"/>
<junction x="22.86" y="-165.1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AVDD"/>
<wire x1="66.04" y1="-88.9" x2="66.04" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<junction x="66.04" y="-109.22"/>
<junction x="66.04" y="-88.9"/>
<pinref part="L1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OSCI/CLKI/AN49/CVD49/RPC12/RC12"/>
<wire x1="160.02" y1="15.24" x2="223.52" y2="15.24" width="0.1524" layer="91"/>
<wire x1="223.52" y1="15.24" x2="223.52" y2="17.78" width="0.1524" layer="91"/>
<pinref part="OS1" gate="A" pin="OUT"/>
<wire x1="223.52" y1="17.78" x2="226.06" y2="17.78" width="0.1524" layer="91"/>
<junction x="160.02" y="15.24"/>
<junction x="226.06" y="17.78"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="F2" gate="G$1" pin="1"/>
<pinref part="R5" gate="G$1" pin="1"/>
<junction x="-106.68" y="109.22"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="F1" gate="G$1" pin="1"/>
<pinref part="R6" gate="G$1" pin="1"/>
<junction x="-86.36" y="134.62"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<junction x="-76.2" y="134.62"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="VIO"/>
<wire x1="203.2" y1="-58.42" x2="185.42" y2="-58.42" width="0.1524" layer="91"/>
<junction x="203.2" y="-58.42"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="185.42" y1="-58.42" x2="175.26" y2="-58.42" width="0.1524" layer="91"/>
<junction x="185.42" y="-58.42"/>
<pinref part="P+11" gate="VCC" pin="VCC"/>
<junction x="175.26" y="-58.42"/>
</segment>
<segment>
<pinref part="X1" gate="-8" pin="S"/>
<wire x1="-139.7" y1="-22.86" x2="-124.46" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-124.46" y1="-22.86" x2="-124.46" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-139.7" y="-22.86"/>
<pinref part="X1" gate="-7" pin="S"/>
<wire x1="-139.7" y1="-25.4" x2="-139.7" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-139.7" y="-25.4"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<junction x="-124.46" y="-17.78"/>
</segment>
<segment>
<pinref part="DIN" gate="-10" pin="S"/>
<wire x1="-111.76" y1="-165.1" x2="-111.76" y2="-160.02" width="0.1524" layer="91"/>
<junction x="-111.76" y="-160.02"/>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<junction x="-111.76" y="-165.1"/>
</segment>
<segment>
<pinref part="RS485" gate="-5" pin="S"/>
<pinref part="P+28" gate="VCC" pin="VCC"/>
<junction x="256.54" y="-53.34"/>
</segment>
<segment>
<pinref part="SPI" gate="-7" pin="S"/>
<wire x1="-104.14" y1="71.12" x2="-119.38" y2="71.12" width="0.1524" layer="91"/>
<junction x="-104.14" y="71.12"/>
<pinref part="P+29" gate="VCC" pin="VCC"/>
<junction x="-119.38" y="71.12"/>
</segment>
<segment>
<pinref part="X2" gate="-4" pin="S"/>
<pinref part="P+30" gate="VCC" pin="VCC"/>
<junction x="274.32" y="-15.24"/>
</segment>
<segment>
<pinref part="X2" gate="-8" pin="S"/>
<pinref part="P+31" gate="VCC" pin="VCC"/>
<junction x="274.32" y="-25.4"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="6"/>
<wire x1="129.54" y1="132.08" x2="144.78" y2="132.08" width="0.1524" layer="91"/>
<junction x="129.54" y="132.08"/>
<junction x="144.78" y="132.08"/>
<pinref part="P+33" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="IC5" gate="G$1" pin="VCCA"/>
<pinref part="P+9" gate="VCC" pin="VCC"/>
<junction x="-134.62" y="-86.36"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="VCCA"/>
<pinref part="P+10" gate="VCC" pin="VCC"/>
<junction x="-134.62" y="-104.14"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="VCCA"/>
<pinref part="C16" gate="G$1" pin="1"/>
<wire x1="-134.62" y1="-68.58" x2="-134.62" y2="-60.96" width="0.1524" layer="91"/>
<junction x="-134.62" y="-60.96"/>
<pinref part="P+22" gate="VCC" pin="VCC"/>
<junction x="-134.62" y="-68.58"/>
</segment>
<segment>
<pinref part="IC6" gate="G$1" pin="VCCA"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<junction x="-88.9" y="-30.48"/>
</segment>
<segment>
<pinref part="IC8" gate="G$1" pin="VCCA"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
<junction x="-88.9" y="-45.72"/>
</segment>
<segment>
<pinref part="IC7" gate="G$1" pin="VCCA"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="-88.9" y1="-15.24" x2="-88.9" y2="-7.62" width="0.1524" layer="91"/>
<junction x="-88.9" y="-7.62"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<junction x="-88.9" y="-15.24"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="F2" gate="G$1" pin="2"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="-116.84" y1="109.22" x2="-119.38" y2="109.22" width="0.1524" layer="91"/>
<junction x="-116.84" y="109.22"/>
<junction x="-119.38" y="109.22"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="76.2" y1="-137.16" x2="71.12" y2="-137.16" width="0.1524" layer="91"/>
<junction x="76.2" y="-137.16"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<junction x="68.58" y="-137.16"/>
<wire x1="71.12" y1="-137.16" x2="68.58" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-137.16" x2="71.12" y2="-129.54" width="0.1524" layer="91"/>
<pinref part="C27" gate="G$1" pin="1"/>
<wire x1="71.12" y1="-129.54" x2="60.96" y2="-129.54" width="0.1524" layer="91"/>
<junction x="60.96" y="-129.54"/>
<junction x="71.12" y="-137.16"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<wire x1="-48.26" y1="-180.34" x2="-48.26" y2="-182.88" width="0.1524" layer="91"/>
<junction x="-48.26" y="-180.34"/>
<junction x="-48.26" y="-182.88"/>
</segment>
<segment>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<pinref part="VSS24" gate="G$1" pin="VSS"/>
<wire x1="-71.12" y1="91.44" x2="-53.34" y2="91.44" width="0.1524" layer="91"/>
<junction x="-71.12" y="91.44"/>
<junction x="-53.34" y="91.44"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="GND"/>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<junction x="-129.54" y="25.4"/>
</segment>
<segment>
<pinref part="DO" gate="-9" pin="S"/>
<wire x1="-71.12" y1="27.94" x2="-78.74" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="-78.74" y1="27.94" x2="-78.74" y2="20.32" width="0.1524" layer="91"/>
<junction x="-78.74" y="20.32"/>
<junction x="-71.12" y="27.94"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="SV2" gate="1" pin="4"/>
<wire x1="-22.86" y1="-96.52" x2="58.42" y2="-96.52" width="0.1524" layer="91"/>
<junction x="-22.86" y="-96.52"/>
<pinref part="IC1" gate="G$1" pin="PGED1/OA1IN-/AN5/CTCMP/C1IN1-/RTCC/RPB3/RB3"/>
<wire x1="58.42" y1="-88.9" x2="58.42" y2="-96.52" width="0.1524" layer="91"/>
<junction x="58.42" y="-88.9"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="SV2" gate="1" pin="5"/>
<wire x1="-22.86" y1="-93.98" x2="55.88" y2="-93.98" width="0.1524" layer="91"/>
<junction x="-22.86" y="-93.98"/>
<pinref part="IC1" gate="G$1" pin="PGEC1/OA1IN+/AN4/C1IN1+/C1IN3-/C2IN3-/RPB2/RB2"/>
<wire x1="55.88" y1="-88.9" x2="55.88" y2="-93.98" width="0.1524" layer="91"/>
<junction x="55.88" y="-88.9"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="OS2" gate="A" pin="OUT"/>
<wire x1="226.06" y1="43.18" x2="226.06" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="SOSCI/RPC13(4)/RC13(4)"/>
<wire x1="160.02" y1="40.64" x2="218.44" y2="40.64" width="0.1524" layer="91"/>
<wire x1="218.44" y1="40.64" x2="218.44" y2="43.18" width="0.1524" layer="91"/>
<wire x1="218.44" y1="43.18" x2="226.06" y2="43.18" width="0.1524" layer="91"/>
<junction x="160.02" y="40.64"/>
<junction x="226.06" y="45.72"/>
</segment>
</net>
<net name="RE8" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="OE"/>
<wire x1="-60.96" y1="-33.02" x2="-55.88" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="IC8" gate="G$1" pin="OE"/>
<wire x1="-55.88" y1="-33.02" x2="-48.26" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-48.26" x2="-55.88" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-48.26" x2="-55.88" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="OE"/>
<wire x1="-55.88" y1="-33.02" x2="-55.88" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-17.78" x2="-60.96" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-60.96" y="-17.78"/>
<junction x="-60.96" y="-48.26"/>
<junction x="-55.88" y="-33.02"/>
<junction x="-60.96" y="-33.02"/>
<wire x1="-48.26" y1="-33.02" x2="-40.64" y2="-33.02" width="0.1524" layer="91"/>
<label x="-35.56" y="-33.02" size="1.778" layer="95"/>
<junction x="-48.26" y="-33.02"/>
<junction x="-35.56" y="-33.02"/>
<pinref part="IC9" gate="G$1" pin="OE"/>
<wire x1="-40.64" y1="-33.02" x2="-35.56" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-106.68" x2="-101.6" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-106.68" x2="-101.6" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-88.9" x2="-101.6" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-71.12" x2="-101.6" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-55.88" x2="-40.64" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-55.88" x2="-40.64" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-40.64" y="-33.02"/>
<pinref part="IC3" gate="G$1" pin="OE"/>
<wire x1="-106.68" y1="-71.12" x2="-101.6" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="OE"/>
<wire x1="-106.68" y1="-88.9" x2="-101.6" y2="-88.9" width="0.1524" layer="91"/>
<junction x="-106.68" y="-71.12"/>
<junction x="-106.68" y="-88.9"/>
<junction x="-101.6" y="-71.12"/>
<junction x="-101.6" y="-88.9"/>
<junction x="-106.68" y="-106.68"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="AN21/CVD21/RE8"/>
<wire x1="12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="91"/>
<label x="2.54" y="2.54" size="1.778" layer="95"/>
<junction x="5.08" y="2.54"/>
<junction x="12.7" y="2.54"/>
</segment>
</net>
<net name="SDO3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN9/CVD9/RPA11/USBOEN1/RA11"/>
<wire x1="12.7" y1="-5.08" x2="2.54" y2="-5.08" width="0.1524" layer="91"/>
<label x="2.54" y="-5.08" size="1.778" layer="95"/>
<junction x="2.54" y="-5.08"/>
<junction x="12.7" y="-5.08"/>
</segment>
<segment>
<pinref part="SPI" gate="-2" pin="S"/>
<wire x1="-104.14" y1="83.82" x2="-114.3" y2="83.82" width="0.1524" layer="91"/>
<junction x="-104.14" y="83.82"/>
<junction x="-114.3" y="83.82"/>
<label x="-121.92" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="RPA14" class="0">
<segment>
<label x="-45.72" y="-35.56" size="1.778" layer="95"/>
<junction x="-45.72" y="-35.56"/>
<wire x1="-53.34" y1="-35.56" x2="-45.72" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="A"/>
<wire x1="-88.9" y1="-35.56" x2="-88.9" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-38.1" x2="-53.34" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-38.1" x2="-53.34" y2="-35.56" width="0.1524" layer="91"/>
<junction x="-88.9" y="-35.56"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="AN46/CVD46/RPA14/RA14"/>
<wire x1="160.02" y1="22.86" x2="185.42" y2="22.86" width="0.1524" layer="91"/>
<label x="187.96" y="22.86" size="1.778" layer="95"/>
<junction x="185.42" y="22.86"/>
<junction x="160.02" y="22.86"/>
</segment>
</net>
<net name="RPB6" class="0">
<segment>
<wire x1="-53.34" y1="-25.4" x2="-53.34" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-12.7" x2="-35.56" y2="-12.7" width="0.1524" layer="91"/>
<label x="-35.56" y="-12.7" size="1.778" layer="95"/>
<junction x="-35.56" y="-12.7"/>
<junction x="-53.34" y="-12.7"/>
<pinref part="IC7" gate="G$1" pin="A"/>
<wire x1="-88.9" y1="-20.32" x2="-88.9" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-25.4" x2="-53.34" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-88.9" y="-20.32"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="PGEC2/RPB6/SCK2/PMPA15/RB6(5)"/>
<wire x1="160.02" y1="33.02" x2="185.42" y2="33.02" width="0.1524" layer="91"/>
<label x="187.96" y="33.02" size="1.778" layer="95"/>
<junction x="185.42" y="33.02"/>
<junction x="160.02" y="33.02"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="-137.16" y1="-50.8" x2="-137.16" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="-137.16" y1="-40.64" x2="-139.7" y2="-40.64" width="0.1524" layer="91"/>
<junction x="-139.7" y="-40.64"/>
<wire x1="-99.06" y1="-50.8" x2="-137.16" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="B"/>
<wire x1="-60.96" y1="-50.8" x2="-60.96" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-58.42" x2="-99.06" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="-58.42" x2="-99.06" y2="-50.8" width="0.1524" layer="91"/>
<junction x="-60.96" y="-50.8"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="-134.62" y1="-40.64" x2="-134.62" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="X1" gate="-2" pin="S"/>
<wire x1="-139.7" y1="-38.1" x2="-134.62" y2="-38.1" width="0.1524" layer="91"/>
<junction x="-139.7" y="-38.1"/>
<pinref part="IC6" gate="G$1" pin="B"/>
<wire x1="-60.96" y1="-35.56" x2="-60.96" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-40.64" x2="-134.62" y2="-40.64" width="0.1524" layer="91"/>
<junction x="-60.96" y="-35.56"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="-109.22" y1="-22.86" x2="-109.22" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="-35.56" x2="-139.7" y2="-35.56" width="0.1524" layer="91"/>
<junction x="-139.7" y="-35.56"/>
<pinref part="IC7" gate="G$1" pin="B"/>
<wire x1="-60.96" y1="-20.32" x2="-60.96" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-22.86" x2="-109.22" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-60.96" y="-20.32"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-154.94" y1="-76.2" x2="-154.94" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="X1" gate="-4" pin="S"/>
<wire x1="-154.94" y1="-33.02" x2="-139.7" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-139.7" y="-33.02"/>
<pinref part="IC3" gate="G$1" pin="B"/>
<wire x1="-106.68" y1="-73.66" x2="-106.68" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-76.2" x2="-154.94" y2="-76.2" width="0.1524" layer="91"/>
<junction x="-106.68" y="-73.66"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="-157.48" y1="-96.52" x2="-157.48" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="X1" gate="-5" pin="S"/>
<wire x1="-157.48" y1="-30.48" x2="-139.7" y2="-30.48" width="0.1524" layer="91"/>
<junction x="-139.7" y="-30.48"/>
<pinref part="IC5" gate="G$1" pin="B"/>
<wire x1="-106.68" y1="-91.44" x2="-106.68" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-96.52" x2="-157.48" y2="-96.52" width="0.1524" layer="91"/>
<junction x="-106.68" y="-91.44"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<wire x1="-160.02" y1="-114.3" x2="-160.02" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="X1" gate="-6" pin="S"/>
<wire x1="-160.02" y1="-27.94" x2="-139.7" y2="-27.94" width="0.1524" layer="91"/>
<junction x="-139.7" y="-27.94"/>
<pinref part="IC9" gate="G$1" pin="B"/>
<wire x1="-106.68" y1="-109.22" x2="-106.68" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-114.3" x2="-160.02" y2="-114.3" width="0.1524" layer="91"/>
<junction x="-106.68" y="-109.22"/>
</segment>
</net>
<net name="+24V" class="2">
<segment>
<pinref part="J1" gate="G$1" pin="14"/>
<wire x1="76.2" y1="-167.64" x2="63.5" y2="-167.64" width="0.1524" layer="91"/>
<pinref part="P+13" gate="1" pin="+24V"/>
<junction x="63.5" y="-167.64"/>
<junction x="76.2" y="-167.64"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VPWRB@1"/>
<pinref part="U2" gate="G$1" pin="VPWRB"/>
<wire x1="193.04" y1="-137.16" x2="193.04" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-134.62" x2="187.96" y2="-134.62" width="0.1524" layer="91"/>
<junction x="193.04" y="-134.62"/>
<junction x="193.04" y="-137.16"/>
<pinref part="P+14" gate="1" pin="+24V"/>
<junction x="187.96" y="-134.62"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VPWRA@2"/>
<pinref part="U2" gate="G$1" pin="VPWRA"/>
<wire x1="193.04" y1="-106.68" x2="193.04" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-104.14" x2="193.04" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-104.14" x2="193.04" y2="-104.14" width="0.1524" layer="91"/>
<junction x="193.04" y="-101.6"/>
<pinref part="U2" gate="G$1" pin="VPWRA@1"/>
<junction x="193.04" y="-104.14"/>
<junction x="193.04" y="-106.68"/>
<pinref part="P+15" gate="1" pin="+24V"/>
<junction x="185.42" y="-104.14"/>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="193.04" y1="-106.68" x2="172.72" y2="-106.68" width="0.1524" layer="91"/>
<junction x="172.72" y="-106.68"/>
<pinref part="C20" gate="G$1" pin="1"/>
<wire x1="172.72" y1="-106.68" x2="172.72" y2="-114.3" width="0.1524" layer="91"/>
<junction x="172.72" y="-114.3"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VPWRA@3"/>
<pinref part="U2" gate="G$1" pin="VPWRA@4"/>
<wire x1="233.68" y1="-106.68" x2="233.68" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-104.14" x2="238.76" y2="-104.14" width="0.1524" layer="91"/>
<junction x="233.68" y="-104.14"/>
<junction x="233.68" y="-106.68"/>
<pinref part="P+16" gate="1" pin="+24V"/>
<junction x="238.76" y="-104.14"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="248.92" y1="-106.68" x2="233.68" y2="-106.68" width="0.1524" layer="91"/>
<junction x="248.92" y="-106.68"/>
<pinref part="C21" gate="G$1" pin="1"/>
<wire x1="248.92" y1="-114.3" x2="248.92" y2="-106.68" width="0.1524" layer="91"/>
<junction x="248.92" y="-114.3"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VPWRB@2"/>
<pinref part="U2" gate="G$1" pin="VPWRB@4"/>
<wire x1="233.68" y1="-139.7" x2="233.68" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-137.16" x2="233.68" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-134.62" x2="243.84" y2="-134.62" width="0.1524" layer="91"/>
<junction x="233.68" y="-134.62"/>
<pinref part="U2" gate="G$1" pin="VPWRB@3"/>
<junction x="233.68" y="-137.16"/>
<junction x="233.68" y="-139.7"/>
<pinref part="P+17" gate="1" pin="+24V"/>
<junction x="243.84" y="-134.62"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VPWRA@2"/>
<pinref part="U1" gate="G$1" pin="VPWRA"/>
<wire x1="208.28" y1="116.84" x2="208.28" y2="119.38" width="0.1524" layer="91"/>
<wire x1="208.28" y1="119.38" x2="208.28" y2="121.92" width="0.1524" layer="91"/>
<wire x1="208.28" y1="119.38" x2="200.66" y2="119.38" width="0.1524" layer="91"/>
<pinref part="P+18" gate="1" pin="+24V"/>
<junction x="208.28" y="121.92"/>
<pinref part="U1" gate="G$1" pin="VPWRA@1"/>
<junction x="208.28" y="119.38"/>
<junction x="208.28" y="116.84"/>
<junction x="200.66" y="119.38"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VPWRB@1"/>
<pinref part="U1" gate="G$1" pin="VPWRB"/>
<wire x1="208.28" y1="86.36" x2="208.28" y2="88.9" width="0.1524" layer="91"/>
<wire x1="208.28" y1="88.9" x2="200.66" y2="88.9" width="0.1524" layer="91"/>
<pinref part="P+19" gate="1" pin="+24V"/>
<junction x="200.66" y="88.9"/>
<junction x="208.28" y="88.9"/>
<junction x="208.28" y="86.36"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VPWRB@2"/>
<pinref part="U1" gate="G$1" pin="VPWRB@4"/>
<wire x1="248.92" y1="83.82" x2="248.92" y2="86.36" width="0.1524" layer="91"/>
<wire x1="248.92" y1="86.36" x2="248.92" y2="88.9" width="0.1524" layer="91"/>
<wire x1="248.92" y1="86.36" x2="259.08" y2="86.36" width="0.1524" layer="91"/>
<pinref part="P+20" gate="1" pin="+24V"/>
<junction x="248.92" y="88.9"/>
<pinref part="U1" gate="G$1" pin="VPWRB@3"/>
<junction x="248.92" y="86.36"/>
<junction x="248.92" y="83.82"/>
<junction x="259.08" y="86.36"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VPWRA@3"/>
<pinref part="U1" gate="G$1" pin="VPWRA@4"/>
<wire x1="248.92" y1="116.84" x2="248.92" y2="119.38" width="0.1524" layer="91"/>
<wire x1="248.92" y1="119.38" x2="259.08" y2="119.38" width="0.1524" layer="91"/>
<pinref part="P+21" gate="1" pin="+24V"/>
<junction x="248.92" y="116.84"/>
<junction x="248.92" y="119.38"/>
<junction x="259.08" y="119.38"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="2"/>
<pinref part="P+23" gate="1" pin="+24V"/>
<junction x="175.26" y="83.82"/>
</segment>
<segment>
<pinref part="C23" gate="G$1" pin="1"/>
<pinref part="P+24" gate="1" pin="+24V"/>
<junction x="274.32" y="121.92"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="2"/>
<pinref part="P+26" gate="1" pin="+24V"/>
<junction x="264.16" y="-101.6"/>
</segment>
<segment>
<pinref part="P+25" gate="1" pin="+24V"/>
<junction x="154.94" y="-139.7"/>
<pinref part="C24" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="DO" gate="-10" pin="S"/>
<junction x="-71.12" y="25.4"/>
<pinref part="P+4" gate="1" pin="+24V"/>
<wire x1="-83.82" y1="25.4" x2="-71.12" y2="25.4" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="2"/>
<junction x="-83.82" y="25.4"/>
</segment>
</net>
<net name="RPB1" class="0">
<segment>
<junction x="-91.44" y="-73.66"/>
<label x="-91.44" y="-73.66" size="1.778" layer="95"/>
<wire x1="-96.52" y1="-73.66" x2="-91.44" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="A"/>
<wire x1="-134.62" y1="-73.66" x2="-134.62" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-134.62" y1="-81.28" x2="-96.52" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="-81.28" x2="-96.52" y2="-73.66" width="0.1524" layer="91"/>
<junction x="-134.62" y="-73.66"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="PGEC3/OA1OUT/AN3/C1IN4-/C4IN2-/RPB1/CTED1/RB1"/>
<wire x1="12.7" y1="-15.24" x2="2.54" y2="-15.24" width="0.1524" layer="91"/>
<label x="2.54" y="-15.24" size="1.778" layer="95"/>
<junction x="2.54" y="-15.24"/>
<junction x="12.7" y="-15.24"/>
</segment>
</net>
<net name="RPC1" class="0">
<segment>
<junction x="-91.44" y="-91.44"/>
<label x="-91.44" y="-91.44" size="1.778" layer="95"/>
<wire x1="-99.06" y1="-91.44" x2="-91.44" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="A"/>
<wire x1="-134.62" y1="-91.44" x2="-134.62" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="-134.62" y1="-93.98" x2="-99.06" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="-93.98" x2="-99.06" y2="-91.44" width="0.1524" layer="91"/>
<junction x="-134.62" y="-91.44"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="OA3IN-/AN7/CVD7/C3IN1-/C4IN1-/RPC1/RC1"/>
<wire x1="73.66" y1="-88.9" x2="73.66" y2="-121.92" width="0.1524" layer="91"/>
<label x="73.66" y="-121.92" size="1.778" layer="95"/>
<junction x="73.66" y="-88.9"/>
<junction x="73.66" y="-121.92"/>
</segment>
</net>
<net name="RPC10" class="0">
<segment>
<junction x="-91.44" y="-109.22"/>
<label x="-91.44" y="-109.22" size="1.778" layer="95"/>
<wire x1="-96.52" y1="-109.22" x2="-91.44" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="A"/>
<wire x1="-134.62" y1="-109.22" x2="-134.62" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="-134.62" y1="-116.84" x2="-96.52" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="-116.84" x2="-96.52" y2="-109.22" width="0.1524" layer="91"/>
<junction x="-134.62" y="-109.22"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="DAC2/AN48/CVD48/RPC10/PMPA14/PSPCS/RC10"/>
<wire x1="160.02" y1="35.56" x2="185.42" y2="35.56" width="0.1524" layer="91"/>
<label x="187.96" y="35.56" size="1.778" layer="95"/>
<junction x="160.02" y="35.56"/>
<junction x="185.42" y="35.56"/>
</segment>
</net>
<net name="RPB7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="CH_L"/>
<wire x1="-25.4" y1="-124.46" x2="-15.24" y2="-124.46" width="0.1524" layer="91"/>
<junction x="-25.4" y="-124.46"/>
<junction x="-15.24" y="-124.46"/>
<label x="-15.24" y="-124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="OA5OUT/AN25/CVD25/C5IN4-/RPB7/SCK1/INT0/RB7"/>
<wire x1="160.02" y1="38.1" x2="185.42" y2="38.1" width="0.1524" layer="91"/>
<junction x="160.02" y="38.1"/>
<junction x="185.42" y="38.1"/>
<label x="187.96" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="RD8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="EN_L"/>
<wire x1="-25.4" y1="-119.38" x2="-15.24" y2="-119.38" width="0.1524" layer="91"/>
<junction x="-25.4" y="-119.38"/>
<junction x="-15.24" y="-119.38"/>
<label x="-15.24" y="-119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="RD8"/>
<wire x1="160.02" y1="27.94" x2="185.42" y2="27.94" width="0.1524" layer="91"/>
<junction x="160.02" y="27.94"/>
<junction x="185.42" y="27.94"/>
<label x="187.96" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="DIN" gate="-1" pin="S"/>
<wire x1="-111.76" y1="-137.16" x2="-91.44" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="-137.16" x2="-91.44" y2="-134.62" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN1"/>
<wire x1="-91.44" y1="-134.62" x2="-73.66" y2="-134.62" width="0.1524" layer="91"/>
<junction x="-111.76" y="-137.16"/>
<junction x="-73.66" y="-134.62"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="DIN" gate="-2" pin="S"/>
<pinref part="U$1" gate="G$1" pin="IN2"/>
<wire x1="-111.76" y1="-139.7" x2="-73.66" y2="-139.7" width="0.1524" layer="91"/>
<junction x="-111.76" y="-139.7"/>
<junction x="-73.66" y="-139.7"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="DIN" gate="-3" pin="S"/>
<wire x1="-111.76" y1="-142.24" x2="-73.66" y2="-142.24" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN3"/>
<wire x1="-73.66" y1="-142.24" x2="-73.66" y2="-144.78" width="0.1524" layer="91"/>
<junction x="-111.76" y="-142.24"/>
<junction x="-73.66" y="-144.78"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="DIN" gate="-4" pin="S"/>
<wire x1="-111.76" y1="-144.78" x2="-76.2" y2="-144.78" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN4"/>
<wire x1="-76.2" y1="-144.78" x2="-76.2" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="-149.86" x2="-73.66" y2="-149.86" width="0.1524" layer="91"/>
<junction x="-111.76" y="-144.78"/>
<junction x="-73.66" y="-149.86"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="DIN" gate="-5" pin="S"/>
<wire x1="-111.76" y1="-147.32" x2="-78.74" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-147.32" x2="-78.74" y2="-154.94" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN5"/>
<wire x1="-78.74" y1="-154.94" x2="-73.66" y2="-154.94" width="0.1524" layer="91"/>
<junction x="-111.76" y="-147.32"/>
<junction x="-73.66" y="-154.94"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="DIN" gate="-6" pin="S"/>
<wire x1="-111.76" y1="-149.86" x2="-81.28" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-149.86" x2="-81.28" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-160.02" x2="-73.66" y2="-160.02" width="0.1524" layer="91"/>
<junction x="-111.76" y="-149.86"/>
<pinref part="U$1" gate="G$1" pin="IN6"/>
<junction x="-73.66" y="-160.02"/>
<wire x1="-73.66" y1="-160.02" x2="-71.12" y2="-160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="DIN" gate="-7" pin="S"/>
<wire x1="-111.76" y1="-152.4" x2="-83.82" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-152.4" x2="-83.82" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN7"/>
<wire x1="-83.82" y1="-165.1" x2="-73.66" y2="-165.1" width="0.1524" layer="91"/>
<junction x="-111.76" y="-152.4"/>
<junction x="-73.66" y="-165.1"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="DIN" gate="-8" pin="S"/>
<wire x1="-111.76" y1="-154.94" x2="-86.36" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="-154.94" x2="-86.36" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN8"/>
<wire x1="-86.36" y1="-170.18" x2="-73.66" y2="-170.18" width="0.1524" layer="91"/>
<junction x="-111.76" y="-154.94"/>
<junction x="-73.66" y="-170.18"/>
</segment>
</net>
<net name="U1O1" class="1">
<segment>
<pinref part="J1" gate="G$1" pin="12"/>
<wire x1="76.2" y1="-162.56" x2="53.34" y2="-162.56" width="0.1524" layer="91"/>
<junction x="76.2" y="-162.56"/>
<junction x="53.34" y="-162.56"/>
<label x="53.34" y="-162.56" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="OUT1@2"/>
<pinref part="U1" gate="G$1" pin="OUT1"/>
<wire x1="208.28" y1="109.22" x2="208.28" y2="111.76" width="0.1524" layer="91"/>
<wire x1="208.28" y1="111.76" x2="208.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="208.28" y1="111.76" x2="203.2" y2="111.76" width="0.1524" layer="91"/>
<junction x="208.28" y="114.3"/>
<pinref part="U1" gate="G$1" pin="OUT1@1"/>
<junction x="208.28" y="111.76"/>
<junction x="208.28" y="109.22"/>
<junction x="203.2" y="111.76"/>
<label x="195.58" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="U1O2" class="1">
<segment>
<pinref part="J1" gate="G$1" pin="11"/>
<wire x1="76.2" y1="-160.02" x2="53.34" y2="-160.02" width="0.1524" layer="91"/>
<junction x="76.2" y="-160.02"/>
<junction x="53.34" y="-160.02"/>
<label x="53.34" y="-160.02" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="OUT2"/>
<pinref part="U1" gate="G$1" pin="OUT2@2"/>
<wire x1="248.92" y1="109.22" x2="248.92" y2="111.76" width="0.1524" layer="91"/>
<wire x1="248.92" y1="111.76" x2="248.92" y2="114.3" width="0.1524" layer="91"/>
<wire x1="248.92" y1="111.76" x2="256.54" y2="111.76" width="0.1524" layer="91"/>
<junction x="248.92" y="114.3"/>
<pinref part="U1" gate="G$1" pin="OUT2@1"/>
<junction x="248.92" y="111.76"/>
<junction x="248.92" y="109.22"/>
<junction x="256.54" y="111.76"/>
<label x="259.08" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="U1O3" class="1">
<segment>
<pinref part="J1" gate="G$1" pin="10"/>
<wire x1="76.2" y1="-157.48" x2="53.34" y2="-157.48" width="0.1524" layer="91"/>
<junction x="76.2" y="-157.48"/>
<junction x="53.34" y="-157.48"/>
<label x="53.34" y="-157.48" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="OUT3"/>
<pinref part="U1" gate="G$1" pin="OUT3@2"/>
<wire x1="248.92" y1="91.44" x2="248.92" y2="93.98" width="0.1524" layer="91"/>
<wire x1="248.92" y1="93.98" x2="248.92" y2="96.52" width="0.1524" layer="91"/>
<wire x1="248.92" y1="93.98" x2="259.08" y2="93.98" width="0.1524" layer="91"/>
<junction x="248.92" y="96.52"/>
<pinref part="U1" gate="G$1" pin="OUT3@1"/>
<junction x="248.92" y="93.98"/>
<junction x="248.92" y="91.44"/>
<junction x="259.08" y="93.98"/>
<label x="261.62" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="U1O4" class="1">
<segment>
<pinref part="J1" gate="G$1" pin="9"/>
<wire x1="76.2" y1="-154.94" x2="53.34" y2="-154.94" width="0.1524" layer="91"/>
<junction x="76.2" y="-154.94"/>
<junction x="53.34" y="-154.94"/>
<label x="53.34" y="-154.94" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="OUT4@2"/>
<pinref part="U1" gate="G$1" pin="OUT4"/>
<wire x1="208.28" y1="91.44" x2="208.28" y2="93.98" width="0.1524" layer="91"/>
<wire x1="208.28" y1="93.98" x2="208.28" y2="96.52" width="0.1524" layer="91"/>
<wire x1="208.28" y1="93.98" x2="203.2" y2="93.98" width="0.1524" layer="91"/>
<junction x="208.28" y="96.52"/>
<pinref part="U1" gate="G$1" pin="OUT4@1"/>
<junction x="208.28" y="93.98"/>
<junction x="208.28" y="91.44"/>
<junction x="203.2" y="93.98"/>
<label x="195.58" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="U201" class="1">
<segment>
<pinref part="U2" gate="G$1" pin="OUT1@2"/>
<pinref part="U2" gate="G$1" pin="OUT1"/>
<wire x1="193.04" y1="-114.3" x2="193.04" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-111.76" x2="193.04" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-111.76" x2="187.96" y2="-111.76" width="0.1524" layer="91"/>
<junction x="187.96" y="-111.76"/>
<junction x="193.04" y="-109.22"/>
<pinref part="U2" gate="G$1" pin="OUT1@1"/>
<junction x="193.04" y="-111.76"/>
<junction x="193.04" y="-114.3"/>
<label x="187.96" y="-111.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="8"/>
<wire x1="76.2" y1="-152.4" x2="53.34" y2="-152.4" width="0.1524" layer="91"/>
<junction x="76.2" y="-152.4"/>
<junction x="53.34" y="-152.4"/>
<label x="48.26" y="-152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="U202" class="1">
<segment>
<pinref part="U2" gate="G$1" pin="OUT2"/>
<pinref part="U2" gate="G$1" pin="OUT2@2"/>
<wire x1="233.68" y1="-114.3" x2="233.68" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-111.76" x2="233.68" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-111.76" x2="238.76" y2="-111.76" width="0.1524" layer="91"/>
<junction x="233.68" y="-114.3"/>
<pinref part="U2" gate="G$1" pin="OUT2@1"/>
<junction x="233.68" y="-111.76"/>
<junction x="233.68" y="-109.22"/>
<junction x="238.76" y="-111.76"/>
<label x="238.76" y="-111.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="7"/>
<wire x1="76.2" y1="-149.86" x2="53.34" y2="-149.86" width="0.1524" layer="91"/>
<junction x="76.2" y="-149.86"/>
<junction x="53.34" y="-149.86"/>
<label x="48.26" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="U204" class="1">
<segment>
<pinref part="U2" gate="G$1" pin="OUT4@2"/>
<pinref part="U2" gate="G$1" pin="OUT4"/>
<wire x1="193.04" y1="-132.08" x2="193.04" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-129.54" x2="193.04" y2="-127" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-129.54" x2="187.96" y2="-129.54" width="0.1524" layer="91"/>
<junction x="187.96" y="-129.54"/>
<junction x="193.04" y="-127"/>
<pinref part="U2" gate="G$1" pin="OUT4@1"/>
<junction x="193.04" y="-129.54"/>
<junction x="193.04" y="-132.08"/>
<label x="187.96" y="-129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="76.2" y1="-144.78" x2="53.34" y2="-144.78" width="0.1524" layer="91"/>
<junction x="76.2" y="-144.78"/>
<junction x="53.34" y="-144.78"/>
<label x="48.26" y="-144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="U203" class="1">
<segment>
<pinref part="U2" gate="G$1" pin="OUT3"/>
<pinref part="U2" gate="G$1" pin="OUT3@2"/>
<wire x1="233.68" y1="-132.08" x2="233.68" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-129.54" x2="233.68" y2="-127" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-129.54" x2="241.3" y2="-129.54" width="0.1524" layer="91"/>
<junction x="233.68" y="-127"/>
<pinref part="U2" gate="G$1" pin="OUT3@1"/>
<junction x="233.68" y="-129.54"/>
<junction x="233.68" y="-132.08"/>
<junction x="241.3" y="-129.54"/>
<label x="241.3" y="-129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="76.2" y1="-147.32" x2="53.34" y2="-147.32" width="0.1524" layer="91"/>
<junction x="76.2" y="-147.32"/>
<junction x="53.34" y="-147.32"/>
<label x="48.26" y="-147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM1H" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPB14/PWM1H/VBUSON1/PMPD6/RB14"/>
<wire x1="12.7" y1="38.1" x2="2.54" y2="38.1" width="0.1524" layer="91"/>
<junction x="12.7" y="38.1"/>
<junction x="2.54" y="38.1"/>
<label x="2.54" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IN1"/>
<wire x1="248.92" y1="127" x2="259.08" y2="127" width="0.1524" layer="91"/>
<junction x="248.92" y="127"/>
<junction x="259.08" y="127"/>
<label x="261.62" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM1L" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPB15/PWM7H/PWM1L/PMPD7/RB15"/>
<wire x1="12.7" y1="35.56" x2="2.54" y2="35.56" width="0.1524" layer="91"/>
<junction x="12.7" y="35.56"/>
<junction x="2.54" y="35.56"/>
<label x="2.54" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IN2"/>
<wire x1="248.92" y1="124.46" x2="259.08" y2="124.46" width="0.1524" layer="91"/>
<junction x="248.92" y="124.46"/>
<junction x="259.08" y="124.46"/>
<label x="261.62" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM2H" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPB12/PWM2H/PMPD2/RB12"/>
<wire x1="60.96" y1="104.14" x2="60.96" y2="111.76" width="0.1524" layer="91"/>
<junction x="60.96" y="104.14"/>
<junction x="60.96" y="111.76"/>
<label x="60.96" y="114.3" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IN3"/>
<wire x1="208.28" y1="78.74" x2="198.12" y2="78.74" width="0.1524" layer="91"/>
<junction x="208.28" y="78.74"/>
<junction x="198.12" y="78.74"/>
<label x="187.96" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM2L" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPB13/PWM8H/PWM2L/CTPLS/PMPD3/RB13"/>
<wire x1="58.42" y1="104.14" x2="58.42" y2="111.76" width="0.1524" layer="91"/>
<junction x="58.42" y="104.14"/>
<junction x="58.42" y="111.76"/>
<label x="58.42" y="114.3" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IN4"/>
<wire x1="208.28" y1="81.28" x2="198.12" y2="81.28" width="0.1524" layer="91"/>
<junction x="208.28" y="81.28"/>
<junction x="198.12" y="81.28"/>
<label x="187.96" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="S1" gate="G$1" pin="+"/>
<pinref part="R10" gate="G$1" pin="2"/>
<junction x="-53.34" y="5.08"/>
</segment>
</net>
<net name="RPG9" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<junction x="-43.18" y="5.08"/>
<label x="-43.18" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="AN16/CVD16/RPG9/PMPA2/RG9"/>
<wire x1="12.7" y1="12.7" x2="2.54" y2="12.7" width="0.1524" layer="91"/>
<junction x="12.7" y="12.7"/>
<junction x="2.54" y="12.7"/>
<label x="2.54" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM4L" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TCK/RPA7/PWM10H/PWM4L/PMPD5/RA7"/>
<wire x1="12.7" y1="40.64" x2="2.54" y2="40.64" width="0.1524" layer="91"/>
<junction x="12.7" y="40.64"/>
<junction x="2.54" y="40.64"/>
<label x="2.54" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="IN4"/>
<wire x1="193.04" y1="-142.24" x2="180.34" y2="-142.24" width="0.1524" layer="91"/>
<junction x="193.04" y="-142.24"/>
<junction x="180.34" y="-142.24"/>
<label x="167.64" y="-142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM4H" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TDO/PWM4H/PMPD4/RA10"/>
<wire x1="55.88" y1="104.14" x2="55.88" y2="111.76" width="0.1524" layer="91"/>
<junction x="55.88" y="104.14"/>
<junction x="55.88" y="111.76"/>
<label x="55.88" y="114.3" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="IN3"/>
<wire x1="193.04" y1="-144.78" x2="180.34" y2="-144.78" width="0.1524" layer="91"/>
<junction x="193.04" y="-144.78"/>
<junction x="180.34" y="-144.78"/>
<label x="167.64" y="-144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM3H" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPB10/PWM3H/PMPD0/RB10"/>
<wire x1="73.66" y1="104.14" x2="73.66" y2="111.76" width="0.1524" layer="91"/>
<junction x="73.66" y="104.14"/>
<junction x="73.66" y="111.76"/>
<label x="73.66" y="114.3" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="IN1"/>
<wire x1="233.68" y1="-96.52" x2="243.84" y2="-96.52" width="0.1524" layer="91"/>
<junction x="233.68" y="-96.52"/>
<junction x="243.84" y="-96.52"/>
<label x="246.38" y="-96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM3L" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPB11/PWM9H/PWM3L/PMPD1/RB11"/>
<wire x1="71.12" y1="104.14" x2="71.12" y2="111.76" width="0.1524" layer="91"/>
<junction x="71.12" y="104.14"/>
<junction x="71.12" y="111.76"/>
<label x="71.12" y="114.3" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="IN2"/>
<wire x1="233.68" y1="-99.06" x2="243.84" y2="-99.06" width="0.1524" layer="91"/>
<junction x="233.68" y="-99.06"/>
<junction x="243.84" y="-99.06"/>
<label x="246.38" y="-99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="RPE0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN40/CVD40/RPE0/RE0"/>
<wire x1="160.02" y1="-12.7" x2="177.8" y2="-12.7" width="0.1524" layer="91"/>
<junction x="160.02" y="-12.7"/>
<junction x="177.8" y="-12.7"/>
<label x="177.8" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="EN/!D2"/>
<wire x1="208.28" y1="124.46" x2="170.18" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="EN/!D4"/>
<wire x1="248.92" y1="81.28" x2="276.86" y2="81.28" width="0.1524" layer="91"/>
<wire x1="276.86" y1="81.28" x2="276.86" y2="142.24" width="0.1524" layer="91"/>
<wire x1="276.86" y1="142.24" x2="170.18" y2="142.24" width="0.1524" layer="91"/>
<wire x1="170.18" y1="142.24" x2="170.18" y2="124.46" width="0.1524" layer="91"/>
<junction x="208.28" y="124.46"/>
<junction x="248.92" y="81.28"/>
<junction x="170.18" y="124.46"/>
<label x="170.18" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="RPE1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN41/CVD41/RPE1/RE1"/>
<wire x1="160.02" y1="-10.16" x2="177.8" y2="-10.16" width="0.1524" layer="91"/>
<junction x="160.02" y="-10.16"/>
<junction x="177.8" y="-10.16"/>
<label x="177.8" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="EN/!D4"/>
<wire x1="233.68" y1="-142.24" x2="269.24" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-142.24" x2="269.24" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-83.82" x2="157.48" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-83.82" x2="157.48" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="EN/!D2"/>
<wire x1="193.04" y1="-99.06" x2="157.48" y2="-99.06" width="0.1524" layer="91"/>
<junction x="193.04" y="-99.06"/>
<junction x="233.68" y="-142.24"/>
<junction x="157.48" y="-99.06"/>
<label x="147.32" y="-99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="U1FS" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN12/CVD12/C2IN2-/C5IN2-/FLT5/PMPA11/RE12(6)"/>
<wire x1="93.98" y1="-88.9" x2="93.98" y2="-93.98" width="0.1524" layer="91"/>
<junction x="93.98" y="-88.9"/>
<junction x="93.98" y="-93.98"/>
<label x="93.98" y="-96.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="!SFB"/>
<wire x1="208.28" y1="76.2" x2="198.12" y2="76.2" width="0.1524" layer="91"/>
<junction x="208.28" y="76.2"/>
<junction x="198.12" y="76.2"/>
<label x="187.96" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="!SFA"/>
<wire x1="248.92" y1="129.54" x2="259.08" y2="129.54" width="0.1524" layer="91"/>
<junction x="248.92" y="129.54"/>
<junction x="259.08" y="129.54"/>
<label x="261.62" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="U2FS" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN13/CVD13/C3IN2-/FLT6/PMPA10/RE13(5)"/>
<wire x1="96.52" y1="-88.9" x2="96.52" y2="-93.98" width="0.1524" layer="91"/>
<junction x="96.52" y="-88.9"/>
<junction x="96.52" y="-93.98"/>
<label x="96.52" y="-93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="!SFB"/>
<wire x1="193.04" y1="-147.32" x2="180.34" y2="-147.32" width="0.1524" layer="91"/>
<junction x="193.04" y="-147.32"/>
<junction x="180.34" y="-147.32"/>
<label x="167.64" y="-147.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="!SFA"/>
<wire x1="233.68" y1="-93.98" x2="243.84" y2="-93.98" width="0.1524" layer="91"/>
<junction x="233.68" y="-93.98"/>
<junction x="243.84" y="-93.98"/>
<label x="246.38" y="-93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="CCPB"/>
<wire x1="208.28" y1="83.82" x2="182.88" y2="83.82" width="0.1524" layer="91"/>
<junction x="208.28" y="83.82"/>
<pinref part="C22" gate="G$1" pin="1"/>
<junction x="182.88" y="83.82"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="CCPA"/>
<wire x1="248.92" y1="121.92" x2="266.7" y2="121.92" width="0.1524" layer="91"/>
<junction x="248.92" y="121.92"/>
<pinref part="C23" gate="G$1" pin="2"/>
<junction x="266.7" y="121.92"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="CCPB"/>
<wire x1="193.04" y1="-139.7" x2="162.56" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="1"/>
<junction x="162.56" y="-139.7"/>
<junction x="193.04" y="-139.7"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="CCPA"/>
<wire x1="233.68" y1="-101.6" x2="256.54" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="C25" gate="G$1" pin="1"/>
<junction x="233.68" y="-101.6"/>
<junction x="256.54" y="-101.6"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TRD2/PMPA20/RG14"/>
<wire x1="68.58" y1="104.14" x2="68.58" y2="132.08" width="0.1524" layer="91"/>
<wire x1="68.58" y1="132.08" x2="50.8" y2="132.08" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="2"/>
<junction x="50.8" y="132.08"/>
<junction x="68.58" y="104.14"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TRD1/RPG12/PMPA21/RG12"/>
<wire x1="66.04" y1="104.14" x2="66.04" y2="129.54" width="0.1524" layer="91"/>
<wire x1="66.04" y1="129.54" x2="50.8" y2="129.54" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
<junction x="50.8" y="129.54"/>
<junction x="66.04" y="104.14"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TRD0/PMPA22/RG13"/>
<wire x1="63.5" y1="104.14" x2="63.5" y2="127" width="0.1524" layer="91"/>
<wire x1="63.5" y1="127" x2="50.8" y2="127" width="0.1524" layer="91"/>
<pinref part="R13" gate="G$1" pin="2"/>
<junction x="50.8" y="127"/>
<junction x="63.5" y="104.14"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="LED1" gate="G$1" pin="A"/>
<wire x1="38.1" y1="132.08" x2="40.64" y2="132.08" width="0.1524" layer="91"/>
<junction x="40.64" y="132.08"/>
<junction x="38.1" y="132.08"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="LED2" gate="G$1" pin="A"/>
<wire x1="38.1" y1="127" x2="40.64" y2="129.54" width="0.1524" layer="91"/>
<junction x="40.64" y="129.54"/>
<junction x="38.1" y="127"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="LED3" gate="G$1" pin="A"/>
<wire x1="38.1" y1="121.92" x2="40.64" y2="127" width="0.1524" layer="91"/>
<junction x="40.64" y="127"/>
<junction x="38.1" y="121.92"/>
</segment>
</net>
<net name="U6TX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OA5IN+/DAC1/AN24/CVD24/C5IN1+/C5IN3-/RPA4/T1CK/T1G/_RA4"/>
<wire x1="160.02" y1="-15.24" x2="177.8" y2="-15.24" width="0.1524" layer="91"/>
<junction x="160.02" y="-15.24"/>
<junction x="177.8" y="-15.24"/>
<label x="177.8" y="-15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="TXD"/>
<wire x1="203.2" y1="-60.96" x2="195.58" y2="-60.96" width="0.1524" layer="91"/>
<junction x="203.2" y="-60.96"/>
<junction x="195.58" y="-60.96"/>
<label x="190.5" y="-63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="U6RX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN47/CVD47/RPA15/RA15"/>
<wire x1="160.02" y1="25.4" x2="185.42" y2="25.4" width="0.1524" layer="91"/>
<junction x="160.02" y="25.4"/>
<junction x="185.42" y="25.4"/>
<label x="185.42" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="RXD"/>
<wire x1="203.2" y1="-68.58" x2="195.58" y2="-68.58" width="0.1524" layer="91"/>
<junction x="203.2" y="-68.58"/>
<junction x="195.58" y="-68.58"/>
<label x="190.5" y="-71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="DERE" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="!RE"/>
<pinref part="IC2" gate="G$1" pin="DE"/>
<wire x1="203.2" y1="-66.04" x2="203.2" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-63.5" x2="195.58" y2="-63.5" width="0.1524" layer="91"/>
<junction x="195.58" y="-63.5"/>
<junction x="203.2" y="-63.5"/>
<junction x="203.2" y="-66.04"/>
<label x="190.5" y="-66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="SOSCO/RPB8(4)/RB8(4)"/>
<wire x1="160.02" y1="43.18" x2="185.42" y2="43.18" width="0.1524" layer="91"/>
<junction x="160.02" y="43.18"/>
<junction x="185.42" y="43.18"/>
<label x="187.96" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN45/CVD45/RF5"/>
<wire x1="160.02" y1="10.16" x2="182.88" y2="10.16" width="0.1524" layer="91"/>
<junction x="160.02" y="10.16"/>
<junction x="182.88" y="10.16"/>
<label x="182.88" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT5"/>
<wire x1="-25.4" y1="-154.94" x2="-5.08" y2="-154.94" width="0.1524" layer="91"/>
<junction x="-25.4" y="-154.94"/>
<junction x="-5.08" y="-154.94"/>
<label x="0" y="-154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN38/CVD38/RD14"/>
<wire x1="109.22" y1="-88.9" x2="109.22" y2="-101.6" width="0.1524" layer="91"/>
<junction x="109.22" y="-88.9"/>
<junction x="109.22" y="-101.6"/>
<label x="109.22" y="-101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT1"/>
<wire x1="-25.4" y1="-134.62" x2="-5.08" y2="-134.62" width="0.1524" layer="91"/>
<junction x="-25.4" y="-134.62"/>
<junction x="-5.08" y="-134.62"/>
<label x="0" y="-134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN39/CVD39/RD15"/>
<wire x1="111.76" y1="-88.9" x2="111.76" y2="-99.06" width="0.1524" layer="91"/>
<junction x="111.76" y="-88.9"/>
<junction x="111.76" y="-99.06"/>
<label x="111.76" y="-99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT2"/>
<wire x1="-25.4" y1="-139.7" x2="-5.08" y2="-139.7" width="0.1524" layer="91"/>
<junction x="-25.4" y="-139.7"/>
<junction x="-5.08" y="-139.7"/>
<label x="0" y="-139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TDI/DAC3/AN26/CVD26/RPA8/PMPA9/RA8(6)"/>
<wire x1="114.3" y1="-88.9" x2="114.3" y2="-96.52" width="0.1524" layer="91"/>
<junction x="114.3" y="-88.9"/>
<junction x="114.3" y="-96.52"/>
<label x="114.3" y="-96.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT3"/>
<wire x1="-25.4" y1="-144.78" x2="-5.08" y2="-144.78" width="0.1524" layer="91"/>
<junction x="-25.4" y="-144.78"/>
<junction x="-5.08" y="-144.78"/>
<label x="0" y="-144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="FLT15/RPB4/PMPA8/RB4(5)"/>
<wire x1="116.84" y1="-88.9" x2="116.84" y2="-93.98" width="0.1524" layer="91"/>
<junction x="116.84" y="-88.9"/>
<junction x="116.84" y="-93.98"/>
<label x="116.84" y="-93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT4"/>
<wire x1="-25.4" y1="-149.86" x2="-5.08" y2="-149.86" width="0.1524" layer="91"/>
<junction x="-25.4" y="-149.86"/>
<junction x="-5.08" y="-149.86"/>
<label x="0" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="U3TX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPC6/USBID2/PMPA16/RC6"/>
<wire x1="114.3" y1="104.14" x2="114.3" y2="119.38" width="0.1524" layer="91"/>
<junction x="114.3" y="104.14"/>
<junction x="114.3" y="119.38"/>
<label x="114.3" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="T1IN"/>
<wire x1="203.2" y1="-25.4" x2="190.5" y2="-25.4" width="0.1524" layer="91"/>
<junction x="203.2" y="-25.4"/>
<junction x="190.5" y="-25.4"/>
<label x="182.88" y="-25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="U3RX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPC7/PMPA17/RC7"/>
<wire x1="111.76" y1="104.14" x2="111.76" y2="124.46" width="0.1524" layer="91"/>
<junction x="111.76" y="104.14"/>
<junction x="111.76" y="124.46"/>
<label x="111.76" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="R1OUT"/>
<wire x1="203.2" y1="-30.48" x2="190.5" y2="-30.48" width="0.1524" layer="91"/>
<junction x="203.2" y="-30.48"/>
<junction x="190.5" y="-30.48"/>
<label x="182.88" y="-30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="B"/>
<wire x1="233.68" y1="-58.42" x2="243.84" y2="-58.42" width="0.1524" layer="91"/>
<junction x="233.68" y="-58.42"/>
<junction x="256.54" y="-58.42"/>
<pinref part="TP5" gate="G$1" pin="TP"/>
<wire x1="243.84" y1="-58.42" x2="256.54" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-58.42" x2="243.84" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="RS485" gate="-2" pin="S"/>
<wire x1="243.84" y1="-45.72" x2="256.54" y2="-45.72" width="0.1524" layer="91"/>
<junction x="243.84" y="-58.42"/>
<junction x="256.54" y="-45.72"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="266.7" y1="-55.88" x2="256.54" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-55.88" x2="256.54" y2="-58.42" width="0.1524" layer="91"/>
<junction x="266.7" y="-55.88"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="A"/>
<wire x1="233.68" y1="-66.04" x2="246.38" y2="-66.04" width="0.1524" layer="91"/>
<junction x="233.68" y="-66.04"/>
<junction x="256.54" y="-66.04"/>
<pinref part="TP6" gate="G$1" pin="TP"/>
<wire x1="246.38" y1="-66.04" x2="256.54" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-66.04" x2="246.38" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="RS485" gate="-3" pin="S"/>
<wire x1="246.38" y1="-48.26" x2="256.54" y2="-48.26" width="0.1524" layer="91"/>
<junction x="246.38" y="-66.04"/>
<junction x="256.54" y="-48.26"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="266.7" y1="-66.04" x2="266.7" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="266.7" y1="-68.58" x2="256.54" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-68.58" x2="256.54" y2="-66.04" width="0.1524" layer="91"/>
<junction x="266.7" y="-66.04"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="V-/2"/>
<pinref part="IC4" gate="G$1" pin="V-/1"/>
<wire x1="231.14" y1="-10.16" x2="231.14" y2="-7.62" width="0.1524" layer="91"/>
<junction x="231.14" y="-10.16"/>
<junction x="231.14" y="-7.62"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="C2-/2"/>
<pinref part="IC4" gate="G$1" pin="C2-/1"/>
<wire x1="205.74" y1="-20.32" x2="205.74" y2="-17.78" width="0.1524" layer="91"/>
<junction x="205.74" y="-20.32"/>
<junction x="205.74" y="-17.78"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="C2+/2"/>
<pinref part="IC4" gate="G$1" pin="C2+/1"/>
<wire x1="205.74" y1="-12.7" x2="205.74" y2="-10.16" width="0.1524" layer="91"/>
<junction x="205.74" y="-12.7"/>
<junction x="205.74" y="-10.16"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="T1OUT"/>
<wire x1="233.68" y1="-25.4" x2="248.92" y2="-25.4" width="0.1524" layer="91"/>
<junction x="233.68" y="-25.4"/>
<wire x1="248.92" y1="-10.16" x2="248.92" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="X2" gate="-2" pin="S"/>
<wire x1="274.32" y1="-10.16" x2="248.92" y2="-10.16" width="0.1524" layer="91"/>
<junction x="274.32" y="-10.16"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="R1IN"/>
<wire x1="233.68" y1="-30.48" x2="251.46" y2="-30.48" width="0.1524" layer="91"/>
<junction x="233.68" y="-30.48"/>
<pinref part="X2" gate="-3" pin="S"/>
<wire x1="274.32" y1="-12.7" x2="251.46" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-12.7" x2="251.46" y2="-30.48" width="0.1524" layer="91"/>
<junction x="274.32" y="-12.7"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U3" gate="A" pin="1C"/>
<pinref part="DO" gate="-1" pin="S"/>
<wire x1="-93.98" y1="48.26" x2="-71.12" y2="48.26" width="0.1524" layer="91"/>
<junction x="-71.12" y="48.26"/>
<junction x="-93.98" y="48.26"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U3" gate="A" pin="2C"/>
<pinref part="DO" gate="-2" pin="S"/>
<wire x1="-93.98" y1="45.72" x2="-71.12" y2="45.72" width="0.1524" layer="91"/>
<junction x="-71.12" y="45.72"/>
<junction x="-93.98" y="45.72"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U3" gate="A" pin="3C"/>
<pinref part="DO" gate="-3" pin="S"/>
<wire x1="-93.98" y1="43.18" x2="-71.12" y2="43.18" width="0.1524" layer="91"/>
<junction x="-71.12" y="43.18"/>
<junction x="-93.98" y="43.18"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U3" gate="A" pin="4C"/>
<pinref part="DO" gate="-4" pin="S"/>
<wire x1="-93.98" y1="40.64" x2="-71.12" y2="40.64" width="0.1524" layer="91"/>
<junction x="-71.12" y="40.64"/>
<junction x="-93.98" y="40.64"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U3" gate="A" pin="5C"/>
<pinref part="DO" gate="-5" pin="S"/>
<wire x1="-93.98" y1="38.1" x2="-71.12" y2="38.1" width="0.1524" layer="91"/>
<junction x="-71.12" y="38.1"/>
<junction x="-93.98" y="38.1"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U3" gate="A" pin="6C"/>
<pinref part="DO" gate="-6" pin="S"/>
<wire x1="-93.98" y1="35.56" x2="-71.12" y2="35.56" width="0.1524" layer="91"/>
<junction x="-71.12" y="35.56"/>
<junction x="-93.98" y="35.56"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U3" gate="A" pin="7C"/>
<pinref part="DO" gate="-7" pin="S"/>
<wire x1="-93.98" y1="33.02" x2="-71.12" y2="33.02" width="0.1524" layer="91"/>
<junction x="-71.12" y="33.02"/>
<junction x="-93.98" y="33.02"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U3" gate="A" pin="8C"/>
<pinref part="DO" gate="-8" pin="S"/>
<wire x1="-93.98" y1="30.48" x2="-71.12" y2="30.48" width="0.1524" layer="91"/>
<junction x="-71.12" y="30.48"/>
<junction x="-93.98" y="30.48"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U3" gate="A" pin="COM"/>
<junction x="-93.98" y="25.4"/>
<pinref part="R14" gate="G$1" pin="1"/>
</segment>
</net>
<net name="U2RX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN10/CVD10/RPA12/USBOEN2/RA12"/>
<wire x1="12.7" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="91"/>
<junction x="2.54" y="-2.54"/>
<junction x="12.7" y="-2.54"/>
<label x="2.54" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="R2OUT"/>
<wire x1="203.2" y1="-33.02" x2="190.5" y2="-33.02" width="0.1524" layer="91"/>
<junction x="190.5" y="-33.02"/>
<junction x="203.2" y="-33.02"/>
<label x="182.88" y="-33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="U2TX" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN15/CVD15/RPE15/FLT8/PMPA0/PSPA0/RE15"/>
<wire x1="101.6" y1="-88.9" x2="101.6" y2="-116.84" width="0.1524" layer="91"/>
<junction x="101.6" y="-88.9"/>
<junction x="101.6" y="-116.84"/>
<label x="101.6" y="-116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="T2IN"/>
<wire x1="203.2" y1="-27.94" x2="190.5" y2="-27.94" width="0.1524" layer="91"/>
<junction x="190.5" y="-27.94"/>
<junction x="203.2" y="-27.94"/>
<label x="182.88" y="-27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCK3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPD3/PWM12H/PWM6L/RD3"/>
<wire x1="12.7" y1="27.94" x2="2.54" y2="27.94" width="0.1524" layer="91"/>
<junction x="12.7" y="27.94"/>
<junction x="2.54" y="27.94"/>
<label x="2.54" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SPI" gate="-3" pin="S"/>
<wire x1="-104.14" y1="81.28" x2="-114.3" y2="81.28" width="0.1524" layer="91"/>
<junction x="-104.14" y="81.28"/>
<junction x="-114.3" y="81.28"/>
<label x="-121.92" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="RPA0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OA2OUT/AN0/C2IN4-/C4IN3-/RPA0/RA0"/>
<wire x1="12.7" y1="-7.62" x2="2.54" y2="-7.62" width="0.1524" layer="91"/>
<junction x="2.54" y="-7.62"/>
<junction x="12.7" y="-7.62"/>
<label x="2.54" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<label x="-50.8" y="-50.8" size="1.778" layer="95"/>
<junction x="-48.26" y="-50.8"/>
<wire x1="-53.34" y1="-50.8" x2="-48.26" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-50.8" x2="-53.34" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="A"/>
<wire x1="-88.9" y1="-50.8" x2="-88.9" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-60.96" x2="-88.9" y2="-60.96" width="0.1524" layer="91"/>
<junction x="-88.9" y="-50.8"/>
</segment>
</net>
<net name="SDI3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OA3OUT/AN6/CVD6/C3IN4-/C4IN1+/C4IN4-/RPC0/RC0"/>
<wire x1="71.12" y1="-88.9" x2="71.12" y2="-101.6" width="0.1524" layer="91"/>
<junction x="71.12" y="-88.9"/>
<junction x="71.12" y="-101.6"/>
<label x="71.12" y="-101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SPI" gate="-1" pin="S"/>
<wire x1="-104.14" y1="86.36" x2="-114.3" y2="86.36" width="0.1524" layer="91"/>
<junction x="-104.14" y="86.36"/>
<junction x="-114.3" y="86.36"/>
<label x="-121.92" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="RG15" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN23/CVD23/PMPA23/RG15"/>
<wire x1="12.7" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<junction x="12.7" y="45.72"/>
<junction x="2.54" y="45.72"/>
<label x="2.54" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="7"/>
<wire x1="114.3" y1="-147.32" x2="129.54" y2="-147.32" width="0.1524" layer="91"/>
<junction x="114.3" y="-147.32"/>
<junction x="132.08" y="-147.32"/>
<label x="137.16" y="-147.32" size="1.778" layer="95"/>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="U2" gate="G$1" pin="FBB"/>
<wire x1="129.54" y1="-147.32" x2="132.08" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-144.78" x2="233.68" y2="-144.78" width="0.1524" layer="91"/>
<junction x="233.68" y="-144.78"/>
<junction x="241.3" y="-144.78"/>
<wire x1="241.3" y1="-144.78" x2="241.3" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-167.64" x2="154.94" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-167.64" x2="154.94" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-147.32" x2="132.08" y2="-147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SPI_EN0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PWM11H/PWM5L/RD1"/>
<wire x1="12.7" y1="33.02" x2="2.54" y2="33.02" width="0.1524" layer="91"/>
<junction x="12.7" y="33.02"/>
<junction x="2.54" y="33.02"/>
<label x="2.54" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SPI" gate="-4" pin="S"/>
<wire x1="-104.14" y1="78.74" x2="-114.3" y2="78.74" width="0.1524" layer="91"/>
<junction x="-104.14" y="78.74"/>
<junction x="-114.3" y="78.74"/>
<label x="-127" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI_EN1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PWM5H/RD2"/>
<wire x1="12.7" y1="30.48" x2="2.54" y2="30.48" width="0.1524" layer="91"/>
<junction x="12.7" y="30.48"/>
<junction x="2.54" y="30.48"/>
<label x="2.54" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SPI" gate="-5" pin="S"/>
<wire x1="-104.14" y1="76.2" x2="-114.3" y2="76.2" width="0.1524" layer="91"/>
<junction x="-104.14" y="76.2"/>
<junction x="-114.3" y="76.2"/>
<label x="-127" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="T2OUT"/>
<wire x1="233.68" y1="-27.94" x2="254" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="254" y1="-27.94" x2="254" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="X2" gate="-6" pin="S"/>
<wire x1="254" y1="-20.32" x2="274.32" y2="-20.32" width="0.1524" layer="91"/>
<junction x="274.32" y="-20.32"/>
<junction x="233.68" y="-27.94"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="R2IN"/>
<wire x1="233.68" y1="-33.02" x2="259.08" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-33.02" x2="259.08" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="-7" pin="S"/>
<wire x1="259.08" y1="-22.86" x2="274.32" y2="-22.86" width="0.1524" layer="91"/>
<junction x="274.32" y="-22.86"/>
<junction x="233.68" y="-33.02"/>
</segment>
</net>
<net name="RD12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PMPD12/RD12"/>
<wire x1="109.22" y1="104.14" x2="109.22" y2="129.54" width="0.1524" layer="91"/>
<junction x="109.22" y="104.14"/>
<junction x="109.22" y="129.54"/>
<label x="109.22" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="1B"/>
<wire x1="-129.54" y1="48.26" x2="-147.32" y2="48.26" width="0.1524" layer="91"/>
<junction x="-129.54" y="48.26"/>
<junction x="-147.32" y="48.26"/>
<label x="-154.94" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="RD13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PMPD13/RD13"/>
<wire x1="106.68" y1="104.14" x2="106.68" y2="132.08" width="0.1524" layer="91"/>
<junction x="106.68" y="104.14"/>
<junction x="106.68" y="132.08"/>
<label x="106.68" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="2B"/>
<wire x1="-129.54" y1="45.72" x2="-147.32" y2="45.72" width="0.1524" layer="91"/>
<junction x="-129.54" y="45.72"/>
<junction x="-147.32" y="45.72"/>
<label x="-154.94" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="RC8" class="0">
<segment>
<junction x="104.14" y="134.62"/>
<pinref part="IC1" gate="G$1" pin="RPC8/PMPWR/PSPWR/RC8"/>
<wire x1="104.14" y1="104.14" x2="104.14" y2="134.62" width="0.1524" layer="91"/>
<junction x="104.14" y="104.14"/>
<label x="104.14" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="3B"/>
<wire x1="-129.54" y1="43.18" x2="-147.32" y2="43.18" width="0.1524" layer="91"/>
<junction x="-129.54" y="43.18"/>
<junction x="-147.32" y="43.18"/>
<label x="-154.94" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="RD5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPD5/PWM12H/PMPRD/PSPRD/RD5"/>
<wire x1="101.6" y1="104.14" x2="101.6" y2="137.16" width="0.1524" layer="91"/>
<junction x="101.6" y="104.14"/>
<junction x="101.6" y="137.16"/>
<label x="101.6" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="4B"/>
<wire x1="-129.54" y1="40.64" x2="-147.32" y2="40.64" width="0.1524" layer="91"/>
<junction x="-129.54" y="40.64"/>
<junction x="-147.32" y="40.64"/>
<label x="-154.94" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="RD6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPD6/PWM12L/PMPD14/RD6"/>
<wire x1="99.06" y1="104.14" x2="99.06" y2="139.7" width="0.1524" layer="91"/>
<junction x="99.06" y="104.14"/>
<junction x="99.06" y="139.7"/>
<label x="99.06" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="5B"/>
<wire x1="-129.54" y1="38.1" x2="-147.32" y2="38.1" width="0.1524" layer="91"/>
<junction x="-129.54" y="38.1"/>
<junction x="-147.32" y="38.1"/>
<label x="-154.94" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="RC9" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPC9/PMPD15/RC9"/>
<wire x1="96.52" y1="104.14" x2="96.52" y2="142.24" width="0.1524" layer="91"/>
<junction x="96.52" y="104.14"/>
<junction x="96.52" y="142.24"/>
<label x="96.52" y="142.24" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-127" y1="35.56" x2="-129.54" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U3" gate="A" pin="6B"/>
<junction x="-129.54" y="35.56"/>
<wire x1="-129.54" y1="35.56" x2="-147.32" y2="35.56" width="0.1524" layer="91"/>
<junction x="-147.32" y="35.56"/>
<label x="-154.94" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="RF6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TRCLK/PMPA18/RF6"/>
<wire x1="78.74" y1="104.14" x2="78.74" y2="127" width="0.1524" layer="91"/>
<junction x="78.74" y="104.14"/>
<junction x="78.74" y="127"/>
<label x="78.74" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="7B"/>
<wire x1="-129.54" y1="33.02" x2="-147.32" y2="33.02" width="0.1524" layer="91"/>
<junction x="-129.54" y="33.02"/>
<junction x="-147.32" y="33.02"/>
<label x="-154.94" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="RF7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TRD3/PMPA19/RF7"/>
<wire x1="76.2" y1="104.14" x2="76.2" y2="129.54" width="0.1524" layer="91"/>
<junction x="76.2" y="104.14"/>
<junction x="76.2" y="129.54"/>
<label x="76.2" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="8B"/>
<wire x1="-129.54" y1="30.48" x2="-147.32" y2="30.48" width="0.1524" layer="91"/>
<junction x="-129.54" y="30.48"/>
<junction x="-147.32" y="30.48"/>
<label x="-154.94" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPF0/PWM11H/PMPD11/RF0"/>
<wire x1="88.9" y1="104.14" x2="88.9" y2="109.22" width="0.1524" layer="91"/>
<junction x="88.9" y="104.14"/>
<junction x="88.9" y="109.22"/>
<label x="88.9" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT8"/>
<wire x1="-25.4" y1="-170.18" x2="-2.54" y2="-170.18" width="0.1524" layer="91"/>
<junction x="-25.4" y="-170.18"/>
<junction x="-2.54" y="-170.18"/>
<label x="0" y="-170.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PGED2/RPB5/USBID1/RB5(6)"/>
<wire x1="160.02" y1="30.48" x2="185.42" y2="30.48" width="0.1524" layer="91"/>
<junction x="160.02" y="30.48"/>
<junction x="185.42" y="30.48"/>
<label x="185.42" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT7"/>
<wire x1="-25.4" y1="-165.1" x2="-5.08" y2="-165.1" width="0.1524" layer="91"/>
<junction x="-25.4" y="-165.1"/>
<junction x="-5.08" y="-165.1"/>
<label x="0" y="-165.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="IN6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OSCO/CLKO/RPC15/RC15"/>
<wire x1="160.02" y1="17.78" x2="185.42" y2="17.78" width="0.1524" layer="91"/>
<junction x="160.02" y="17.78"/>
<junction x="185.42" y="17.78"/>
<label x="185.42" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="OUT6"/>
<wire x1="-25.4" y1="-160.02" x2="-5.08" y2="-160.02" width="0.1524" layer="91"/>
<junction x="-25.4" y="-160.02"/>
<junction x="-5.08" y="-160.02"/>
<label x="0" y="-160.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="30.48" y1="-104.14" x2="20.32" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-104.14" x2="20.32" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-99.06" x2="60.96" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VREF-/AN33/CVD33/PMPA7/RF9"/>
<wire x1="60.96" y1="-99.06" x2="60.96" y2="-88.9" width="0.1524" layer="91"/>
<junction x="30.48" y="-104.14"/>
<junction x="60.96" y="-88.9"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="30.48" y1="-116.84" x2="20.32" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-116.84" x2="20.32" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-111.76" x2="38.1" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-111.76" x2="38.1" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-101.6" x2="63.5" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-101.6" x2="63.5" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VREF+/AN34/CVD34/PMPA6/RF10"/>
<junction x="63.5" y="-88.9"/>
<wire x1="63.5" y1="-88.9" x2="63.5" y2="-86.36" width="0.1524" layer="91"/>
<junction x="30.48" y="-116.84"/>
</segment>
</net>
<net name="RC2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OA3IN+/AN8/CVD8/C3IN1+/C3IN3-/RPC2/FLT3/PMPA13/RC2"/>
<wire x1="76.2" y1="-88.9" x2="76.2" y2="-96.52" width="0.1524" layer="91"/>
<junction x="76.2" y="-96.52"/>
<label x="76.2" y="-96.52" size="1.778" layer="95"/>
<junction x="76.2" y="-88.9"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="1"/>
<wire x1="114.3" y1="-162.56" x2="132.08" y2="-162.56" width="0.1524" layer="91"/>
<junction x="132.08" y="-162.56"/>
<label x="137.16" y="-162.56" size="1.778" layer="95"/>
<junction x="114.3" y="-162.56"/>
</segment>
</net>
<net name="RC11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN11/CVD11/C1IN2-/FLT4/PMPA12/RC11"/>
<wire x1="78.74" y1="-88.9" x2="78.74" y2="-96.52" width="0.1524" layer="91"/>
<junction x="78.74" y="-96.52"/>
<label x="78.74" y="-96.52" size="1.778" layer="95"/>
<junction x="78.74" y="-88.9"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="2"/>
<wire x1="114.3" y1="-160.02" x2="132.08" y2="-160.02" width="0.1524" layer="91"/>
<junction x="132.08" y="-160.02"/>
<label x="137.16" y="-160.02" size="1.778" layer="95"/>
<junction x="114.3" y="-160.02"/>
</segment>
</net>
<net name="RG11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN35/CVD35/RG11"/>
<wire x1="86.36" y1="-88.9" x2="86.36" y2="-96.52" width="0.1524" layer="91"/>
<junction x="86.36" y="-96.52"/>
<label x="86.36" y="-96.52" size="1.778" layer="95"/>
<junction x="86.36" y="-88.9"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="3"/>
<wire x1="114.3" y1="-157.48" x2="132.08" y2="-157.48" width="0.1524" layer="91"/>
<junction x="132.08" y="-157.48"/>
<junction x="114.3" y="-157.48"/>
<label x="137.16" y="-157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="RF13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN36/CVD36/RF13"/>
<wire x1="88.9" y1="-88.9" x2="88.9" y2="-93.98" width="0.1524" layer="91"/>
<junction x="88.9" y="-93.98"/>
<label x="88.9" y="-93.98" size="1.778" layer="95"/>
<junction x="88.9" y="-88.9"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="4"/>
<wire x1="114.3" y1="-154.94" x2="132.08" y2="-154.94" width="0.1524" layer="91"/>
<junction x="132.08" y="-154.94"/>
<junction x="114.3" y="-154.94"/>
<label x="137.16" y="-154.94" size="1.778" layer="95"/>
<wire x1="132.08" y1="-154.94" x2="187.96" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-154.94" x2="187.96" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-172.72" x2="297.18" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-172.72" x2="297.18" y2="5.08" width="0.1524" layer="91"/>
<wire x1="297.18" y1="5.08" x2="284.48" y2="5.08" width="0.1524" layer="91"/>
<wire x1="284.48" y1="5.08" x2="284.48" y2="73.66" width="0.1524" layer="91"/>
<wire x1="284.48" y1="73.66" x2="256.54" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="FBB"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="248.92" y1="78.74" x2="256.54" y2="78.74" width="0.1524" layer="91"/>
<junction x="248.92" y="78.74"/>
<junction x="256.54" y="78.74"/>
<wire x1="256.54" y1="73.66" x2="256.54" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RF12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN37/CVD37/RF12"/>
<wire x1="91.44" y1="-88.9" x2="91.44" y2="-93.98" width="0.1524" layer="91"/>
<junction x="91.44" y="-93.98"/>
<label x="91.44" y="-93.98" size="1.778" layer="95"/>
<junction x="91.44" y="-88.9"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="5"/>
<wire x1="114.3" y1="-152.4" x2="132.08" y2="-152.4" width="0.1524" layer="91"/>
<junction x="132.08" y="-152.4"/>
<junction x="114.3" y="-152.4"/>
<label x="137.16" y="-152.4" size="1.778" layer="95"/>
<wire x1="132.08" y1="-152.4" x2="190.5" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-152.4" x2="190.5" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-170.18" x2="294.64" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="FBA"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="208.28" y1="127" x2="198.12" y2="127" width="0.1524" layer="91"/>
<junction x="208.28" y="127"/>
<junction x="198.12" y="127"/>
<wire x1="198.12" y1="127" x2="198.12" y2="147.32" width="0.1524" layer="91"/>
<wire x1="198.12" y1="147.32" x2="281.94" y2="147.32" width="0.1524" layer="91"/>
<wire x1="281.94" y1="147.32" x2="281.94" y2="2.54" width="0.1524" layer="91"/>
<wire x1="281.94" y1="2.54" x2="294.64" y2="2.54" width="0.1524" layer="91"/>
<wire x1="294.64" y1="-170.18" x2="294.64" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RE14" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN14/CVD14/RPE14/FLT7/PMPA1/PSPA1/RE14"/>
<wire x1="99.06" y1="-88.9" x2="99.06" y2="-91.44" width="0.1524" layer="91"/>
<junction x="99.06" y="-91.44"/>
<label x="99.06" y="-91.44" size="1.778" layer="95"/>
<junction x="99.06" y="-88.9"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="6"/>
<wire x1="114.3" y1="-149.86" x2="132.08" y2="-149.86" width="0.1524" layer="91"/>
<junction x="132.08" y="-149.86"/>
<junction x="114.3" y="-149.86"/>
<label x="137.16" y="-149.86" size="1.778" layer="95"/>
<pinref part="U2" gate="G$1" pin="FBA"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="193.04" y1="-96.52" x2="187.96" y2="-96.52" width="0.1524" layer="91"/>
<junction x="187.96" y="-96.52"/>
<junction x="193.04" y="-96.52"/>
<wire x1="187.96" y1="-96.52" x2="187.96" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-88.9" x2="142.24" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-88.9" x2="142.24" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-119.38" x2="147.32" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-119.38" x2="147.32" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-149.86" x2="132.08" y2="-149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="REFOUT" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="OUT_F"/>
<wire x1="20.32" y1="-129.54" x2="17.78" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-129.54" x2="7.62" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-129.54" x2="7.62" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="JP2" gate="G$1" pin="2"/>
<wire x1="7.62" y1="-119.38" x2="12.7" y2="-119.38" width="0.1524" layer="91"/>
<junction x="30.48" y="-119.38"/>
<pinref part="U4" gate="G$1" pin="OUT_S"/>
<junction x="17.78" y="-129.54"/>
<junction x="20.32" y="-129.54"/>
<pinref part="C30" gate="G$1" pin="1"/>
<junction x="7.62" y="-129.54"/>
<pinref part="C31" gate="G$1" pin="1"/>
<wire x1="12.7" y1="-119.38" x2="30.48" y2="-119.38" width="0.1524" layer="91"/>
<junction x="12.7" y="-119.38"/>
<label x="20.32" y="-129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="76.2" y1="-142.24" x2="66.04" y2="-142.24" width="0.1524" layer="91"/>
<junction x="76.2" y="-142.24"/>
<junction x="66.04" y="-142.24"/>
<label x="58.42" y="-142.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="5"/>
<wire x1="129.54" y1="129.54" x2="144.78" y2="129.54" width="0.1524" layer="91"/>
<junction x="129.54" y="129.54"/>
<junction x="144.78" y="129.54"/>
<label x="149.86" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="RD4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPD4/PWM6H/RD4"/>
<wire x1="12.7" y1="25.4" x2="2.54" y2="25.4" width="0.1524" layer="91"/>
<junction x="12.7" y="25.4"/>
<junction x="2.54" y="25.4"/>
<label x="2.54" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="8"/>
<wire x1="114.3" y1="-144.78" x2="132.08" y2="-144.78" width="0.1524" layer="91"/>
<junction x="114.3" y="-144.78"/>
<junction x="132.08" y="-144.78"/>
<label x="137.16" y="-144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="RG6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN19/CVD19/RPG6/VBUSON2/PMPA5/RG6"/>
<wire x1="12.7" y1="22.86" x2="2.54" y2="22.86" width="0.1524" layer="91"/>
<junction x="12.7" y="22.86"/>
<junction x="2.54" y="22.86"/>
<label x="2.54" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="9"/>
<wire x1="114.3" y1="-142.24" x2="132.08" y2="-142.24" width="0.1524" layer="91"/>
<junction x="114.3" y="-142.24"/>
<junction x="132.08" y="-142.24"/>
<label x="137.16" y="-142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="RG7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN18/CVD18/RPG7/PMPA4/RG7(5)"/>
<wire x1="12.7" y1="20.32" x2="2.54" y2="20.32" width="0.1524" layer="91"/>
<junction x="12.7" y="20.32"/>
<junction x="2.54" y="20.32"/>
<label x="2.54" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="10"/>
<wire x1="114.3" y1="-139.7" x2="132.08" y2="-139.7" width="0.1524" layer="91"/>
<junction x="114.3" y="-139.7"/>
<junction x="132.08" y="-139.7"/>
<label x="137.16" y="-139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="RG8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN17/CVD17/RPG8/PMPA3/RG8(6)"/>
<wire x1="12.7" y1="17.78" x2="2.54" y2="17.78" width="0.1524" layer="91"/>
<junction x="12.7" y="17.78"/>
<junction x="2.54" y="17.78"/>
<label x="2.54" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="11"/>
<wire x1="114.3" y1="-137.16" x2="132.08" y2="-137.16" width="0.1524" layer="91"/>
<junction x="114.3" y="-137.16"/>
<junction x="132.08" y="-137.16"/>
<label x="137.16" y="-137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="RG10" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN22/CVD22/RG10"/>
<wire x1="12.7" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="91"/>
<junction x="2.54" y="5.08"/>
<label x="2.54" y="5.08" size="1.778" layer="95"/>
<junction x="12.7" y="5.08"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="12"/>
<wire x1="114.3" y1="-134.62" x2="132.08" y2="-134.62" width="0.1524" layer="91"/>
<junction x="114.3" y="-134.62"/>
<junction x="132.08" y="-134.62"/>
<label x="137.16" y="-134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="RE9" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AN20/CVD20/RE9"/>
<wire x1="12.7" y1="0" x2="2.54" y2="0" width="0.1524" layer="91"/>
<junction x="2.54" y="0"/>
<label x="2.54" y="0" size="1.778" layer="95"/>
<junction x="12.7" y="0"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="13"/>
<wire x1="114.3" y1="-132.08" x2="132.08" y2="-132.08" width="0.1524" layer="91"/>
<junction x="114.3" y="-132.08"/>
<junction x="132.08" y="-132.08"/>
<label x="137.16" y="-132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="RA1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="OA2IN+/AN1/C2IN1+/RPA1/RA1"/>
<wire x1="12.7" y1="-10.16" x2="2.54" y2="-10.16" width="0.1524" layer="91"/>
<junction x="2.54" y="-10.16"/>
<label x="2.54" y="-10.16" size="1.778" layer="95"/>
<junction x="12.7" y="-10.16"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="14"/>
<wire x1="114.3" y1="-129.54" x2="132.08" y2="-129.54" width="0.1524" layer="91"/>
<junction x="114.3" y="-129.54"/>
<junction x="132.08" y="-129.54"/>
<label x="137.16" y="-129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="RB0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PGED3/OA2IN-/AN2/C2IN1-/RPB0/CTED2/RB0"/>
<wire x1="12.7" y1="-12.7" x2="2.54" y2="-12.7" width="0.1524" layer="91"/>
<junction x="2.54" y="-12.7"/>
<label x="2.54" y="-12.7" size="1.778" layer="95"/>
<junction x="12.7" y="-12.7"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="15"/>
<wire x1="114.3" y1="-127" x2="132.08" y2="-127" width="0.1524" layer="91"/>
<junction x="114.3" y="-127"/>
<junction x="132.08" y="-127"/>
<label x="137.16" y="-127" size="1.778" layer="95"/>
</segment>
</net>
<net name="RG0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPG0/PMPD8/RG0"/>
<wire x1="81.28" y1="104.14" x2="81.28" y2="109.22" width="0.1524" layer="91"/>
<junction x="81.28" y="109.22"/>
<label x="81.28" y="109.22" size="1.778" layer="95"/>
<junction x="81.28" y="104.14"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="3"/>
<wire x1="129.54" y1="124.46" x2="144.78" y2="124.46" width="0.1524" layer="91"/>
<junction x="129.54" y="124.46"/>
<junction x="144.78" y="124.46"/>
<label x="149.86" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="RG1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPG1/PMPD9/RG1"/>
<wire x1="83.82" y1="104.14" x2="83.82" y2="109.22" width="0.1524" layer="91"/>
<junction x="83.82" y="109.22"/>
<label x="83.82" y="109.22" size="1.778" layer="95"/>
<junction x="83.82" y="104.14"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="2"/>
<wire x1="129.54" y1="121.92" x2="144.78" y2="121.92" width="0.1524" layer="91"/>
<junction x="129.54" y="121.92"/>
<junction x="144.78" y="121.92"/>
<label x="149.86" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="RF1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RPF1/PWM11L/PMPD10/RF1"/>
<wire x1="86.36" y1="104.14" x2="86.36" y2="109.22" width="0.1524" layer="91"/>
<junction x="86.36" y="109.22"/>
<label x="86.36" y="109.22" size="1.778" layer="95"/>
<junction x="86.36" y="104.14"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="1"/>
<wire x1="129.54" y1="119.38" x2="144.78" y2="119.38" width="0.1524" layer="91"/>
<junction x="129.54" y="119.38"/>
<junction x="144.78" y="119.38"/>
<label x="149.86" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="101,1,-104.14,73.66,SPI-6,S,,,,"/>
<approved hash="101,1,-104.14,66.04,SPI-9,S,,,,"/>
<approved hash="101,1,-104.14,63.5,SPI-10,S,,,,"/>
<approved hash="102,1,-53.34,91.44,VSS,GND,,,,"/>
<approved hash="201,1,-53.34,91.44,VSS,VSS\, GND,,,,"/>
<approved hash="104,1,203.2,-53.34,IC2,GND_1,VSS,,,"/>
<approved hash="104,1,203.2,-55.88,IC2,VCC,VDD,,,"/>
<approved hash="104,1,203.2,-58.42,IC2,VIO,VCC,,,"/>
<approved hash="104,1,203.2,-71.12,IC2,GND_2,VSS,,,"/>
<approved hash="104,1,233.68,-53.34,IC2,GND_8,VSS,,,"/>
<approved hash="104,1,233.68,-55.88,IC2,GND_7,VSS,,,"/>
<approved hash="104,1,233.68,-60.96,IC2,GND_6,VSS,,,"/>
<approved hash="104,1,233.68,-63.5,IC2,GND_5,VSS,,,"/>
<approved hash="104,1,233.68,-68.58,IC2,GND_4,VSS,,,"/>
<approved hash="104,1,233.68,-71.12,IC2,GND_3,VSS,,,"/>
<approved hash="104,1,208.28,106.68,U1,PGNDA,VSS,,,"/>
<approved hash="104,1,208.28,104.14,U1,PGNDA,VSS,,,"/>
<approved hash="104,1,248.92,104.14,U1,PGNDA,VSS,,,"/>
<approved hash="104,1,248.92,106.68,U1,PGNDA,VSS,,,"/>
<approved hash="104,1,208.28,101.6,U1,PGNDB,VSS,,,"/>
<approved hash="104,1,208.28,99.06,U1,PGNDB,VSS,,,"/>
<approved hash="104,1,248.92,99.06,U1,PGNDB,VSS,,,"/>
<approved hash="104,1,248.92,101.6,U1,PGNDB,VSS,,,"/>
<approved hash="104,1,193.04,-116.84,U2,PGNDA,VSS,,,"/>
<approved hash="104,1,193.04,-119.38,U2,PGNDA,VSS,,,"/>
<approved hash="104,1,233.68,-119.38,U2,PGNDA,VSS,,,"/>
<approved hash="104,1,233.68,-116.84,U2,PGNDA,VSS,,,"/>
<approved hash="104,1,193.04,-121.92,U2,PGNDB,VSS,,,"/>
<approved hash="104,1,193.04,-124.46,U2,PGNDB,VSS,,,"/>
<approved hash="104,1,233.68,-124.46,U2,PGNDB,VSS,,,"/>
<approved hash="104,1,233.68,-121.92,U2,PGNDB,VSS,,,"/>
<approved hash="104,1,27.94,-129.54,U4,GND_F,VSS,,,"/>
<approved hash="104,1,25.4,-129.54,U4,GND_S,VSS,,,"/>
<approved hash="206,1,20.32,-129.54,REFOUT,,,,,"/>
<approved hash="206,1,17.78,-129.54,REFOUT,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
