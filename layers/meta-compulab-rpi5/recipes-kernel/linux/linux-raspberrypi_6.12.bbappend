FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/6.12/:"

SRC_URI += " \
	file://0001-dts-rpi-cm5-add-support-for-iotg-rpi5-device-tree.patch \
	file://0002-overlays-add-support-for-iotg-rpi5-device-tree-overl.patch \
	file://0003-overlays-iotg-rpi5-add-CMD-button-overlay.patch \
	file://0004-overlays-iotg-rpi5-add-Modem-Reset-overlay.patch \
	file://0005-overlays-iotg-rpi5-add-Digital-I-O-block-overlay.patch \
	file://0006-dts-iotg-rpi5-move-board-specific-implementation-to-.patch \
	file://0007-dts-iotg-rpi5-add-support-for-CM5-Lite-based-device.patch \
"
