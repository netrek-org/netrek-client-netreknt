# Microsoft Developer Studio Project File - Name="client" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=client - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "client.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "client.mak" CFG="client - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "client - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "client - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "client - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "src\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "win32" /I "win32\h" /I "include" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 libcmt.lib user32.lib gdi32.lib wsock32.lib kernel32.lib winmm.lib mpr.lib /nologo /subsystem:console /machine:I386 /nodefaultlib /out:"netrek.exe"
# Begin Custom Build
OutDir=.\Release
WkspDir=.
TargetPath=.\netrek.exe
InputPath=.\netrek.exe
SOURCE=$(InputPath)

"$(WkspDir)dummy" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	StampVer -vsrc\stampver.inf -i4 -j4 $(TargetPath) 
	copy fonts\ntfonts2.fon $(OutDir)\ntfonts2.fon 
	copy doc\xtrekrc $(OutDir) 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "client - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "src\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /Gm /GX /Zi /Od /I "win32" /I "win32\h" /I "include" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "DEBUG" /FR /YX /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 libcmt.lib user32.lib gdi32.lib wsock32.lib kernel32.lib winmm.lib mpr.lib /nologo /subsystem:console /debug /machine:I386 /nodefaultlib /out:"Debug/netrek.exe" /pdbtype:sept
# Begin Custom Build
OutDir=.\Debug
WkspDir=.
TargetPath=.\Debug\netrek.exe
InputPath=.\Debug\netrek.exe
SOURCE=$(InputPath)

"$(WkspDir)dummy" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	StampVer -vsrc\stampver.inf -i4 -j4 $(TargetPath) 
	copy fonts\ntfonts2.fon $(OutDir)\ntfonts2.fon 
	copy doc\xtrekrc $(OutDir) 
	
# End Custom Build

!ENDIF 

# Begin Target

# Name "client - Win32 Release"
# Name "client - Win32 Debug"
# Begin Group "src"

# PROP Default_Filter "c"
# Begin Source File

SOURCE=.\src\check.c
# End Source File
# Begin Source File

SOURCE=.\src\colors.c
# End Source File
# Begin Source File

SOURCE=.\src\cowmain.c
# End Source File
# Begin Source File

SOURCE=.\src\dashboard.c
# End Source File
# Begin Source File

SOURCE=.\src\dashboard3.c
# End Source File
# Begin Source File

SOURCE=.\src\data.c
# End Source File
# Begin Source File

SOURCE=.\src\death.c
# End Source File
# Begin Source File

SOURCE=.\src\defaults.c
# End Source File
# Begin Source File

SOURCE=.\src\defwin.c
# End Source File
# Begin Source File

SOURCE=.\src\distress.c
# End Source File
# Begin Source File

SOURCE=.\src\dmessage.c
# End Source File
# Begin Source File

SOURCE=.\src\docwin.c
# End Source File
# Begin Source File

SOURCE=.\src\enter.c
# End Source File
# Begin Source File

SOURCE=.\src\feature.c
# End Source File
# Begin Source File

SOURCE=.\src\findslot.c
# End Source File
# Begin Source File

SOURCE=.\src\getname.c
# End Source File
# Begin Source File

SOURCE=.\src\getship.c
# End Source File
# Begin Source File

SOURCE=.\src\helpwin.c
# End Source File
# Begin Source File

SOURCE=.\src\inform.c
# End Source File
# Begin Source File

SOURCE=.\src\input.c
# End Source File
# Begin Source File

SOURCE=.\src\interface.c
# End Source File
# Begin Source File

SOURCE=.\src\local.c
# End Source File
# Begin Source File

SOURCE=.\src\macrowin.c
# End Source File
# Begin Source File

SOURCE=.\src\main.c
# End Source File
# Begin Source File

SOURCE=.\src\map.c
# End Source File
# Begin Source File

SOURCE=.\src\mswindow.c
# End Source File
# Begin Source File

SOURCE=.\src\newwin.c
# End Source File
# Begin Source File

SOURCE=.\src\option.c
# End Source File
# Begin Source File

SOURCE=.\src\parsemeta.c
# End Source File
# Begin Source File

SOURCE=.\src\ping.c
# End Source File
# Begin Source File

SOURCE=.\src\pingstats.c
# End Source File
# Begin Source File

SOURCE=.\src\planetlist.c
# End Source File
# Begin Source File

SOURCE=.\src\playerlist.c
# End Source File
# Begin Source File

SOURCE=.\src\ranklist.c
# End Source File
# Begin Source File

SOURCE=.\src\redraw.c
# End Source File
# Begin Source File

SOURCE=.\src\reserved.c
# End Source File
# Begin Source File

SOURCE=.\src\rotate.c
# End Source File
# Begin Source File

SOURCE=.\src\senddist.c
# End Source File
# Begin Source File

SOURCE=.\src\short.c
# End Source File
# Begin Source File

SOURCE=.\src\sintab.c
# End Source File
# Begin Source File

SOURCE=.\src\smessage.c
# End Source File
# Begin Source File

SOURCE=.\src\socket.c
# End Source File
# Begin Source File

SOURCE=.\src\sound.c
# End Source File
# Begin Source File

SOURCE=.\src\spopt.c
# End Source File
# Begin Source File

SOURCE=.\src\stats.c
# End Source File
# Begin Source File

SOURCE=.\src\string_util.c
# End Source File
# Begin Source File

SOURCE=.\src\tools.c
# End Source File
# Begin Source File

SOURCE=.\src\udpopt.c
# End Source File
# Begin Source File

SOURCE=.\src\util.c
# End Source File
# Begin Source File

SOURCE=.\src\war.c
# End Source File
# Begin Source File

SOURCE=.\src\warning.c
# End Source File
# Begin Source File

SOURCE=.\src\winmain.c
# End Source File
# Begin Source File

SOURCE=.\src\winsndlib.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\src\main.ico
# End Source File
# Begin Source File

SOURCE=.\src\netrek.rc

!IF  "$(CFG)" == "client - Win32 Release"

!ELSEIF  "$(CFG)" == "client - Win32 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
