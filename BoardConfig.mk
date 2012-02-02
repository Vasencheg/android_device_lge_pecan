USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# inherit from the proprietary version
-include vendor/lge/pecan/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := pecan

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

BOARD_EGL_CFG := device/lge/pecan/configs/egl.cfg
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/pecan/netd/UsbController.cpp
TARGET_SPECIFIC_HEADER_PATH := device/lge/pecan/include

TARGET_PROVIDES_INIT_TARGET_RC := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true

TARGET_OTA_ASSERT_DEVICE := pecan

#recovery
BOARD_LDPI_RECOVERY := true
#BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_CUSTOM_GRAPHICS           := ../../../device/lge/pecan/recovery/graphics.c

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#TO TEST
#BOARD_FORCE_STATIC_A2DP := true

BOARD_GPS_LIBRARIES := libgps librpc
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pecan
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/pecan/netd/UsbController.cpp
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# VER_0_6_X does not search networks
WPA_SUPPLICANT_VERSION := VER_0_5_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME := wireless
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_HAS_LGE_SOFTAP := true

BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=pecan
BOARD_KERNEL_BASE := 0x02808000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
#dev:    size   erasesize  name
#mtd0: 00440000 00020000 "boot"
#mtd1: 0c800000 00020000 "system"
#mtd2: 00500000 00020000 "recovery"
#mtd3: 002c0000 00020000 "lgdrm"
#mtd4: 00100000 00020000 "splash"
#mtd5: 00100000 00020000 "FOTABIN"
#mtd6: 00640000 00020000 "FOTA"
#mtd7: 00040000 00020000 "misc"
#mtd8: 04000000 00020000 "cache"
#mtd9: 0bd80000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bd80000
BOARD_FLASH_BLOCK_SIZE := 131072

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

TARGET_PROVIDES_LIBAUDIO := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
TARGET_SF_NEEDS_REAL_DIMENSIONS := true

TARGET_PREBUILT_KERNEL := device/lge/pecan/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
