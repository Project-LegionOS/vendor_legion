# Copyright (C) 2019 LegionOS Project 2020
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ANDROID_VERSION := 11.0
LEGIONVERSION := v3.9

LEGION_BUILD_TYPE ?= UNOFFICIAL
LEGION_MAINTAINER ?= UNKNOWN
LEGION_BUILD_DATE := $(shell date +%Y%m%d)
TARGET_PRODUCT_SHORT := $(subst legion_,,$(LEGION_BUILD))

# ZIP TYPE
ifeq ($(WITH_GAPPS), true)
LEGION_BUILD_ZIP_TYPE := GAPPS
else
LEGION_BUILD_ZIP_TYPE := VANILLA
endif

# OFFICIAL_DEVICES
ifeq ($(LEGION_BUILD_TYPE), OFFICIAL)
   LIST = $(shell cat vendor/legion/legion.devices)
   ifeq ($(filter $(LEGION_BUILD), $(LIST)), $(LEGION_BUILD))
    IS_OFFICIAL=true
      LEGION_BUILD_TYPE := OFFICIAL

endif

ifneq ($(IS_OFFICIAL), true)
LEGION_BUILD_TYPE := UNOFFICIAL
$(error Device is not OFFICIAL "$(LEGION_BUILD)")
endif
endif

# MAIN
LEGION_VERSION := LegionOS-$(LEGIONVERSION)-$(LEGION_BUILD)-$(LEGION_BUILD_DATE)-$(LEGION_BUILD_TYPE)-$(LEGION_BUILD_ZIP_TYPE)

LEGION_MOD_VERSION :=$(ANDROID_VERSION)-$(LEGIONVERSION)

LEGION_DISPLAY_VERSION := LegionOS-$(LEGIONVERSION)-$(LEGION_BUILD_TYPE)

LEGION_FINGERPRINT := LegionOS/$(LEGION_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%H%M)
