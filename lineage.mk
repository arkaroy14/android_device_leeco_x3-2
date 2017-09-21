# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/leeco/x3/device.mk)

# Inherit common product files.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := LeEco
PRODUCT_BRAND := LeEco
PRODUCT_DEVICE := x3
PRODUCT_NAME := lineage_x3
PRODUCT_MANUFACTURER := LeEco
PRODUCT_MODEL := Le 1s
TARGET_VENDOR := LeEco

# Use the latest approved GMS identifiers unless running a signed build

PRODUCT_GMS_CLIENTID_BASE := android-letv

PRODUCT_BUILD_PROP_OVERRIDES += \
        BUILD_FINGERPRINT=Letv/Le1s_CN/X3:6.0/DBXCNOP5902302082S/1486532099:user/release-keys
