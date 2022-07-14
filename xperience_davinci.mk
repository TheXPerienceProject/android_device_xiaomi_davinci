#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common xperience stuff.
$(call inherit-product, vendor/xperience/config/common.mk)
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xperience_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys