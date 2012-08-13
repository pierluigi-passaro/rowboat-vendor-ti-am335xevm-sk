#
# Copyright (C) 2011 The Android Open-Source Project
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


PRODUCT_COPY_FILES := \
	device/ti/am335xevm_sk/init.am335xevm_sk.rc:root/init.am335xevm.rc \
	device/ti/am335xevm_sk/init.am335xevm_sk.usb.rc:root/init.am335xevm_sk.usb.rc \
	device/ti/am335xevm_sk/ueventd.am335xevm_sk.rc:root/ueventd.am335xevm_sk.rc \
	device/ti/am335xevm_sk/vold.fstab:system/etc/vold.fstab \
	device/ti/am335evm_sk/media_codecs.xml:system/etc/media_codecs.xml

# KeyPads
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

PRODUCT_PROPERTY_OVERRIDES := \
	hwui.render_dirty_regions=false

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
    device/ti/am335xevm_sk/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
	libaudioutils

# Bluetooth A2DP audio support
PRODUCT_PACKAGES += \
	audio.a2dp.default

PRODUCT_PACKAGES += \
        audio.primary.am335xevm \
        tinycap \
        tinymix \
        tinyplay

PRODUCT_PACKAGES += \
	dhcpcd.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs

# BlueZ test tools
PRODUCT_PACKAGES += \
	hciconfig \
	hcitool

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product, external/tslib/tslib.mk)

