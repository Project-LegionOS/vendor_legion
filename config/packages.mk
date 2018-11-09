# Copyright (C) 2018 The LeanOS-Project
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
# Required packages
PRODUCT_PACKAGES += \
    Gallery2 \
    Lean \
    LatinIME \
    Launcher3 \
    LiveWallpapers \
    LiveWallpapersPicker \
    messaging \
    SubstratumSignature \
    WellbeingPrebuilt \
    OmniStyle \
    WallpaperPickerGoogle \
    WeatherClient

# Weather
PRODUCT_COPY_FILES += \
    vendor/lean/prebuilt/common/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/permissions/org.pixelexperience.weather.client.xml

#ifeq ($(AOSIP_BUILDTYPE), Official)
#    PRODUCT_PACKAGES += \
#        Updater
#endif

 # Required packages
# Turbo
PRODUCT_PACKAGES += \
    Turbo \
    turbo.xml \
    privapp-permissions-turbo.xml

# Filesystems tools
PRODUCT_PACKAGES += \
    BluetoothExt \
    Calendar \
    ExactCalculator \
    LatinIME \
    Launcher3QuickStep \
    messaging \
    Stk

 # Extra tools
PRODUCT_PACKAGES += \
    7z \
    bash \
    bzip2 \
    curl \
    e2fsck \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    nano \
    openvpn \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

 # Exchange support
PRODUCT_PACKAGES += \
    Exchange2

 # exFAT tools
 PRODUCT_PACKAGES += \
    fsck.exfat \
    mkfs.exfat

 # Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

 # rsync
PRODUCT_PACKAGES += \
    rsync

 # Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

 # These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank
endif

# QS tile styles
PRODUCT_PACKAGES += \
    QStileCircleTrim \
    QStileDefault \
    QStileDualToneCircle \
    QStileSquircleTrim \
    QStileAttemptMountain \
    QStileCircleDualTone \
    QStileCircleGradient \
    QStileDottedCircle \
    QStileNinja \
    QStilePokesign \
    QStileWavey

 # Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Ambient Play
PRODUCT_PACKAGES += \
    AmbientPlayHistoryProvider
