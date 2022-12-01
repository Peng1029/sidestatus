TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = sidestatuspref

sidestatuspref_FILES = SSPRootListController.m
sidestatuspref_FRAMEWORKS = UIKit
sidestatuspref_PRIVATE_FRAMEWORKS = Preferences
sidestatuspref_INSTALL_PATH = /Library/PreferenceBundles
sidestatuspref_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
