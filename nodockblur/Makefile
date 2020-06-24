
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = armv7 armv7s arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoDockBlur

NoDockBlur_FILES = Tweak.x
NoDockBlur_CFLAGS = -fobjc-arc
NoDockBlur_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
