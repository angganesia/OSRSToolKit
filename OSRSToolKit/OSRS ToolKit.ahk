#NoEnv
#SingleInstance, force
SetWorkingDir %A_ScriptDir%
WinActivateBottom, RuneLite
SetTitleMatchMode, 2
;MODUL
#Include, modul/setup.ahk
#Include, modul/globalVar.ahk
#Include, modul/links.ahk
#Include, modul/guiLicence.ahk
#Include, modul/guiInfo.ahk
#Include, modul/inventory.ahk
#Include, modul/bank.ahk
#Include, modul/magic.ahk
#Include, modul/kordinat.ahk

;Script 
#Include, script/dropall.ahk

;#Include, modul/runelite.ahk
;#Include, modul/regionMaker.ahk
;#Include, modul/cursor.ahk


if FileExist("docs/config.ini") {
	FileReadLine, licenceAcepted, docs/config.ini, 1 ;config.ini has only one line with the word true or false.
	if (ErrorLevel) {
		MsgBox, 0 Error. The program will finish.
		Exitapp
	}
}else{
	FileAppend , false, docs/config.ini 
	if (ErrorLevel) {
		MsgBox, 1 Error. The program will finish.
		Exitapp
	}
} 


if (licenceAcepted == "false"){
	createGuiLicence()
}else if (licenceAcepted == "true"){
	 createGuiInfo("docs/info.txt")
}else{
	MsgBox, 3 Error. The program will finish.
	Exitapp
}

OnExit("ExitFunc")
return
;END OF AUTOEXECUTE SECTION



;#Include, modul/gui.ahk


MenuMagic(MenuMagic){
	;Global break_loop, scriptCicles

	Gui,Submit,Nohide
	WinActivate, RuneLite
	if (MenuMagic = ""){
		MsgBox, Pilih Script
	}
	if (MenuMagic = "Dropall"){
		dropall()
	}
	if (MenuMagic = "High Alch"){
		guiDebug("High Alch")
		#Include, script/HighAlch.ahk
	}
	if (MenuMagic = "Blue dhide body"){
		#Include, script/BlueDHideBody.ahk
	}
	if (MenuMagic = "Clear Grimy"){
		#Include, script/ClearGrimy.ahk
	}
} return
	

;GUI SETTING
TextHelp:
!H::
qwe("docs/info.txt")
return

Update:
	Gui,Submit,Nohide
	guiDebug("Update")
return

GuiClose:

ExitSub:
	ExitApp ;Exits the script completely
return

Reload:
home::
	reload
	ToolTip, Reload
	sleep, tikB(1)
	ToolTip
return


Stop:
pause::
  guiDebug("Stopping running script")
  break_loop = 1
  ;stop()
return


Start:
insert::
	MenuMagic(MenuMagic)
return


guiDebug(message){
  c_text = c_text
  GuiControlGet, c_text,,c_edit
  FormatTime, currentTime, , h:mm:ss tt
  GuiControl,, c_edit, %currentTime%: %message%`n%c_text%
}


F1 & LButton::
	Kordinat(1)
return

F2 & LButton::
	Kordinat(2)
return

F3 & LButton::
	Kordinat(3)
return

F4 & LButton::
	Kordinat(4)
return

F5 & LButton::
	Kordinat(5)
return

F6 & LButton::
	Kordinat(6)
return

F7 & LButton::
	Kordinat(7)
return

F8 & LButton::
	Kordinat(8)
return

F9 & LButton::
	Kordinat(9)
return

/*
C::
	CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1)
	tikb(2)
	CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2)
	MsgBox, x = %BaseColor1X% y = %BaseColor1Y% color = %BaseColor1% `n x = %BaseColor2X% y = %BaseColor2Y% color = %BaseColor2% 
	;clearRegions()
return
*/
Del::
	guiDebug("Suspend Update")
	suspend
return


Stopwatch:
timers += 1
if(timers > 59)
{
	timerm += 1
	timers := "0"
	GuiControl, , TText ,  %timerm%:%timers%
}
if(timers < 10)
{
	GuiControl, , TText ,  %timerm%:0%timers%
}
else
{
	GuiControl, , TText ,  %timerm%:%timers%
}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive
#Include, modul/exit.ahk