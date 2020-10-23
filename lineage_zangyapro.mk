# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/bq/zangyapro/zangyapro-vendor.mk)

# Device
$(call inherit-product, device/bq/zangyapro/device.mk)

# Device identifiers
PRODUCT_DEVICE := zangyapro
PRODUCT_NAME := lineage_zangyapro
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris X2 Pro
PRODUCT_MANUFACTURER := bq
PRODUCT_RELEASE_NAME := zangyapro

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="zangyapro_bq-user 9 PKQ1.190723.001 1125 release-keys" \
        PRODUCT_NAME="zangyapro_bq" \
        TARGET_DEVICE="zangyapro_sprout"

BUILD_FINGERPRINT := bq/zangyapro_bq/zangyapro_sprout:10/QKQ1.200216.002/616:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-bq
