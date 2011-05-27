# GreenRomProject property overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.rommanager.developerid=GreenRomProject \
	ro.modversion=GreenRomProject-presents-CyanogenMod-7-synced-$(shell date +%m%d%Y) \
	ro.HOME_APP_ADJ=0	#system not allowed to kill launcher

# Apply GreenRomProject themed overlay and common overlay to all devices
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/greenromproject/overlay/greenromproject \
	vendor/greenromproject/overlay/common

# GreenRomProject apps 
PRODUCT_COPY_FILES += \
#	vendor/greenromproject/grpapps/greenromproject.apk:system/app/greenromproject.apk \
	vendor/greenromproject/grpapps/90ramhack:system/etc/init.d/90ramhack \
	vendor/greenromproject/grpapps/95speedhacks:system/etc/init.d/95speedhacks \
	vendor/greenromproject/grpapps/98chmodbomb:system/etc/init.d/98chmodbomb \
#	vendor/greenromproject/grpapps/com.android.vending-2.3.6.apk:system/app/com.android.vending-2.3.6.apk \
	vendor/greenromproject/grpapps/sqlite3:system/bin/sqlite3

# Soon to be removed theme by UpwardSpiral @ http://forum.xda-developers.com/showthread.php?p=11760329
#PRODUCT_COPY_FILES += \
#	vendor/greenromproject/grpapps/Galaxy_Green141.apk:system/app/Galaxy_Green141.apk

# Honeycomb music player
PRODUCT_COPY_FILES += \
	vendor/greenromproject/grpapps/com.google.android.music-1.apk:system/app/com.google.android.music-1.apk

# Device Specific apps
ifdef USE_ADW
	PRODUCT_PACKAGES += ADWLauncher
else
	PRODUCT_COPY_FILES += vendor/greenromproject/grpapps/Launcher2.apk:system/app/Launcher2.apk
endif

# We need this for now because while it is a cool bootanimation its 31mb not good for small devices
ifndef SMALL_BOOTANIM
	PRODUCT_COPY_FILES += vendor/greenromproject/grpapps/bootanimation.zip:system/media/bootanimation.zip
endif
