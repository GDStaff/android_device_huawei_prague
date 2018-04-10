# Android Open Source Project Common Stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device
$(call inherit-product, device/huawei/prague/device.mk)

PRODUCT_NAME := omni_prague
PRODUCT_DEVICE := prague
PRODUCT_BRAND := PRA-LX1
PRODUCT_MODEL := PRA-LX1
PRODUCT_MANUFACTURER := HUAWEI

# OmniROM 7.1
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)


