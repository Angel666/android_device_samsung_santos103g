$(call inherit-product, device/samsung/santos103g/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)






PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := santos103g
PRODUCT_DEVICE := santos103g
PRODUCT_BRAND := SGT3_Intel
PRODUCT_MODEL := GT-P5200
PRODUCT_MANUFACTURER := samsung
