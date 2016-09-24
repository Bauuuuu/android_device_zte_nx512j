# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.radio.custom_ecc=1 \
    persist.radio.ecc_hard_1=998 \
    persist.radio.ecc_hard_count=1 \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    ro.telephony.default_network=9,9 \
    persist.data.target=dpm1 \
    persist.data.qmi.adb_logmask=0

# RIL
ifeq ($(QCPATH),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml
endif

# Telephony
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/telephony/default_static_config.xml:system/etc/telephony/default_static_config.xml \
    $(LOCAL_PATH)/telephony/N958St_Z0-.xml:system/etc/telephony/N958St_Z0-.xml \
    $(LOCAL_PATH)/telephony/NX505J_Z0-0.xml:system/etc/telephony/NX505J_Z0-0.xml \
    $(LOCAL_PATH)/telephony/NX507J_Z0-0.xml:system/etc/telephony/NX507J_Z0-0.xml \
    $(LOCAL_PATH)/telephony/NX508H-0.xml:system/etc/telephony/NX508H-0.xml \
    $(LOCAL_PATH)/telephony/NX511J_Z0-1.xml:system/etc/telephony/NX511J_Z0-1.xml \
    $(LOCAL_PATH)/telephony/NX511J_Z95-7.xml:system/etc/telephony/NX511J_Z95-7.xml \
    $(LOCAL_PATH)/telephony/NX512J-3.xml:system/etc/telephony/NX512J-3.xml \
    $(LOCAL_PATH)/telephony/NX512J_Z0-1.xml:system/etc/telephony/NX512J_Z0-1.xml \
    $(LOCAL_PATH)/telephony/NX512J_Z78-1.xml:system/etc/telephony/NX512J_Z78-1.xml
