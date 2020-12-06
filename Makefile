TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TheosBug

TheosBug_FILES = Tweak.x
TheosBug_CFLAGS = -fobjc-arc #-include PrefixShim.h
ADDITIONAL_CFLAGS += -DTHEOS_LEAN_AND_MEAN

logos : Tweak.x
	$(THEOS)/bin/logos.pl Tweak.x > Tweak.m

include $(THEOS_MAKE_PATH)/tweak.mk
