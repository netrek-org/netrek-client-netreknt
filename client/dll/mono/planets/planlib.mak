#------
# planlib.mak makefile
#------

LINKER = link
DLLFLAGS = -SUBSYSTEM:windows -DLL
GUILIBS = -DEFAULTLIB:user32.lib gdi32.lib winmm.lib comdlg32.lib comctl32.lib
RC = rc

planlibb.dll : planlib.obj planlibb.res
	$(LINKER) $(DLLFLAGS) -OUT:planlibb.dll planlib.obj planlibb.res $(GUILIBS)

planlibr.dll : planlib.obj planlibr.res
	$(LINKER) $(DLLFLAGS) -OUT:planlibr.dll planlib.obj planlibr.res $(GUILIBS)

planlibm.dll : planlib.obj planlibm.res
	$(LINKER) $(DLLFLAGS) -OUT:planlibm.dll planlib.obj planlibm.res $(GUILIBS)

planlib.obj : planlib.c
	$(CC) $(CFLAGS) planlib.c

planlibb.res : planlibb.rc
	$(RC) $(RCVARS) planlibb.rc

planlibr.res : planlibr.rc
	$(RC) $(RCVARS) planlibr.rc

planlibm.res : planlibm.rc
	$(RC) $(RCVARS) planlibm.rc
