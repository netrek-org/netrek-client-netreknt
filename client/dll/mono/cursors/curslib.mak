#------
# curslib.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

curslib.dll : curslib.obj curslib.res
	$(LINKER) $(DLLFLAGS) -OUT:curslib.dll curslib.obj curslib.res $(GUILIBS)

curslib.obj : curslib.c
	$(CC) $(CFLAGS) curslib.c

curslib.res : curslib.rc
	$(RC) $(RCVARS) curslib.rc

