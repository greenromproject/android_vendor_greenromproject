# Generic greenromproject product
PRODUCT_NAME := greenromproject
PRODUCT_BRAND := greenromproject

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# This invokes GreenRomProject's overlay
include vendor/greenromproject/products/greenromproject.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# CyanogenMod specific product packages
PRODUCT_PACKAGES += \
    AndroidTerm \
    FileManager \
    CMParts \
    CMStats \
    CMUpdateNotify \
    CMWallpapers \
    DSPManager \
    libcyanogen-dsp \
    Pacman

# Extra tools in CyanogenMod
PRODUCT_PACKAGES += \
    openvpn

# T-Mobile theme engine
include vendor/greenromproject/products/themes_common.mk

PRODUCT_COPY_FILES += \
    vendor/greenromproject/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/greenromproject/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/greenromproject/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/greenromproject/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/greenromproject/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/greenromproject/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/greenromproject/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/greenromproject/prebuilt/common/etc/profile:system/etc/profile \
    vendor/greenromproject/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/greenromproject/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/greenromproject/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/greenromproject/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/greenromproject/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/greenromproject/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/greenromproject/prebuilt/common/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/greenromproject/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/greenromproject/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/greenromproject/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/greenromproject/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/greenromproject/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/greenromproject/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/greenromproject/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/greenromproject/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/greenromproject/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/greenromproject/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh 

PRODUCT_COPY_FILES +=  \
    vendor/greenromproject/proprietary/RomManager.apk:system/app/RomManager.apk \

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
	Provision \
	GoogleSearch \
	LatinIME
