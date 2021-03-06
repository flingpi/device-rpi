
TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp

TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s

# We have a prebuilt kernel, but it's not used in the same way as the
# typical gonk build setup.
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true

USE_OPENGL_RENDERER := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_HAVE_BLUETOOTH := false
USE_CAMERA_STUB := true

BOARD_HAVE_BRCM_DAG := true

BOARD_WIFI_VENDOR := realtek
BOARD_WLAN_DEVICE := rtl8192cu
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER :=NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_rtl
WIFI_DRIVER_MODULE_NAME := 8192cu
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/8192cu.ko

WIFI_DRIVER_MODULE_ARG := ""
WIFI_FIRMWARE_LOADER := ""
WIFI_DRIVER_FW_PATH_STA := ""
WIFI_DRIVER_FW_PATH_AP := ""
WIFI_DRIVER_FW_PATH_P2P := ""
WIFI_DRIVER_FW_PATH_PARAM := ""

# Disabling skia-gpu for now while GL isn't 100% functional.
GECKO_CONFIGURE_ARGS := \
	--with-arch=armv6 \
	--disable-b2g-bt \
	--disable-b2g-ril \
	--disable-skia-gpu

GAIA_DEVICE_TYPE := tablet
BOARD_GAIA_MAKE_FLAGS := NOFTU=1 NO_LOCK_SCREEN=1 # GAIA_MEMORY_PROFILE=low ?
