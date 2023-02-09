#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP? stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X662 device
$(call inherit-product, device/infinix/X662/device.mk)

PRODUCT_DEVICE := X662
PRODUCT_NAME := twrp_X662
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Hot 11
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x662_h6914-user 11 RP1A.200720.011 171617 release-keys"

BUILD_FINGERPRINT := Infinix/X662-TR/Infinix-X662:11/RP1A.200720.011/211009V309:user/release-keys
