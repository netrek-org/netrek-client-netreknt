#------
# shiplibm.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

shiplibm.dll : shiplibm.obj shiplibm.res
	$(LINKER) $(DLLFLAGS) -OUT:shiplibm.dll shiplibm.obj shiplibm.res $(GUILIBS)

shiplibm.obj : shiplibm.c
	$(CC) $(CFLAGS) shiplibm.c

shiplibm.res : shiplibm.rc
	$(RC) $(RCVARS) shiplibm.rc
