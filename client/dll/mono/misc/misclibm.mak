#------
# misclibm.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

misclibm.dll : misclibm.obj misclibm.res
	$(LINKER) $(DLLFLAGS) -OUT:misclibm.dll misclibm.obj misclibm.res $(GUILIBS)

misclibm.obj : misclibm.c
	$(CC) $(CFLAGS) misclibm.c

misclibm.res : misclibm.rc
	$(RC) $(RCVARS) misclibm.rc

