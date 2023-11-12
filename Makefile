FINALPACKAGE = 1
THEOS_PACKAGE_SCHEME = rootless
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = libfaketouch

libfaketouch_FILES = Tweak.x \
	Source/CGGeometry-KIFAdditions.m \
	Source/IOHIDEvent+KIF.m \
	Source/MyPTFakeMetaTouch.m \
	Source/UIApplication-KIFAdditions.m \
	Source/UIEvent+KIFAdditions.m \
	Source/UITouch-KIFAdditions.m \
	Source/UIView-KIFAdditions.m \
	Source/UIWindow-KIFAdditions.m

libfaketouch_FRAMEWORKS = CoreGraphics QuartzCore UIKit IOKit
libfaketouch_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
