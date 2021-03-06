LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES:= \
        OMX_G722Dec_Utils.c \
        OMX_G722Decoder.c

LOCAL_C_INCLUDES := $(TI_OMX_COMP_C_INCLUDES) \
        $(TI_OMX_SYSTEM)/common/inc \
        $(TI_OMX_AUDIO)/g722_dec/inc

LOCAL_SHARED_LIBRARIES := $(TI_OMX_COMP_SHARED_LIBRARIES) \
        liblog


LOCAL_LDLIBS += \
        -ldl \

LOCAL_CFLAGS := $(TI_OMX_CFLAGS) -DOMAP_2430

LOCAL_MODULE:= libOMX.TI.G722.decode
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
