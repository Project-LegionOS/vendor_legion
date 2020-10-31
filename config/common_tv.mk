# Inherit common Lineage stuff
$(call inherit-product, vendor/legion/config/common.mk)

# Inherit Lineage atv device tree
$(call inherit-product, device/legion/atv/legion_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Lineage packages
PRODUCT_PACKAGES += \
    AppDrawer \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/legion/overlay/tv
