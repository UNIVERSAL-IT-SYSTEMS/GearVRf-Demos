# MAKEFILE_LIST specifies the current used Makefiles, of which this is the last
# one. I use that to obtain the Application.mk dir then import the root
# Application.mk.
#ROOT_DIR := $(dir $(lastword $(MAKEFILE_LIST)))../../../../../..
#include $(ROOT_DIR)/Application.mk

APP_ABI := armeabi-v7a
APP_PLATFORM := android-19
NDK_MODULE_PATH := $(OVR_MOBILE_SDK)
APP_STL := gnustl_static