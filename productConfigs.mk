ifeq ($(PLATFORM_SDK_VERSION),)
IS_ANDROID_OS = false
IS_RKISP = true
IS_RKISP_v12 = true 
IS_RK_ISP10 = false
IS_RK_ISP11 = false
IS_NEED_SHARED_PTR = false
IS_NEED_COMPILE_STLPORT = false
IS_NEED_LINK_STLPORT = false
IS_NEED_COMPILE_TINYXML2 = true
IS_NEED_COMPILE_EXPAT = true
IS_SUPPORT_ION = false
IS_SUPPORT_DMABUF = true
IS_BUILD_GSTREAMER_PLUGIN = true
IS_BUILD_TEST_APP = false
CROSS_COMPILE ?= /home/zyc/toolchains/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
else
IS_ANDROID_OS = true
IS_RKISP = true
IS_RKISP_v12 = false
IS_RK_ISP10 = false
IS_RK_ISP11 = false
IS_NEED_SHARED_PTR = false
IS_NEED_COMPILE_STLPORT = false
IS_NEED_LINK_STLPORT = false
IS_NEED_COMPILE_TINYXML2 = true
IS_NEED_COMPILE_EXPAT = true
IS_SUPPORT_ION = false
IS_SUPPORT_DMABUF = true
IS_BUILD_GSTREAMER_PLUGIN = false
IS_BUILD_TEST_APP = false
#CROSS_COMPILE ?= /home/jacobchen/mksdk/compiler/gcc-linaro-5.5.0-2017.10-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
endif

ifeq ($(IS_ANDROID_OS),true)
PRJ_CPPFLAGS := -DANDROID_OS
endif

ifeq ($(IS_RKISP),true)
PRJ_CPPFLAGS += -DRKISP=1
endif

ifeq ($(IS_RKISP_v12),true)
PRJ_CPPFLAGS += -DRKISP_v12=1
endif

ifeq ($(IS_RK_ISP10),true)
PRJ_CPPFLAGS := -DRK_ISP10=1
endif

ifeq ($(IS_RK_ISP11),true)
PRJ_CPPFLAGS := -DRK_ISP11=1
endif
