#
# Copyright 2015 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/nx510j/nx510j-vendor.mk)

#DEVICE_PACKAGE_OVERLAYS += device/zte/nx510j/overlay

# Inherit from u8833 device
$(call inherit-product, device/zte/nx510j/nx510j.mk)

PRODUCT_NAME := full_nx510j
PRODUCT_DEVICE := nx510j
PRODUCT_BRAND := Nubia
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Nubia NX510J