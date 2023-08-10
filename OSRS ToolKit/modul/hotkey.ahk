/*F5::
  ;Send, {ShiftUp}
  Reload
return
*/
^Esc::
  ;Send, {ShiftUp}
ExitApp


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

ctrl & RButton::
	cekKordinat()
return

Del::
	guiDebug("Suspend Update")
	suspend
return


insert::
Start:
	WinActivateBottom, RuneLite
	break_loop = 0
	MsgBox, Taruh cursor di posisi bank
	ToolTip, Start
	sleep, tikA(1)
	ToolTip
	MenuMagic(MenuMagic)
return

pause::
stop:
	WinActivateBottom, RuneLite
	ToolTip, Pause
	sleep, tikA(1)
	ToolTip
	guiDebug("Stopping running script")
	break_loop = 1
return

Reload:
home::
	reload
	ToolTip, Reload
	sleep, tikB(1)
	ToolTip
return

TextHelp:
!H::
qwe("docs/info.txt")
return