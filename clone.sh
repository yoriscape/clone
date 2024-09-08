#!/bin/bash

# Variables
ALIOTH_DEVICE_REPO="https://github.com/Alioth-KonaCommon-Trees/android_device_xiaomi_alioth"
ALIOTH_VENDOR_REPO="https://github.com/Alioth-KonaCommon-Trees/android_vendor_xiaomi_alioth"
SM8250_DEVICE_REPO="https://github.com/Alioth-KonaCommon-Trees/android_device_xiaomi_sm8250-common"
SM8250_VENDOR_REPO="https://github.com/Alioth-KonaCommon-Trees/android_vendor_xiaomi_sm8250-common"
MUNCH_DEVICE_REPO="https://github.com/Alioth-KonaCommon-Trees/device_xiaomi_munch"
MUNCH_VENDOR_REPO="https://github.com/Alioth-KonaCommon-Trees/vendor_xiaomi_munch"

# Paths
DEVICE_DIR="device/xiaomi"
VENDOR_DIR="vendor/xiaomi"

# Step 1: Remove old trees repo
echo "cleaning up dir..."
rm -rf device/xiaomi/alioth
rm -rf device/xiaomi/sm8250-common
rm -rf device/xiaomi/munch
rm -rf vendor/xiaomi/alioth
rm -rf vendor/xiaomi/sm8250-common
rm -rf vendor/xiaomi/munch


# Step 1: Clone the private signing keys repository
echo "Cloning ALIOTH device/vendor trees.."
git clone $ALIOTH_DEVICE_REPO $DEVICE_DIR/alioth
git clone $ALIOTH_VENDOR_REPO $VENDOR_DIR/alioth

echo "Cloning MUNCH device/vendor trees.."
git clone $MUNCH_DEVICE_REPO $DEVICE_DIR/munch
git clone $MUNCH_VENDOR_REPO $VENDOR_DIR/munch

echo "Cloning SM8250 device/vendor trees.."
git clone $SM8250_DEVICE_REPO $DEVICE_DIR/sm8250-common
git clone $SM8250_VENDOR_REPO $VENDOR_DIR/sm8250-common
