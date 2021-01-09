# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc/full_geehrc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc
PRODUCT_NAME := lineage_geehrc
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E975
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=geehrc_open_cis \
    BUILD_FINGERPRINT=lge/geehrc_open_cis/geehrc:4.4.2/KOT49I.E97520a/E97520a.1403860296:user/release-keys \
    PRIVATE_BUILD_DESC="geehrc_open_cis-user 4.4.2 KOT49I.E97520a E97520a.1403860296 release-keys"

