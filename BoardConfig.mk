include $(GENERIC_X86_CONFIG_MK)
LOCAL_PATH := device/samsung/santos103g

TARGET_BOARD_PLATFORM := clovertrail
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86
TARGET_CPU_ABI := x86
TARGET_CPU_VARIANT := x86
TARGET_ARCH_VARIANT_FPU := sse
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_BOOTLOADER_BOARD_NAME := santos103g
TARGET_CPU_SMP := true
TARGET_PRELINK_MODULE := false
INTEL_INGREDIENTS_VERSIONS := true


# customize the malloced address to be 16-byte aligned
BOARD_MALLOC_ALIGNMENT := 16

TARGET_PROVIDES_POWERHAL := true
#TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include


COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Security
#BUILD_WITH_CHAABI_SUPPORT := true
BUILD_WITH_WATCHDOG_DAEMON_SUPPORT := true
HAVE_SELINUX := true


# Make settings
#TARGET_NO_RECOVERY := true
#TARGET_NO_BOOTIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_NO_KERNEL := true
#BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy
#BOARD_SEPOLICY_UNION += domain.te surfaceflinger.te



#BOARD_KERNEL_CMDLINE := init=/init pci=noearly console=ttyS0 console=logk0 earlyprintk=nologger loglevel=4 hsu_dma=7 kmemleak=off androidboot.bootmedia=sdcard androidboot.hardware=santos103g androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789012345678901 ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on vmalloc=256M
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 20489216 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20826848
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1780373820
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1780373820
BOARD_FLASH_BLOCK_SIZE := 131072

# Enabling Houdini by default
INTEL_HOUDINI := true
ifdef ($(INTEL_HOUDINI))
ADDITIONAL_BUILD_PROPERTIES += ro.product.cpu.abi2=armeabi-v7a
ADDITIONAL_BUILD_PROPERTIES += ro.product.cpu.upgradeabi=armeabi-v7a
ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.houdini=on
endif


BOARD_DATA_DEVICE                       := /dev/block/mmcblk0p9
BOARD_DATA_FILESYSTEM                   := ext4
BOARD_CACHE_DEVICE                      := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM                  := ext4
BOARD_SYSTEM_DEVICE                     := /dev/block/mmcblk0p8
BOARD_SYSTEM_FILESYSTEM                 := ext4

#TARGET_KERNEL_SOURCE := /home/angel666/android/santos103g_kernel/
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel_bins/bzImage
#TARGET_KERNEL_CONFIG := angel666_santos10_open_r00_eng_defconfig
DEVICE_BASE_BOOT_IMAGE := $(LOCAL_PATH)/boot.img
DEVICE_BASE_RECOVERY_IMAGE := $(LOCAL_PATH)/recovery.img
#PDK_PLATFORM_ZIP_PRODUCT_BINARIES := $(LOCAL_PATH)/kernel_bins/vmlinux.bin.gz

# skip doc from building
BOARD_SKIP_ANDROID_DOC_BUILD := true
BUILD_WITH_FULL_STAGEFRIGHT := true


# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 21


# Ramdisk
#USE_PREBUILT_RAMDISK := true
#DEVICE_RAMDISK_CONTENT := $(LOCAL_PATH)/ramdisk
TARGET_PROVIDES_INIT := true
#TARGET_PROVIDES_INIT_TARGET_RC := true

#WiFi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4334
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcmdhd_sta.bin_b2"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcmdhd_apsta.bin_b2"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wifi/bcmdhd_p2p.bin_b2"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin_b2 nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin_b2 nvram_path=/system/etc/wifi/nvram_net.txt"
BOARD_HAVE_SAMSUNG_WIFI := true

# Blutetooth
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Audio
#COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

# Charging mode
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"

# GPS
BOARD_HAVE_GPS := true

#HW_Renderer
INTEL_HWC := true
#LIBENC_INCLUDED := true
#BOARD_USES_HWCOMPOSER := true
#USE_INTEL_UFO_DRIVER := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
BOARD_USE_LIBVA_INTEL_DRIVER := true
BOARD_USE_LIBVA := true
BOARD_USE_LIBMIX := true
BOARD_USES_WRS_OMXIL_CORE := true
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# TVOut & HDMI
#BOARD_USE_SECTVOUT := true
#BOARD_USES_SKTEXTBOX := true


# Enable WEBGL in WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Turn on GR_STATIC_RECT_VB flag in skia to boost performance
TARGET_USE_GR_STATIC_RECT_VB := true

BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
DEVICE_RESOLUTION := 1280x800
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/etc/recovery.fstab
#TARGET_RECOVERY_UI_LIB := librecovery_ui_santos103g
TW_INCLUDE_INJECTTWRP := true
TWRP_EVENT_LOGGING := false
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/kernel_bins/bzImage
#TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/recovery.init.rc
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"


