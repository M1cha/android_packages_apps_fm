LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src/com/cyanogenmod/fmradio) \
	src/com/cyanogenmod/fmradio/IFMRadioServiceCallbacks.aidl \
	src/com/cyanogenmod/fmradio/IFMRadioService.aidl \
	src/com/cyanogenmod/fmradio/IFMTransmitterServiceCallbacks.aidl \
	src/com/cyanogenmod/fmradio/IFMTransmitterService.aidl \


#ifeq ($(call is-android-codename-in-list,JELLY_BEAN ICECREAM_SANDWICH HONEYCOMB),true)
LOCAL_SRC_FILES +=  $(call all-java-files-under, src/com/cyanogenmod/hc_utils)
#else
#LOCAL_SRC_FILES +=  $(call all-java-files-under, src/com/cyanogenmod/utils)
#endif
LOCAL_PACKAGE_NAME := CMFMRadio
LOCAL_CERTIFICATE := platform
LOCAL_JNI_SHARED_LIBRARIES := libqcomfm_jni
LOCAL_JAVA_LIBRARIES := qcom.fmradio

include $(BUILD_PACKAGE)
