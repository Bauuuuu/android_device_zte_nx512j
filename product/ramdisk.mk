# Ramdisk
PRODUCT_PACKAGES += \
    init.crda.sh \
    init.qcom.coex.sh \
    init.qcom.fm.sh

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir,root)
