#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mars device
$(call inherit-product, device/xiaomi/mars/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := mars
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2102K1AC
PRODUCT_NAME := lineage_mars

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mars-user 14 UKQ1.240624.001 V2.0.7.0.UKACNXM release-keys" \
    BuildFingerprint=Xiaomi/mars/mars:14/UKQ1.240624.001/V2.0.7.0.UKACNXM:user/release-keys \
    DeviceProduct=mars \
    SystemName=mars

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 50,48,48
AXION_CAMERA_FRONT_INFO := 20

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := Dipsan 

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_888

