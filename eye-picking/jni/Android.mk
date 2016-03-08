LOCAL_PATH := $(call my-dir)

#--------------------------------------------------------
# libvrcubeworld.so
#--------------------------------------------------------
include $(CLEAR_VARS)
LOCAL_MODULE    := gvrf
LOCAL_SRC_FILES := ../libs/libgvrf.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := assimp
LOCAL_SRC_FILES := ../libs/libassimp.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := jnlua
LOCAL_SRC_FILES := ../libs/libjnlua.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

include $(OVR_MOBILE_SDK)/cflags.mk
#include ../../../../../cflags.mk

LOCAL_MODULE			:= vrcubeworld
LOCAL_SRC_FILES			:= VrCubeWorld_Framework.cpp
LOCAL_STATIC_LIBRARIES	+= systemutils vrsound vrlocale vrgui vrappframework libovrkernel
LOCAL_SHARED_LIBRARIES	+= vrapi
LOCAL_SHARED_LIBRARIES	+= gvrf

include $(BUILD_SHARED_LIBRARY)

$(call import-module,LibOVRKernel/Projects/AndroidPrebuilt/jni)
$(call import-module,VrApi/Projects/AndroidPrebuilt/jni)
$(call import-module,VrAppFramework/Projects/AndroidPrebuilt/jni)
$(call import-module,VrAppSupport/SystemUtils/Projects/AndroidPrebuilt/jni)
$(call import-module,VrAppSupport/VrGUI/Projects/AndroidPrebuilt/jni)
$(call import-module,VrAppSupport/VrLocale/Projects/AndroidPrebuilt/jni)
$(call import-module,VrAppSupport/VrSound/Projects/AndroidPrebuilt/jni)
