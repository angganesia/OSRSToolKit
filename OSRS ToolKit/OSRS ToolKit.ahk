#NoEnv
#SingleInstance, force
SetWorkingDir %A_ScriptDir%
WinActivateBottom, RuneLite
SetTitleMatchMode, 2
;MODUL
#include, modul/runelite.ahk
#Include, modul/setup.ahk
#Include, modul/globalVar.ahk
#Include, modul/links.ahk
#Include, modul/guiLicence.ahk
#Include, modul/guiInfo.ahk
#Include, modul/kordinat.ahk

;Script
#Include, script/dropall.ahk



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




MenuMagic(MenuMagic){

	Gui,Submit,Nohide
	WinActivate, RuneLite
	if (MenuMagic = ""){
		MsgBox, Pilih Script
	}

	;menu
	#Include, modul/menu.ahk

} return



;GUI SETTING

Update:
	Gui,Submit,Nohide
	guiDebug("Update")
return

mainGuiClose:
ExitSub:
	ExitApp ;Exits the script completely
return


guiDebug(message){
  c_text = c_text
  GuiControlGet, c_text,,c_edit
  FormatTime, currentTime, , h:mm:ss tt
  GuiControl,, c_edit, %currentTime%: %message%`n%c_text%
}


ExitFunc(){

	if (GetKeyState("Shift")){
		Send, {Shift up}
	}

}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive
#Include, modul/Stopwatch.ahk
#Include, modul/hotkey.ahk