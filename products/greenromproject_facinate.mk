# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/greenromproject/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := greenromproject_fascinate
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := fascinate
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# Extra Fascinate overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/fascinate
