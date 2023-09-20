#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from bluejay device
$(call inherit-product, device/google/bluejay/device.mk)

PRODUCT_DEVICE := bluejay
PRODUCT_NAME := lineage_bluejay
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bluejay_beta-user 14 U1B1.230908.003 10811961 release-keys"

BUILD_FINGERPRINT := google/bluejay_beta/bluejay:14/U1B1.230908.003/10811961:user/release-keys
