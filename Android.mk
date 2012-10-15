##################################################################
# author: Richard Luo                      
# date:   2012-01-26 16:57:45
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
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

LOCAL_MODULE := libreadline_droid

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include $(LOCAL_PATH)/../termcap-1.3.1/
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DREADLINE_CALLBACKS

LOCAL_SHARED_LIBRARIES := libtermcap_droid

# LOCAL_SHARED_LIBRARIES += libcutils
# LOCAL_SHARED_LIBRARIES += libbinder
# LOCAL_SHARED_LIBRARIES += libui


LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng

include $(BUILD_SHARED_LIBRARY)

# include $(BUILD_STATIC_LIBRARY)
# include $(BUILD_EXECUTABLE)
