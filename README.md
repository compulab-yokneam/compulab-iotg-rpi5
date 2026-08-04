# compulab-iotg-rpi5 repository

## Build
* Setup Yocto environment:
  ```
  source <(curl -L https://raw.githubusercontent.com/compulab-yokneam/compulab-iotg-rpi5/refs/heads/master/tools/run.me)
  ```
* Issie the image build:
  
  |Suggested Images|Command|Description|
  |:---|:---|:---|
  |core-image-x11|bitbake -k core-image-x11|Lightweigh x11 sample image with: xorg, xterm, firefox|
  |clab-xfce-image|bitbake -k clab-xfce-image|XFCE4 desktop sample image|

* Get back to the already created build environment:
  ```
  source layers/openembedded-core/oe-init-build-env build-compulab-rpi5
  ```

## Deployment
* Development host
  * Create a bootable USB disk
    * Goto the `${BUILDDIR}/tmp/deploy/images/${MACHINE}` directory:
      ```
      cd ${BUILDDIR}/tmp/deploy/images/${MACHINE}
      ```
    * Deploy the image:
      ```
      sudo bmaptool copy --bmap core-image-x11-${MACHINE}.rootfs.wic.bmap core-image-x11-${MACHINE}.rootfs.wic.bz2 /dev/sdX
      ```
* Target iotg-pri5 device
  * Boot up the device using the created media; login and issue:
    ```
    DST=/dev/mmcblk0 cl-deploy
    ```
  * Reboot the device and make sure that the /dev/mmcblk0 is in use; issue `lsblk`:
    ```
    NAME         MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
    mmcblk0      179:0    0 29.1G  0 disk 
    |-mmcblk0p1  179:1    0  130M  0 part /boot
    `-mmcblk0p2  179:2    0   29G  0 part /
    mmcblk0boot0 179:32   0    4M  1 disk 
    mmcblk0boot1 179:64   0    4M  1 disk
    ```
## Resource
* A ready to run image.<br>Downolad the files from this [location](https://drive.google.com/drive/folders/1QHP0HK2Cg4HGfpgC1rVly-ED6Q3UblRy?usp=sharing).
