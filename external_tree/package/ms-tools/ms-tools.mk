################################################################################
#
# ms-tools
#
################################################################################

MS_TOOLS_VERSION = 0.3.0
MS_TOOLS_SITE = $(call github,BertoldVdb,ms-tools,v$(MS_TOOLS_VERSION))

MS_TOOLS_LICENSE = MIT
MS_TOOLS_LICENSE_FILES = LICENSE

MS_TOOLS_BUILD_TARGETS = cli

define MS_TOOLS_COPY_CLI
	$(INSTALL) -D -m 755 $(@D)/bin/cli $(@D)/bin/ms-tools
endef
MS_TOOLS_POST_BUILD_HOOKS += MS_TOOLS_COPY_CLI

$(eval $(golang-package))
