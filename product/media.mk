# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxSwVencMpeg4 \
    libOmxSwVencHevc \
    libOmxVdecHevc \
    libOmxVidcCommon \
    libdashplayer \
    libmm-omxcore \
    qcmediaplayer \
    libqcmediaplayer \
    libextmedia_jni \
    libstagefright_soft_flacdec

PRODUCT_BOOT_JARS += \
    qcmediaplayer
