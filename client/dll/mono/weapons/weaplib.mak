#------
# weaplib.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

weaplib.dll : weaplib.obj weaplib.res
	$(LINKER) $(DLLFLAGS) -OUT:weaplib.dll weaplib.obj weaplib.res $(GUILIBS)

weaplib.obj : weaplib.c
	$(CC) $(CFLAGS) weaplib.c

weaplib.res : weaplib.rc
	$(RC) $(RCVARS) weaplib.rc
