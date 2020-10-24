#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Device parts
PRODUCT_PACKAGES += \
    DeviceParts

# Keylayout
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl

# Inherit proprietary files
$(call inherit-product, vendor/xiaomi/lmi/lmi-vendor.mk)

# This device has FOD
TARGET_HAS_FOD := true
# This device has strange FOD position
TARGET_HAS_FOD_OVERLAY := true
