################################################################################
#
# arm-gnu-rm-toolchain
#
################################################################################

ARM_GNU_RM_TOOLCHAIN_SITE = https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2
ARM_GNU_RM_TOOLCHAIN_VERSION = 7-2018-q2-update
ARM_GNU_RM_TOOLCHAIN_SOURCE = gcc-arm-none-eabi-$(ARM_GNU_RM_TOOLCHAIN_VERSION)-linux.tar.bz2

define HOST_ARM_GNU_RM_TOOLCHAIN_INSTALL_CMDS
	mkdir -p $(HOST_DIR)/opt/gcc-arm/
	cp -a $(@D)/* $(HOST_DIR)/opt/gcc-arm-none-eabi/
endef

$(eval $(host-generic-package))
