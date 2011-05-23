# Inherit device configuration for vision.
$(call inherit-product, device/htc/vision/vision.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/greenromproject/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/greenromproject/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := greenromproject_vision
PRODUCT_BRAND := tmobile
PRODUCT_DEVICE := vision
PRODUCT_MODEL := HTC Vision
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vision BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=tmobile/htc_vision/vision/vision:2.2/FRF91/277427:user/release-keys PRIVATE_BUILD_DESC="1.22.531.8 CL277427 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=greenromproject_vision_defconfig

# Extra Vision overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/vision

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Build GanOptimizer
PRODUCT_PACKAGES += GanOptimizer

# Broadcom FM radio
$(call inherit-product, vendor/greenromproject/products/bcm_fm_radio.mk)
