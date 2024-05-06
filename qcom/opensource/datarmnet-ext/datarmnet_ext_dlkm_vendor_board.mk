#Build rmnet modules
DATA_OFFLOAD_DLKM_BOARD_PLATFORMS_LIST := lahaina
DATA_OFFLOAD_DLKM_BOARD_PLATFORMS_LIST += taro
DATA_OFFLOAD_DLKM_BOARD_PLATFORMS_LIST += parrot
DATA_SHS_DLKM_BOARD_PLATFORMS_LIST := lahaina
DATA_SHS_DLKM_BOARD_PLATFORMS_LIST += taro
DATA_APS_DLKM_BOARD_PLATFORMS_LIST += taro
DATA_SHS_DLKM_BOARD_PLATFORMS_LIST += parrot
DATA_APS_DLKM_BOARD_PLATFORMS_LIST += parrot

ifneq ($(TARGET_BOARD_AUTO),true)
ifeq ($(call is-board-platform-in-list,$(DATA_OFFLOAD_DLKM_BOARD_PLATFORMS_LIST)),true)
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/rmnet_offload.ko
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/rmnet_perf_tether.ko
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/rmnet_perf.ko
endif
ifeq ($(call is-board-platform-in-list,$(DATA_SHS_DLKM_BOARD_PLATFORMS_LIST)),true)
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/rmnet_shs.ko
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/rmnet_wlan.ko
endif
ifeq ($(call is-board-platform-in-list,$(DATA_APS_DLKM_BOARD_PLATFORMS_LIST)),true)
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/rmnet_aps.ko
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/rmnet_sch.ko
endif
endif
