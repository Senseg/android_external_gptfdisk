LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := gdisk

LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

LOCAL_CFLAGS += \
	-D_ANDROID \
	-D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += \
	external/stlport/stlport \
	external/e2fsprogs/lib/ \
	bionic \
	$(KERNEL_HEADERS)


LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES  := \
	crc32.cc \
	support.cc \
	guid.cc \
	gptpart.cc \
	mbrpart.cc \
	basicmbr.cc \
	mbr.cc \
	gpt.cc \
	parttypes.cc \
	attributes.cc \
	diskio.cc \
	diskio-unix.cc \
	gdisk.cc \
	gpttext.cc \
	bsd.cc \

LOCAL_SYSTEM_SHARED_LIBRARIES := libext2_uuid libstlport libstdc++ libcutils libutils libc

include $(BUILD_EXECUTABLE)

