#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from sm8250_ac device
$(call inherit-product, device/oplus/sm8250_ac/device.mk)

# OFOX Screen
OF_SCREEN_H := 2400
OF_STATUS_H := 141
OF_STATUS_INDENT_LEFT := 160
OF_STATUS_INDENT_RIGHT := 20

# OFOX Other
OF_ENABLE_LPTOOLS := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_ENABLE_ALL_PARTITION_TOOLS := 1
OF_FORCE_PREBUILT_KERNEL := 1

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sm8250_ac
PRODUCT_NAME := twrp_sm8250_ac
PRODUCT_BRAND := OPLUS
PRODUCT_MODEL := sm8250_ac
PRODUCT_MANUFACTURER := OPLUS

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2127-12-31 \
    ro.bootimage.build.date.utc=0
