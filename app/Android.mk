LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform

LOCAL_STATIC_JAVA_LIBRARIES += guava
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-appcompat
LOCAL_STATIC_JAVA_LIBRARIES += appluginmanager

LOCAL_RENDERSCRIPT_TARGET_API := 18
LOCAL_RENDERSCRIPT_COMPATIBILITY := 18

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/appcompat/res

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_AAPT_FLAGS := --auto-add-overlay
LOCAL_AAPT_FLAGS += --no-version-vectors
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.appcompat

LOCAL_PACKAGE_NAME := TestAPP
LOCAL_PROGUARD_ENABLE := disable
LOCAL_DEX_PREOPT := false
LOCAL_PRIVATE_PLATFORM_APIS := true
include $(BUILD_PACKAGE)