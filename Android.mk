LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_ARM_MODE := arm
LOCAL_MODULE := HonokaMiku
LOCAL_SRC_FILES := $(wildcard src/*.cc)
LOCAL_CPPFLAGS := -fexceptions
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib
LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

include $(BUILD_EXECUTABLE)