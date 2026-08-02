# compulab-iotg-rpi5 repository

## Clone/Initialize the repository

* There are two methods of initializing this repository:
  |Methods #|Command|
  |:---|:---|
  |#1|git clone --recursive https://github.com/compulab-yokneam/compulab-iotg-rpi5.git|
  |#2|git clone https://github.com/compulab-yokneam/compulab-iotg-rpi5.git<br>cd compulab-iotg-rpi5<br>git submodule update --init --recursive|

* Init build environment:
  ```
  TEMPLATECONF=$(pwd)/layers/meta-compulab-rpi5/conf/templates/compulab-rpi5 \
    source $(pwd)/layers/openembedded-core/oe-init-build-env build-compulab-rpi5
  ```

* Issie the image build:
  ```
  bitbake -k core-image-weston
  ```

* Get back to the already created build environment:
  ```
  source layers/openembedded-core/oe-init-build-env build-compulab-rpi5
  ```
