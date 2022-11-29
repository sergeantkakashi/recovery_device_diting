#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from diting device
$(call inherit-product, device/xiaomi/diting/device.mk)

PRODUCT_DEVICE := diting
PRODUCT_NAME := omni_diting
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := diting
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="diting-user 12 SKQ1.220303.001 V13.0.4.0.SLFMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/diting/diting:12/SKQ1.220303.001/V13.0.4.0.SLFMIXM:user/release-keys
