$(call inherit-product, device/nvidia/harmony/device_harmony.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/greenromproject/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := greenromproject_harmony
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := harmony
PRODUCT_MODEL := GTablet
PRODUCT_MANUFACTURER := malata
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=harmony BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Extra overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/harmony

#
# Set ro.modversion
#
#hijack the routine
GRP_RELEASE := GoVols
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Harmony
else
#hijack
    ifdef GRP_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=GreenRomProject-presents-CyanogenMod-7.1.0-RC0-Harmony_GRP
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=GreenRomProject-presents-CyanogenMod-7.1.0-RC0-Harmony_GRP
    endif
endif

#
# Copy passion specific prebuilt files
#
#PRODUCT_COPY_FILES +=  \
#    vendor/greenromproject/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
