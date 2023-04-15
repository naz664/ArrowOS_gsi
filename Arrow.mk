$(call inherit-product, vendor/arrow/config/common.mk)
$(call inherit-product, vendor/arrow/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/arrow/config/BoardConfigArrow.mk)
$(call inherit-product, device/arrow/sepolicy/common/sepolicy.mk)
-include vendor/arrow/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

ARROW_GAPPS := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.system.ota.json_url=https://raw.githubusercontent.com/naz664/ArrowOS_gsi/13.1/ota.json

#prebuilts
PRODUCT_PACKAGES += \
  OpenEUICC \

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# APN
PRODUCT_PACKAGES += apns-conf.xml
