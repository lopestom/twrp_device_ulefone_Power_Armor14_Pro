[![GitHub Release](https://img.shields.io/github/release/lopestom/twrp_device_ulefone_Armor_17_Pro.svg?logo=github)](https://github.com/lopestom/twrp_device_ulefone_Armor_17_Pro/releases) [![GPLv3+](https://img.shields.io/badge/license-GPLv3+-red.svg)](https://www.gnu.org/licenses/gpl-3.0.html) [![download](https://img.shields.io/github/downloads/lopestom/twrp_device_ulefone_Armor_17_Pro/total)](https://github.com/lopestom/twrp_device_ulefone_Armor_17_Pro/releases/download/Ulefone_Armor_17_Pro-V3.03/vendor_boot-Armor_17_Pro-20231206.img)
--------------------------------------------------------
# Device Tree for Ulefone Power Armor 14 Pro - mt6768

**Repository Views** ![Views](https://profile-counter.glitch.me/twrp_device_ulefone_Armor_17_Pro/count.svg)
--------------------------------------------------------
- Firmware version: GQ3097TH1_KSE3H_Ulefone_20220720_V01

## Status
This branch android-12.1 has ***encrypt/decrypt*** files and option to more test with that.

You need read the [realease](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/tag/Encrypt_Decrypt) tab to know about these DT.

[![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.paypal.com/donate?token=Cxr1xP4Yr_XgV2E5lpC6Oo4qvbqmPiS3TgR6aiMEnQUgxr_nP242Z6zMqzeluThwaikNL-FXe8RnA1pT) to TeamWin so any donation is highly appreciated!

------------------------------------
## Device specifications
<details><summary>Specs - Click to open</summary>
<p>

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
</p>
</details>

--------------------------------------------------------
## TWRP device tree MTK6768_12.0 - k69v1_64
![Ulefone Power Armor 14 Pro](https://fdn2.gsmarena.com/vv/pics/ulefone/ulefone-power-armor-14-pro-1.jpg)

---------------
- Status: Done - boot-UPA14Pro-A12-20231229-0142.img

## What's the history?
boot-UPA14_Pro_20220720_V01-A12-nnnnnnn.img => Working?? Not Working???
- 22/08/2022 TWRP boot-UPA14_Pro_20220720_V01-A12-nnnnnnn.img --> booted;
The TWRP compiled with A11 SC bootloping. The TWRP compiled with A12 need 38MB minimum file size and boot_ partition has only 32MB. So that's the problem now.
Unpacked boot_TWRP.img and removed some files => 31.8MB sucesslly; TWRP boot and work and the problem is: device not start/boot normally => bootloop to TWRP.

<details><summary>TWRP Pictures ©2023 - Click to open</summary>
<p>

![Initial Menu](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-14-24-17_resized.png)
![Decrypt 1](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-23-46-30_resized.png)
![Decrypt 2](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-30-17-21-20_resized.png)
![Decrypt 3](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-23-46-36_resized.png)
![Enc_Dec](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-20-46-52_resized.png)
![Backup Partitions](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-14-23-12_resized.png)
![Initial](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-14-24-59_resized.png)
![Backup](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-14-26-13_resized.png)
![Menu](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-14-24-40_resized.png)
![Restore](https://github.com/lopestom/twrp_device_ulefone_Power_Armor14_Pro/releases/download/Encrypt_Decrypt/Screenshot_2023-12-29-14-26-21_resized.png)
</p>
</details>

---------------

## Credits

- [lopestorm](https://github.com/lopestom) - For testing of TWRP.<br/>

## Big thanks to:

- [TeamWin](https://github.com/TeamWin) for TWRP SC.
* TWRP version 3.7.2_12 *

                  ####### generated by lopestom #######
---------------
## To build with minimal twrp AOSP
```
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export USE_NINJA=false
. build/envsetup.sh
lunch twrp_Power_Armor14_Pro-eng
mka bootimage
```

