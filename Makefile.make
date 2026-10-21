ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME = rootless
TARGET = iphone:clang:latest:14.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FaceIDAutoHome

$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
