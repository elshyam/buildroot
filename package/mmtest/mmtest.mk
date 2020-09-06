################################################################################
#
# Could be any kernel module
################################################################################
MMTEST_VERSION = 9e659830ca7d72a16a30d18e4ea591d5cb3df5fc
MMTEST_SITE = $(call github,mysticTot,mmtest,$(MMTEST_VERSION))
MMTEST_LICENSE = GPLv2

define MMTEST_BUILD_CMDS
        $(MAKE) -C '$(@D)' 
endef

$(eval $(kernel-module))
$(eval $(generic-package))
