# Generic cyanogenmod product
PRODUCT_NAME := greenromproject
PRODUCT_BRAND := greenromproject
PRODUCT_DEVICE := generic

PRODUCT_PACKAGES += ADWLauncher

ifdef CYANOGEN_NIGHTLY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=cyanogenmodnightly
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=greenromproject
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

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

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/greenromproject/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt

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

# This invokes GreenRomProject's overlay
include vendor/greenromproject/products/greenromproject.mk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

ifdef CYANOGEN_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/greenromproject/proprietary/CarHomeGoogle.apk:./system/app/CarHomeGoogle.apk \
        vendor/greenromproject/proprietary/CarHomeLauncher.apk:./system/app/CarHomeLauncher.apk \
        vendor/greenromproject/proprietary/Facebook.apk:./system/app/Facebook.apk \
        vendor/greenromproject/proprietary/GenieWidget.apk:./system/app/GenieWidget.apk \
        vendor/greenromproject/proprietary/Gmail.apk:./system/app/Gmail.apk \
        vendor/greenromproject/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
        vendor/greenromproject/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
        vendor/greenromproject/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
        vendor/greenromproject/proprietary/GoogleFeedback.apk:./system/app/GoogleFeedback.apk \
        vendor/greenromproject/proprietary/GooglePartnerSetup.apk:./system/app/GooglePartnerSetup.apk \
        vendor/greenromproject/proprietary/GoogleQuickSearchBox.apk:./system/app/GoogleQuickSearchBox.apk \
        vendor/greenromproject/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
        vendor/greenromproject/proprietary/HtcCopyright.apk:./system/app/HtcCopyright.apk \
        vendor/greenromproject/proprietary/HtcEmailPolicy.apk:./system/app/HtcEmailPolicy.apk \
        vendor/greenromproject/proprietary/HtcSettings.apk:./system/app/HtcSettings.apk \
        vendor/greenromproject/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/greenromproject/proprietary/Maps.apk:./system/app/Maps.apk \
        vendor/greenromproject/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/greenromproject/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
	vendor/greenromproject/proprietary/Music.apk:./system/app/Music.apk \
        vendor/greenromproject/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/greenromproject/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
        vendor/greenromproject/proprietary/PassionQuickOffice.apk:./system/app/PassionQuickOffice.apk \
        vendor/greenromproject/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/greenromproject/proprietary/Street.apk:./system/app/Street.apk \
        vendor/greenromproject/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/greenromproject/proprietary/Twitter.apk:./system/app/Twitter.apk \
        vendor/greenromproject/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/greenromproject/proprietary/VoiceSearch.apk:./system/app/VoiceSearch.apk \
        vendor/greenromproject/proprietary/YouTube.apk:./system/app/YouTube.apk \
        vendor/greenromproject/proprietary/googlevoice.apk:./system/app/googlevoice.apk \
        vendor/greenromproject/proprietary/kickback.apk:./system/app/kickback.apk \
        vendor/greenromproject/proprietary/soundback.apk:./system/app/soundback.apk \
        vendor/greenromproject/proprietary/talkback.apk:./system/app/talkback.apk \
        vendor/greenromproject/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/greenromproject/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/greenromproject/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/greenromproject/proprietary/libspeech.so:./system/lib/libspeech.so

else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch \
        LatinIME
endif
