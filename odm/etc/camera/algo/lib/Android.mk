LOCAL_PATH := $(call my-dir)

################ prebuilt library #############
include $(CLEAR_VARS)

LOCAL_CHECK_ELF_FILES := false

LOCAL_MODULE        := libVideoLTM
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE  := false
LOCAL_MULTILIB      := 64
LOCAL_MODULE_TAGS   := optional
ifeq ($(SANITIZE_TARGET),hwaddress)
LOCAL_SRC_FILES := arm64-hwasan/libVideoLTM.so
else
LOCAL_SRC_FILES := arm64-v8a/libVideoLTM.so
endif
LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/odm/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)
