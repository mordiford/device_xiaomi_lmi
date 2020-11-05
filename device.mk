#
# Copyright (C) 2018 The LineageOS Project
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
#

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29

# Inherit from xiaomi sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/common.mk)

# Device parts
PRODUCT_PACKAGES += \
    DeviceParts

# Kernel modules
KERNEL_MODULES_ORIG := $(LOCAL_PATH)/prebuilt/modules
KERNEL_MODULES_DEST := $(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/lib/modules

PRODUCT_COPY_FILES += \
    $(KERNEL_MODULES_ORIG)/audio_adsp_loader.ko:$(KERNEL_MODULES_DEST)/audio_adsp_loader.ko \
    $(KERNEL_MODULES_ORIG)/audio_apr.ko:$(KERNEL_MODULES_DEST)/audio_apr.ko \
    $(KERNEL_MODULES_ORIG)/audio_bolero_cdc.ko:$(KERNEL_MODULES_DEST)/audio_bolero_cdc.ko \
    $(KERNEL_MODULES_ORIG)/audio_cs35l41.ko:$(KERNEL_MODULES_DEST)/audio_cs35l41.ko \
    $(KERNEL_MODULES_ORIG)/audio_hdmi.ko:$(KERNEL_MODULES_DEST)/audio_hdmi.ko \
    $(KERNEL_MODULES_ORIG)/audio_machine_kona.ko:$(KERNEL_MODULES_DEST)/audio_machine_kona.ko \
    $(KERNEL_MODULES_ORIG)/audio_mbhc.ko:$(KERNEL_MODULES_DEST)/audio_mbhc.ko \
    $(KERNEL_MODULES_ORIG)/audio_native.ko:$(KERNEL_MODULES_DEST)/audio_native.ko \
    $(KERNEL_MODULES_ORIG)/audio_pinctrl_lpi.ko:$(KERNEL_MODULES_DEST)/audio_pinctrl_lpi.ko \
    $(KERNEL_MODULES_ORIG)/audio_pinctrl_wcd.ko:$(KERNEL_MODULES_DEST)/audio_pinctrl_wcd.ko \
    $(KERNEL_MODULES_ORIG)/audio_platform.ko:$(KERNEL_MODULES_DEST)/audio_platform.ko \
    $(KERNEL_MODULES_ORIG)/audio_q6.ko:$(KERNEL_MODULES_DEST)/audio_q6.ko \
    $(KERNEL_MODULES_ORIG)/audio_q6_notifier.ko:$(KERNEL_MODULES_DEST)/audio_q6_notifier.ko \
    $(KERNEL_MODULES_ORIG)/audio_q6_pdr.ko:$(KERNEL_MODULES_DEST)/audio_q6_pdr.ko \
    $(KERNEL_MODULES_ORIG)/audio_rx_macro.ko:$(KERNEL_MODULES_DEST)/audio_rx_macro.ko \
    $(KERNEL_MODULES_ORIG)/audio_snd_event.ko:$(KERNEL_MODULES_DEST)/audio_snd_event.ko \
    $(KERNEL_MODULES_ORIG)/audio_stub.ko:$(KERNEL_MODULES_DEST)/audio_stub.ko \
    $(KERNEL_MODULES_ORIG)/audio_swr_ctrl.ko:$(KERNEL_MODULES_DEST)/audio_swr_ctrl.ko \
    $(KERNEL_MODULES_ORIG)/audio_swr.ko:$(KERNEL_MODULES_DEST)/audio_swr.ko \
    $(KERNEL_MODULES_ORIG)/audio_tfa98xx.ko:$(KERNEL_MODULES_DEST)/audio_tfa98xx.ko \
    $(KERNEL_MODULES_ORIG)/audio_tx_macro.ko:$(KERNEL_MODULES_DEST)/audio_tx_macro.ko \
    $(KERNEL_MODULES_ORIG)/audio_usf.ko:$(KERNEL_MODULES_DEST)/audio_usf.ko \
    $(KERNEL_MODULES_ORIG)/audio_va_macro.ko:$(KERNEL_MODULES_DEST)/audio_va_macro.ko \
    $(KERNEL_MODULES_ORIG)/audio_wcd938x.ko:$(KERNEL_MODULES_DEST)/audio_wcd938x.ko \
    $(KERNEL_MODULES_ORIG)/audio_wcd938x_slave.ko:$(KERNEL_MODULES_DEST)/audio_wcd938x_slave.ko \
    $(KERNEL_MODULES_ORIG)/audio_wcd9xxx.ko:$(KERNEL_MODULES_DEST)/audio_wcd9xxx.ko \
    $(KERNEL_MODULES_ORIG)/audio_wcd_core.ko:$(KERNEL_MODULES_DEST)/audio_wcd_core.ko \
    $(KERNEL_MODULES_ORIG)/audio_wsa881x.ko:$(KERNEL_MODULES_DEST)/audio_wsa881x.ko \
    $(KERNEL_MODULES_ORIG)/audio_wsa_macro.ko:$(KERNEL_MODULES_DEST)/audio_wsa_macro.ko \
    $(KERNEL_MODULES_ORIG)/br_netfilter.ko:$(KERNEL_MODULES_DEST)/br_netfilter.ko \
    $(KERNEL_MODULES_ORIG)/exfat.ko:$(KERNEL_MODULES_DEST)/exfat.ko \
    $(KERNEL_MODULES_ORIG)/gspca_main.ko:$(KERNEL_MODULES_DEST)/gspca_main.ko \
    $(KERNEL_MODULES_ORIG)/lcd.ko:$(KERNEL_MODULES_DEST)/lcd.ko \
    $(KERNEL_MODULES_ORIG)/llcc_perfmon.ko:$(KERNEL_MODULES_DEST)/llcc_perfmon.ko \
    $(KERNEL_MODULES_ORIG)/modules.alias:$(KERNEL_MODULES_DEST)/modules.alias \
    $(KERNEL_MODULES_ORIG)/modules.dep:$(KERNEL_MODULES_DEST)/modules.dep \
    $(KERNEL_MODULES_ORIG)/mpq-adapter.ko:$(KERNEL_MODULES_DEST)/mpq-adapter.ko \
    $(KERNEL_MODULES_ORIG)/mpq-dmx-hw-plugin.ko:$(KERNEL_MODULES_DEST)/mpq-dmx-hw-plugin.ko \
    $(KERNEL_MODULES_ORIG)/qca_cld3_wlan.ko:$(KERNEL_MODULES_DEST)/qca_cld3_wlan.ko \
    $(KERNEL_MODULES_ORIG)/rdbg.ko:$(KERNEL_MODULES_DEST)/rdbg.ko \
    $(KERNEL_MODULES_ORIG)/rmnet_perf.ko:$(KERNEL_MODULES_DEST)/rmnet_perf.ko \
    $(KERNEL_MODULES_ORIG)/rmnet_shs.ko:$(KERNEL_MODULES_DEST)/rmnet_shs.ko \
    $(KERNEL_MODULES_ORIG)/sla.ko:$(KERNEL_MODULES_DEST)/sla.ko \
    $(KERNEL_MODULES_ORIG)/tspp.ko:$(KERNEL_MODULES_DEST)/tspp.ko

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/lmi/lmi-vendor.mk)

# Floko specifics
TARGET_HAS_FOD := true
