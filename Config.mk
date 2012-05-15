#this file is used for Android compile configuration

include frameworks/base/media/CedarX-Projects/ProductorConfig

CEDARX_TOP := $(TOP)/frameworks/base/media/CedarX-Projects/CedarX
CEDARM_TOP := ${CEDARX_TOP}/libexternal/CedarM
CEDARX_ENABLE_MEMWATCH := N

CEDAR_AUDIOLIB_PATH := F23
CEDAR_ENCODER_VERSION := F23

CEDARX_EXT_CFLAGS :=-D__OS_ANDROID -D__CHIP_VERSION_$(CEDARX_CHIP_VERSION)
CEDARX_EXT_CFLAGS +=-D__CDX_ENABLE_SUBTITLE -D__CDX_ENABLE_DRM

ifeq ($(CEDARX_ENABLE_MEMWATCH),Y)
CEDARX_EXT_CFLAGS +=-DMEMWATCH -DMEMWATCH_STDIO -D__CDX_MEMWATCH -I${CEDARX_TOP}/libexternal/memwatch-2.71
endif

#ifeq ($(PLATFORM_VERSION),4.0.4)
CEDARX_ANDROID_VERSION := 6
CEDARX_RTSP_VERSION := 4
CEDARX_USE_SFTDEMUX := Y
CEDARX_EXT_CFLAGS +=-D__ANDROID_VERSION_4_0_1
#endif

ifeq ($(CEDARX_PRODUCTOR),TVD_001)
CEDARX_EXT_CFLAGS += -D__ENABLE_SWA_PLUGIN
endif