Device Tree for Ulefone Power Armor 14 Pro - mt6768
--------------------------------------------------------
------------------------------------
## Device specifications
Basic   | Specification Sheet
-------:|:-------------------------
Release Date | 2022, March 09
Shipped Android Version | 12
Chipset | Mediatek Helio G85
CPU     | Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55)
GPU     | Mali-G52 MC2
Memory  | 6GB RAM
Storage | 128 GB
MicroSD | Up to 512 GB
Battery | Li-Po 10000 mAh, non-removable
Fast charging | 18W
Fast wireless charging | 15W
Display | 720 x 1600 pixels, 6.52"
Rear Camera  | 20MPx (wide) & 2MPx (macro) & 2MPx (depth)
Selfie Front Camera | 20MPx LED flash, HDR
Features| Fingerprint (side-mountedn sensor), accelerometer, proximity, compass

![Ulefone Power Armor 14 Pro](https://fdn2.gsmarena.com/vv/pics/ulefone/ulefone-power-armor-14-pro-1.jpg)

--------------------------------------------------------
## TWRP device tree MTK6769_12.0 - k69v1_64
---------------
- Firmware version: GQ3097TH1_KSE3H_Ulefone_20220720_V01
Status: testing
This branch A12 not have encrypt/decrypt process and files. So the process to backup Data have vendor.img ***encryptable***.

## What's the history?
boot-UPA14_Pro_nnnnnnn.img => Working?? Not Working???
- 21/05/2022 TWRP boot-UPA14_Pro_nnnnnnn.img --> booted;

- Updated to 3.7.0_12 version;

- 23/11/2022 - The applied theme is very good for devices with a centralized notch and the clock moves a little to the left side. Maybe trying the TW_CUSTOM_CLOCK_POS := 300 is better.

```# Statusbar icons flags 1080 x 2260
TW_STATUS_ICONS_ALIGN := center
#TW_CUSTOM_CPU_POS := 50
TW_CUSTOM_CLOCK_POS := 270
#TW_CUSTOM_BATTERY_POS := 800
```

## Credits
- [lopestorm](https://github.com/lopestom) - For testing of TWRP.<br/>

## Big thanks to:

- [TeamWin](https://github.com/TeamWin) for TWRP SC.
* TWRP version **3.7.0_12**

                  ####### generated by lopestom #######
                  
---------------
# TWRP Pictures
## ©2022
-------------
![Initial Menu](https://gRU-20220521_103640.jpg?raw=true)
![Backup Partitions](https://github.4739.jpg?raw=true)

## To build with minimal twrp AOSP
```
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export USE_NINJA=false
. build/envsetup.sh
lunch twrp_Power_Armor14_Pro-eng
mka bootimage
```

