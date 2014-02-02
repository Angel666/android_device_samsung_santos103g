# Copyright (C) 2010 The Android Open Source Project
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
include $(CLEAR_VARS)
include $(call all-makefiles-under,$(LOCAL_PATH))
# include x86 encoder (apache-harmony (intel))
include $(TOP)/dalvik/vm/compiler/codegen/x86/libenc/Android.mk
include $(TOP)/hardware/intel/apache-harmony/Android.mk
# include the non-open-source counterpart to this file
-include vendor/samsung/santos103g/AndroidBoardVendor.mk

