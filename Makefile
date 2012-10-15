LIBNAME := libreadline_me.a

CODE_TYPE := c
CPPFLAGS += -DHAVE_CONFIG_H

include $(HOMESYS_ROOT)/kkbuild/common.mk
