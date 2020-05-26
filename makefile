TARGET = out
OBJS = main.o common.o file.o prxdecrypter_prx_01g.o prxdecrypter_prx_02g.o

INCDIR = include
CFLAGS = -O2 -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS) -c

LIBDIR = lib
LIBS = -lpspsemaphore -lpspmesgd_driver -lpsputilsforkernel
LDFLAGS =

#BUILD_PRX = 1
#PSP_FW_VERSION = 271

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = PRXdecrypter 2.7a
PSP_EBOOT_ICON = "ICON0.PNG"

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
