# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := santos103g

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/santos103g/full_santos103g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := santos103g
PRODUCT_NAME := cm_santos103g
PRODUCT_BRAND := SGT3_Intel
PRODUCT_MODEL := GT-P5200
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
