LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := inject.c ptrace.c
LOCAL_MODULE := inj
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := -DANDROID -DTHUMB
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog
#LOCAL_C_INCLUDES := 
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:=  libhook.cpp
LOCAL_MODULE := libhook
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	libdl \
	libdvm \
	libandroid_runtime
LOCAL_LDLIBS := -L$(LOCAL_PATH) -landroid_runtime
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog
#LOCAL_C_INCLUDES := 
include $(BUILD_SHARED_LIBRARY)
