$(call inherit-product, device/nvidia/harmony/device_harmony.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := greenromproject_harmony
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := harmony
PRODUCT_MODEL := GTablet
PRODUCT_MANUFACTURER := malata
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=harmony BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/greenromproject/products/common_full.mk)

# Extra overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/harmony
