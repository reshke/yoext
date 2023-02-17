# contrib/yobaext/Makefile

MODULE_big = yobaext

EXTENSION = yobaext
DATA = yobaext--1.0.sql 
PGFILEDESC = "yobaext - checks if tables need vacuum or analyze"

REGRESS = yobaext

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/yobaext
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
