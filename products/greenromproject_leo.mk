# Inherit AOSP device configuration for leo.
$(call inherit-product, device/htc/leo/full_leo.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/greenromproject/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/greenromproject/products/gsm.mk)

#
# Setup device specific product configuration.
#

PRODUCT_NAME := greenromproject_leo
PRODUCT_BRAND := htc_grp
PRODUCT_DEVICE := leo
PRODUCT_MODEL := HTC HD2
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES:= PRODUCT_NAME=passion BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Extra leo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/leo

# This file is used to install the enable RMNET and corresponding modules which dont get activated by normal module script
PRODUCT_COPY_FILES += \
    vendor/greenromproject/prebuilt/leo/etc/init.d/01modules:system/etc/init.d/01modules \

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,113,115,117,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Broadcom FM radio
$(call inherit-product, vendor/greenromproject/products/bcm_fm_radio.mk)
