# Android TWRP Device Tree for Moto G6

The Motorola Moto G(6) (codenamed _"ali"_ ) is a mid-range phone from Motorola.

Motorola Moto G(6) was announced and released in April 2018.

## Device specifications

| Device          | Motorola Moto G(6)
| --------------: | :---------------------------------------------- 
| SoC             | Qualcomm SDM450 Snapdragon 450 (14 nm)
| CPU             | Octa-core 1.8 GHz Cortex-A53
| GPU             | Adreno 506
| Memory          | 3GB / 4GB RAM
| Android Version | 9.0 (Pie)
| Storage         | 32/64 eMMC 5.1 flash storage
| Battery         | Non-removable Li-Po 3000 mAh
| Dimensions      | 158.7 x 75.3 x 8.3 mm
| Display         | 1080x2160 pixels, 5.7
| Rear Camera     | 12 MP, f/1.8, 1/2.55", 1.4µm, PDAF
| Front Camera    | 5 MP, f/2.2, (depth)

## Device picture

![Motorola Moto G6](https://brmotorola.vteximg.com.br/arquivos/ids/159972-700-700/01-moto-g6-indigo.png "Motorola Moto G6")


## Build


```bash
$ mkdir <source-dir>
$ cd <source-dir>
# Initialize test branch
$ git clone -b android-10.0 https://github.com/thisfeeling/device-motorola-ali-twrp.git device/motorola/ali -j$(nproc --all) --no-tags 
$ . build/envsetup.sh
# Lunch only omni_ali-eng
$ lunch omni_ali-eng
$ mka recoveryimage -j$(nproc --all)
```
### Copyright
 ```
  /*
  *  Copyright (C) 2013-19 The OmniROM Project
  *
  * This program is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation, either version 3 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  *
  */
  ```
