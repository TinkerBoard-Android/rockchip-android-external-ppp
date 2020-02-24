LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

TARGET_PRELINK_MODULE := false

LOCAL_SRC_FILES := chat.c

LOCAL_SHARED_LIBRARIES := \
		libcutils\
		libutils\
		liblog\
		libcrypto


#LOCAL_C_INCLUDES :=  $(KERNEL_HEADERS)

LOCAL_CFLAGS := -DANDROID_CHANGES -DCHAPMS=1 -DMPPE=1 -Iexternal/openssl/include

LOCAL_CFLAGS += -Wno-unused-parameter -Wno-unused-variable -Wno-sign-compare -Wno-trigraphs

LOCAL_MODULE :=chat
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)