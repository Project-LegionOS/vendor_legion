# Inherit full common Lineage stuff
$(call inherit-product, vendor/legion/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
