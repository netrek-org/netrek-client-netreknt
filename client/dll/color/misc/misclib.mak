#------
# misclib.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

misclib.dll : misclib.obj misclib.res
	$(LINKER) $(DLLFLAGS) -OUT:misclib.dll misclib.obj misclib.res $(GUILIBS)

misclib.obj : misclib.c
	$(CC) $(CFLAGS) misclib.c

misclib.res : misclib.rc
	$(RC) $(RCVARS) misclib.rc
