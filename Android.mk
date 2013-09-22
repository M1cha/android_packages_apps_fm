LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src/com/cyanogenmod/fmradio) \
	src/com/cyanogenmod/fmradio/IFMRadioServiceCallbacks.aidl \
	src/com/cyanogenmod/fmradio/IFMRadioService.aidl \
	src/com/cyanogenmod/fmradio/IFMTransmitterServiceCallbacks.aidl \
	src/com/cyanogenmod/fmradio/IFMTransmitterService.aidl \


LOCAL_SRC_FILES +=  $(call all-java-files-under, src/com/cyanogenmod/utils)
LOCAL_PACKAGE_NAME := CMFMRadio
LOCAL_CERTIFICATE := platform
LOCAL_JNI_SHARED_LIBRARIES := libqcomfm_jni
LOCAL_JAVA_LIBRARIES := qcom.fmradio

include $(BUILD_PACKAGE)
