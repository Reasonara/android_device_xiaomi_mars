#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_HAS_UDFPS := true
TARGET_HAS_POWERSHARE := true

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Overlays
PRODUCT_PACKAGES += \
    ApertureMars \
    FrameworksResMars \
    SettingsProviderResMars \
    SettingsResMars \
    SystemUIResMars \
    WifiResMars

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/halsn.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mars/mars-vendor.mk)


# Axion Stuff
AXION_CAMERA_REAR_INFO := 50,48,48
AXION_CAMERA_FRONT_INFO := 20
AXION_PROCESSOR := Snapdragon_888
AXION_MAINTAINER := Dipsan
TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_INCLUDE_AXFX := true
TARGET_ENABLE_BLUR := true
TARGET_TOUCH_BOOST_SUPPORTED := true
TORCH_STR_SUPPORTED := true
BYPASS_CHARGE_SUPPORTED := true
