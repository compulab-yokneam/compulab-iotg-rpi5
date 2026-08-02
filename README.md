# compulab-iotg-rpi5 repository

## Clone/Initialize the repository

There are two ways of initializing this repository:
* Clone this repository with "git clone --recursive".

or

* Run "git clone" and then "git submodule update --init --recursive". This will
bring in all the needed dependencies.

* Init build environmet
```
TEMPLATECONF=$(pwd)/layers/meta-compulab-rpi5/conf/templates/compulab-rpi5 . $(pwd)/layers/openembedded-core/oe-init-build-env build-compulab-rpi5
```

* Issie the image build
```
bitbake -k core-image-weston
```

* Get back to already created build environment:
```
source layers/openembedded-core/oe-init-build-env build-compulab-rpi5
```
