# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# LegionOS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.legion.version=$(LEGION_VERSION) \
    ro.legion.releasetype=$(LEGION_BUILDTYPE) \
    ro.legion.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(LEGION_VERSION) \
    ro.legionlegal.url=https://legionos.org/legal

# LegionOS Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.legion.display.version=$(LEGION_DISPLAY_VERSION)

# LegionOS Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.legion.build.version.plat.sdk=$(LEGION_PLATFORM_SDK_VERSION)

# LegionOS Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.legion.build.version.plat.rev=$(LEGION_PLATFORM_REV)
