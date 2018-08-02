# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Release name
PRODUCT_RELEASE_NAME := A37m

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/A37m/device_A37m.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A37m
PRODUCT_NAME := cm_A37m
PRODUCT_BRAND := oppo
PRODUCT_MODEL := A37m
PRODUCT_MANUFACTURER := oppo



PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=A37m \
    BUILD_PRODUCT=oppo6750_15127 \
    TARGET_DEVICE=A37m

