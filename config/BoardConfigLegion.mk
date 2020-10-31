include vendor/legion/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/legion/config/BoardConfigQcom.mk
endif

include vendor/legion/config/BoardConfigSoong.mk
