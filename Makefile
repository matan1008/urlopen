TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = urlopen

urlopen_FILES = main.m
urlopen_FRAMEWORKS = MobileCoreServices
urlopen_CFLAGS = -fobjc-arc
urlopen_CODESIGN_FLAGS = -Sentitlements.plist
urlopen_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
