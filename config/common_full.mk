# Inherit common Legion stuff
$(call inherit-product, vendor/legion/config/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
