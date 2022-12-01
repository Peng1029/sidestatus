TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SideStatus

SideStatus_FILES = Tweak.xm
SideStatus_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += sidestatuspref
include $(THEOS_MAKE_PATH)/aggregate.mk
