# GreenRomProject property overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.rommanager.developerid=GreenRomProject \
	ro.modversion=GreenRomProject-presents-CyanogenMod-7.1.0-RC0-$(shell date +%m%d%Y)

# Apply GreenRomProject themed overlay and common overlay to all devices
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/greenromproject/overlay/greenromproject \
	vendor/greenromproject/overlay/common

# GreenRomProject apps 
PRODUCT_COPY_FILES += \
	vendor/greenromproject/grpapps/Launcher2.apk:system/app/Launcher2.apk \
	vendor/greenromproject/grpapps/greenromproject.apk:system/app/greenromproject.apk \
	vendor/greenromproject/grpapps/99sdcard3072kb:system/etc/init.d/99sdcard3072kb

#DISABLED:  This has a problem; it breaks bootanimation; I'm thinking the packaging but don't know yet
#	vendor/greenromproject/grpapps/bootanimation.zip:system/media/bootanimation.zip

#DISABLED:  Causes FC issues with music player 
# Honeycomb music player
#PRODUCT_COPY_FILES += \
#	vendor/greenromproject/grpapps/com.google.android.music-1.apk:system/app/com.google.android.music-1.apk

# MISC included apps
PRODUCT_COPY_FILES += \
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
        vendor/greenromproject/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/greenromproject/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/greenromproject/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
        vendor/greenromproject/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/greenromproject/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
        vendor/greenromproject/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/greenromproject/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/greenromproject/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/greenromproject/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/greenromproject/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/greenromproject/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/greenromproject/proprietary/libvoicesearch.so:./system/lib/libvoicesearch.so
