##################################################################
# author: Richard Luo                      
# date:   2012-01-26 16:57:45
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

common_LOCAL_SRC_FILES := \
	src/bind.c \
	src/callback.c \
	src/compat.c \
	src/complete.c \
	src/display.c \
	src/funmap.c \
	src/histexpand.c \
	src/histfile.c \
	src/history.c \
	src/histsearch.c \
	src/input.c \
	src/isearch.c \
	src/keymaps.c \
	src/kill.c \
	src/macro.c \
	src/mbutil.c \
	src/misc.c \
	src/nls.c \
	src/parens.c \
	src/readline.c \
	src/rltty.c \
	src/savestring.c \
	src/search.c \
	src/shell.c \
	src/signals.c \
	src/terminal.c \
	src/text.c \
	src/undo.c \
	src/util.c \
	src/vi_mode.c \
	src/xfree.c \
	src/xmalloc.c \
	tilde.c

common_LOCAL_MODULE := libreadline_droid
common_LOCAL_SRC_FILES := $(common_LOCAL_SRC_FILES)

common_LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/../termcap

common_LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-DREADLINE_CALLBACKS

include $(CLEAR_VARS)

LOCAL_MODULE := $(common_LOCAL_MODULE)
LOCAL_SRC_FILES := $(common_LOCAL_SRC_FILES)
LOCAL_C_INCLUDES := $(common_LOCAL_C_INCLUDES)
LOCAL_CFLAGS := $(common_LOCAL_CFLAGS)

LOCAL_SHARED_LIBRARIES := libtermcap_droid

LOCAL_MODULE_TAGS := eng
LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := $(common_LOCAL_MODULE)
LOCAL_SRC_FILES := $(common_LOCAL_SRC_FILES)
LOCAL_C_INCLUDES := $(common_LOCAL_C_INCLUDES)
LOCAL_CFLAGS := $(common_LOCAL_CFLAGS)

LOCAL_STATIC_LIBRARIES := libtermcap_droid

LOCAL_MODULE_TAGS := eng
LOCAL_PRELINK_MODULE := false

include $(BUILD_STATIC_LIBRARY)
