#
# Copyright (C) 2020 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit common XPerience configuration
$(call inherit-product, vendor/xperience/config/common_full_phone.mk)

include device/qcom/common/common.mk

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

#call tcmiface in boot
PRODUCT_BOOT_JARS += tcmiface

# Override build properties
PRODUCT_NAME := xperience_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "Xiaomi/davinci/davinci:10/QKQ1.190825.002/V11.0.1.0.QFJMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="davinci-user 10 QKQ1.190825.002 V11.0.1.0.QFJMIXM release-keys" \
    PRODUCT_NAME="davinci" \
    TARGET_DEVICE="davinci"