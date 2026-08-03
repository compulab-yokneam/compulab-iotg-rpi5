# compulab-iotg-rpi5 repository

## Build
* Setup Yocto environment:
  ```
  source <(curl -L https://raw.githubusercontent.com/compulab-yokneam/compulab-iotg-rpi5/refs/heads/master/tools/run.me)
  ```
* Issie the image build:
  ```
  bitbake -k core-image-weston
  ```

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
      sudo bmaptool copy --bmap core-image-weston-${MACHINE}.rootfs.wic.bmap core-image-weston-${MACHINE}.rootfs.wic.bz2 /dev/sdX
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
