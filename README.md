# compulab-iotg-rpi5 repository

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
