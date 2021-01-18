#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common aicp stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#FOD
# FOD
TARGET_HAS_FOD =: true
EXTRA_FOD_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := F2 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 10 QKQ1.191117.002 V12.0.4.0.QJKMIXM release-keys"

BUILD_FINGERPRINT := POCO/lmi/lmi:10/QKQ1.191117.002/V12.0.4.0.QJKMIXM:user/release-keys
