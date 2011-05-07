# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/greenromproject/overlay/common \
	vendor/greenromproject/overlay/greenromproject

#GRP apps 
PRODUCT_COPY_FILES += \
	vendor/greenromproject/grpapps/Launcher2.apk:system/app/Launcher2.apk \
	vendor/greenromproject/grpapps/greenromproject.apk:system/app/greenromproject.apk \
	vendor/greenromproject/grpapps/99sdcard3072kb:system/etc/init.d/99sdcard3072kb
	#vendor/greenromproject/grpapps/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=GreenRomProject-presents-CyanogenMod-7.1.0-RC0-$(shell date +%m%d%Y)
