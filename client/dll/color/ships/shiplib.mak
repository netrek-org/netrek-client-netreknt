#------
# shiplib.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

shiplib.dll : shiplib.obj shiplib.res
	$(LINKER) $(DLLFLAGS) -OUT:shiplib.dll shiplib.obj shiplib.res $(GUILIBS)

shiplib.obj : shiplib.c
	$(CC) $(CFLAGS) shiplib.c

shiplib.res : shiplib.rc
	$(RC) $(RCVARS) shiplib.rc
