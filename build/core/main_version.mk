# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# LegionOS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.legion.buildtype=$(LEGION_BUILD_TYPE) \
    ro.legion.build.date=$(LEGION_BUILD_DATE) \
    ro.legion.display.version=$(LEGION_DISPLAY_VERSION) \
    ro.legion.android_version=$(ANDROID_VERSION) \
    ro.legion.releasetype=$(LEGION_BUILD_TYPE) \
    ro.legionversion=$(LEGIONVERSION) \
    ro.legion.version=$(LEGION_VERSION) \
    ro.modversion=$(LEGION_MOD_VERSION) \
    ro.legion.ziptype=$(LEGION_BUILD_ZIP_TYPE) \
    org.legion.fingerprint=$(LEGION_FINGERPRINT)
