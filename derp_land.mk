#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Derpfest stuff.
DERP_BUILDTYPE := Unofficial
USE_PIXEL_CHARGING := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from land device
$(call inherit-product, device/xiaomi/land/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := land
PRODUCT_NAME := derp_land
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3S / 3X
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
USE_LEGACY_BOOTANIMATION := true

TARGET_DISABLE_POSTRENDER_CLEANUP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := TARGET_SUPPORTS_GOOGLE_RECORDER

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V10.2.2.0.MALMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys"
