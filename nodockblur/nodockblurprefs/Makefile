include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NoDockBlurPrefs

NoDockBlurPrefs_FILES = NDBRootListController.m
NoDockBlurPrefs_INSTALL_PATH = /Library/PreferenceBundles
NoDockBlurPrefs_FRAMEWORKS = UIKit
NoDockBlurPrefs_PRIVATE_FRAMEWORKS = Preferences
NoDockBlurPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NoDockBlurPrefs.plist$(ECHO_END)
