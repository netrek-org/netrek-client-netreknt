#------
# planlib.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

planlib.dll : planlib.obj planlib.res
	$(LINKER) $(DLLFLAGS) -OUT:planlib.dll planlib.obj planlib.res $(GUILIBS)

planlib.obj : planlib.c
	$(CC) $(CFLAGS) planlib.c

planlib.res : planlib.rc
	$(RC) $(RCVARS) planlib.rc
