# Based on device/htc/flounder

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15

TARGET_2ND_ARCH :=
TARGET_2ND_ARCH_VARIANT :=
TARGET_2ND_CPU_ABI :=
TARGET_2ND_CPU_ABI2 :=
TARGET_2ND_CPU_VARIANT :=

BUILD_EMULATOR := false

TARGET_NO_RADIOIMAGE := true

BOARD_KERNEL_CMDLINE += androidboot.hardware=apalis_tk1

TARGET_BOARD_PLATFORM := tegra124

TARGET_SPECIFIC_HEADER_PATH := device/antmicro/apalis_tk1/include
TARGET_BOARD_INFO_FILE := device/antmicro/apalis_tk1/board-info.txt

TARGET_BOOTLOADER_BOARD_NAME := apalis_tk1

USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 2
BOARD_DISABLE_TRIPLE_BUFFERED_DISPLAY_SURFACES := true

TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368 # 768MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 805306368 # 768MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_USES_GENERIC_INVENSENSE := false

# RenderScript
OVERRIDE_RS_DRIVER := libnvRSDriver.so
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a15

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := false

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# TODO:
# healthd - battery/power stats
# dumpstate - debug info dump
#BOARD_HAL_STATIC_LIBRARIES := libdumpstate.flounder libhealthd.flounder

# TODO:
# sensors
#BOARD_VENDOR_USE_SENSOR_HAL := sensor_hub

# GPS related defines
TARGET_NO_RPC := true
BOARD_USES_QCOM_HARDWARE_GPS := false

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
# TODO: taken from our previous versions - try N9 ones
WIFI_DRIVER_FW_PATH_PARAM   := "/dev/null"
WIFI_DRIVER_FW_PATH_STA     :=
WIFI_DRIVER_FW_PATH_AP      :=
#WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"

BOARD_SEPOLICY_DIRS += device/antmicro/apalis_tk1/sepolicy
BOARD_SECCOMP_POLICY += device/antmicro/apalis_tk1/seccomp

# TODO: ???
#BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1

# Don't dex preopt apps to avoid I/O congestion due to paging larger sized
# pre-compiled .odex files as opposed to background generated interpret-only
# odex files.
WITH_DEXPREOPT_BOOT_IMG_ONLY := true

TARGET_RELEASETOOLS_EXTENSIONS := device/antmicro/apalis_tk1

ART_USE_HSPACE_COMPACT=true

# let charger mode enter suspend
BOARD_CHARGER_ENABLE_SUSPEND := true

MALLOC_SVELTE := true

USE_CLANG_PLATFORM_BUILD := true

# Use the non-open-source parts, if they're present
# TODO: nv libs
#-include vendor/htc/flounder/BoardConfigVendor.mk
