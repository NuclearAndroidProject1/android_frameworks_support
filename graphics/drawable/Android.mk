# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

#static vector drawable library
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-vectordrawable
LOCAL_SDK_VERSION := 7
LOCAL_SRC_FILES := $(call all-java-files-under, static)

LOCAL_JAVA_LIBRARIES := android-support-v4

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res \

include $(BUILD_STATIC_JAVA_LIBRARY)

#Animated vector drawable library
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v11-animatedvectordrawable
LOCAL_SDK_VERSION := 11
LOCAL_SRC_FILES := $(call all-java-files-under, animated)

LOCAL_JAVA_LIBRARIES := android-support-v4

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res \

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v7-vectordrawable

include $(BUILD_STATIC_JAVA_LIBRARY)