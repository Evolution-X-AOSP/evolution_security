This repository belongs to ```vendor/evolution/build/target/product/security```

After cloning to the specific path, please run generate-keys.sh

Please note, that ```mka evolution``` may not work properly if you have this repository cloned.

Please refer to [this AOSP documentation](https://android.googlesource.com/platform/external/avb/+/refs/tags/android-11.0.0_r39/README.md#build-system-integration) on how to assign custom AVB keys

Please check out the followings
```BOARD_AVB_ENABLE, BOARD_AVB_ALGORITHM, BOARD_AVB_KEY_PATH, BOARD_AVB_RECOVERY_KEY_PATH and BOARD_AVB_RECOVERY_ALGORITHM```
for device with vbmeta_system
```BOARD_AVB_VBMETA_SYSTEM_KEY_PATH, and BOARD_AVB_VBMETA_SYSTEM_ALGORITHM```

After putting it together, it should look like this
```
BOARD_AVB_ENABLE := true
BOARD_AVB_KEY_PATH := $(PROD_CERTS)/evolution_rsa4096.pem
BOARD_AVB_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := $(PROD_CERTS)/evolution_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
# For devices with VBMETA_SYSTEM
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := $(PROD_CERTS)/evolution_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
```

Please refer to AOSP documentation on AVB implementation for your device.

Please note that a clean flash is required when build signing keys get changed.

Please save your private keys to use in future builds, otherwise you would have to generate new keys, which would require further clean flashes. 

To build a production build, run
```mka evolution-prod```

If your device does not boot, please look out for any proprietary applications that may be using a presigned key instead of a platform key.

PRESIGNED -> platform as shown [here](https://github.com/Evolution-X/vendor_evolution/commit/fd89541cf17bc9af0cda461d71caeb6acc79e508)
Applications signed by Google can be kept as presigned.
