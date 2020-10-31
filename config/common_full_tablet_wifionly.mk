# Inherit full common Lineage stuff
$(call inherit-product, vendor/legion/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/legion/overlay/dictionaries
