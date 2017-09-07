# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/leeco/x3/device.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := LeEco
PRODUCT_BRAND := LeEco
PRODUCT_DEVICE := x3
PRODUCT_NAME := xenonhd_x3
PRODUCT_MANUFACTURER := LeEco
PRODUCT_MODEL := Le 1s
TARGET_VENDOR := LeEco

# Root options currently will use no root by default. wItS
#ROOT_METHOD=magisk -- to compile builds with Magisk root
#ROOT_METHOD=su -- to compile builds with default su provided by LineageOS
# Without any of these flags the builds will be unrooted and won't include Adaway & KernelAdiutor

# 3rd party apps - choose which you want to build
PRODUCT_PACKAGES += \
   Phonograph \
   substratum \
    MiXplorer

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Letv/Le1s_CN/X3:6.0/DBXCNOP5902302082S/1486532099:user/release-keys
endif