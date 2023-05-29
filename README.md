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
# Initialize last branch
$ git clone -b android-10.0 https://github.com/thisfeeling/device-motorola-ali-twrp.git device/motorola/ali -j$(nproc --all) --no-tags 
$ . build/envsetup.sh
# Lunch only omni_ali-eng
$ lunch omni_ali-eng
$ mka recoveryimage -j$(nproc --all)
```
