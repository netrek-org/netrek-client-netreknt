#
# =========================================================================
# COW on Win32 Makefile
#
# This makefile is written for Microsoft Visual C++ 5.0
#
#

# Definitions needed to be changed before compile

!INCLUDE ..\system.mk

# Microsoft Visual C++ defs
# hc == help compiler?
cc     = cl
rc     = rc
hc     = hcw
link   = link
implib = lib
compileandlink = cl

# MS Visual C++ (v4.0) options
# /nologo   - no banner
# /MT       - Multi-threaded app
# /Ox       - max optimization
# /Od       - disable optimizations
# /G4       - 486 optimized code
# /G5       - Pentium optimized code
# /c        - compile only
# /Zi       - debugging info
# /Fr[file] - generate browse info

!IFDEF DEBUG
cflags = /nologo /MT -DWIN32 /Ox /G5 /Zi
ccompileonly = /c
!ELSE
cflags = /nologo /MT -DWIN32 /O2 /G5 
ccompileonly = /c
!ENDIF

# resource compiler
rcvars = -DWIN32 

########################################
# Link flags
#

!IFDEF DEBUG
ldebug = /INCREMENTAL:NO /DEBUG
!ELSE
ldebug = /INCREMENTAL:NO
!ENDIF

########################################

# declarations common to all linker options

lflags = /STACK:8192
#Dunno here...
conlflags = $(lflags) /NODEFAULTLIB /SUBSYSTEM:CONSOLE /MACHINE:IX86
guilflags = $(lflags) /SUBSYSTEM:CONSOLE
lout      = "/OUT:"

LIBS =  libcmt.lib user32.lib gdi32.lib\
        wsock32.lib kernel32.lib winmm.lib mpr.lib

!IFDEF RSA
GMPLIB = ..\Win32\lib\libgmp.lib ..\Win32\lib\libmp.lib
!ENDIF

# ---------------------------------------------------------------------------
# - Start of makefile proper

INCS = -I..\win32 -I..\win32\h -I..\include
ARCH = Intel/Win32

!IFDEF RSA
RSADEFS = -DRSA
!endif

!ifdef DEBUG
DEBUGDEFS = -DDEBUG
!endif

ROBJ            = check.obj colors.obj data.obj death.obj defaults.obj dmessage.obj\
                  enter.obj findslot.obj getname.obj getship.obj helpwin.obj inform.obj\
                  interface.obj newwin.obj option.obj planetlist.obj macrowin.obj\
                  map.obj playerlist.obj ranklist.obj reserved.obj sintab.obj\
                  smessage.obj socket.obj stats.obj util.obj war.obj warning.obj\
                  udpopt.obj ping.obj pingstats.obj rotate.obj parsemeta.obj\
                  spopt.obj dashboard.obj dashboard3.obj\
                  short.obj distress.obj senddist.obj defwin.obj tools.obj sound.obj\
                  docwin.obj feature.obj\
                  string_util.obj local.obj cowmain.obj 

RSRC            = check.c colors.c data.c death.c defaults.c dmessage.c\
                  enter.c findslot.c getname.c getship.c helpwin.c inform.c\
                  input.c interface.c newwin.c option.c planetlist.c\
                  macrowin.c map.c playerlist.c ranklist.c redraw.c\
                  smessage.c parsemeta.c socket.c stats.c util.c war.c\
                  warning.c udpopt.c sintab.c ping.c pingstats.c rotate.c\
                  spopt.c dashboard.c dashboard3.c\
                  short.c distress.c senddist.c defwin.c tools.c sound.c\
                  docwin.c feature.c reserved.c\
                  string_util.c local.c cowmain.c

INPUTOBJ        = input.obj redraw.obj 
MAINOBJ         = main.obj
MAINSRC         = main.c

!ifdef RSA
RSASRC = rsa_clientutil.c rsa_box.c rsa_box_0.c rsa_box_1.c rsa_box_2.c\
		rsa_box_3.c rsa_box_4.c
RSAOBJ = rsa_clientutil.obj rsa_box.obj rsa_box_0.obj rsa_box_1.obj rsa_box_2.obj\
		rsa_box_3.obj rsa_box_4.obj
!endif

WIN32_SRCS = winmain.c mswindow.c winsndlib.c
WIN32_OBJS = winmain.obj mswindow.obj winsndlib.obj

RANDOMOBJ = random.obj

INCLUDES        = struct.h packets.h defs.h copyright.h bitmaps.h data.h\
                  oldbitmaps.h tngbitmaps.h hullbitmaps.h rabbitbitmaps.h\
                  sound.h audio.h litebitmaps.h copyright2.h Wlib.h\
		  playerlist.h version.h patchlevel.h moobitmaps.h\
		  parsemeta.h spopt.h map.h string_util.h wtext.h local.h

all: netrek.exe


OBJS = $(ROBJ) $(MAINOBJ) $(RSAOBJ) $(INPUTOBJ) $(WIN32_OBJS) $(RANDOMOBJ)

.c.obj:
        $(cc) $(cflags) $(ccompileonly) $(cdebug) $(DEFS) $(RSADEFS) $(DEBUGDEFS) $(INCS) $<

RESOURCES = netrekm.res netrekc.res

$(RESOURCES): netrek.rc
	rc netrek.rc

netrek.mif: Makefile
		@echo $(conlflags) $(ldebug) $(lout)netrek.exe > $@
		@echo netrek.res >> $@
		@echo $(GMPLIB) $(LIBS) >> $@
		for %i in ($(ROBJ)) do echo %i >> $@
		for %i in ($(MAINOBJ)) do echo %i >> $@
		for %i in ($(RSAOBJ)) do echo %i >> $@
		for %i in ($(INPUTOBJ)) do echo %i >> $@
		for %i in ($(WIN32_OBJS)) do echo %i >> $@
		for %i in ($(RANDOMOBJ)) do echo %i >> $@

netrek.exe:  $(OBJS) $(RESOURCES) warn.cur trek.cur main.ico netrek.mif
		$(link) @netrek.mif
		stampver -vstampver.inf -i4 -j4 netrek.exe
		copy netrek.exe ..\..\..\dist

clean:
	del *.obj
