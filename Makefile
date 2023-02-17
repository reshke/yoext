# contrib/yoext/Makefile

MODULE_big = yoext

EXTENSION = yoext
DATA = yoext--1.0.sql 
PGFILEDESC = "yoext"

REGRESS = yoext

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/yoext
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
