# Inherit full common Legion stuff
$(call inherit-product, vendor/legion/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/legion/config/telephony.mk)
