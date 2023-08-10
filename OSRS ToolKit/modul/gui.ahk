

	Gui, main:New, -Resize +MinimizeBox -MaximizeBox +HwndGuiHwnd +AlwaysOnTop,
	Gui, main:Color, 0x22262A, 0x393F46
	Gui, main:Font , cWhite , Verdana

	Gui, main:add, Tab3, , General||Settings
	Gui,main:tab, General
	Gui, main:add, Text, x20 y+10 w100 vStopwatch, %timerm%:%timers%
	Settimer, Stopwatch, 1000
	Gui, main:add, Text, x+5 w200 vUpdateXP, Not Start
	Gui, main:add, Text, x20 y+10 w100, Menu script
	#Include, modul/menuGui.ahk
	Gui, main:add, Button, x+5 w20 gTextHelp vTextHelp, ?

	Gui, main:add, Button, x20 y+10 w100 gStart vStart, Start
	Gui, main:add, Button, x+5 w100 gStop vStop, Stop
	Gui, main:add, Button, x+5 w100 gReload vReload, Reload

	Gui, main:add, Edit, x20 y+20 w100 gKordinat vBaseColor1 ReadOnly, Kordinat 1
	Gui, main:add, Edit, x+5 w100 gKordinat vBaseColor2 ReadOnly, Kordinat 2
	Gui, main:add, Edit, x+5 w100 gKordinat vBaseColor3 ReadOnly, Kordinat 3
	Gui, main:add, Edit, x20 y+20 w100 gKordinat vBaseColor4 ReadOnly, Kordinat 4
	Gui, main:add, Edit, x+5 w100 gKordinat vBaseColor5 ReadOnly, Kordinat 5
	Gui, main:add, Edit, x+5 w100 gKordinat vBaseColor6 ReadOnly, Kordinat 6
	Gui, main:add, Edit, x20 y+20 w100 gKordinat vBaseColor7 ReadOnly, Kordinat 7
	Gui, main:add, Edit, x+5 w100 gKordinat vBaseColor8 ReadOnly, Kordinat 8
	Gui, main:add, Edit, x+5 w100 gKordinat vBaseColor9 ReadOnly, Kordinat 9

	Gui, main:add, Text, x20 y+10 w100, Min Delay
	Gui, main:add, Text, x+5 w100, Max Delay
	Gui, main:add, Text, x+5 w100, Tik
	Gui, main:add, Edit, x20 y+5 w100 gUpdate vMinDelay, 0
	Gui, main:add, Edit, x+5 w100 gUpdate vMaxDelay, 0
	Gui, main:add, Edit, x+5 w100 gUpdate vTik, 0

	Gui, main:add, Edit, x20 y+20 w310 h100 vc_edit ReadOnly, Welcome to the Open Source AHK bot %Version% `n Press Alt+H for Help.
	Gui, main:add, Progress, x20 y+5 h5 w310 cRed range0-1000 vProBar, 1000




	;GUI Hotkey Settings
	Gui, main:Tab, Settings

	Gui, main:add, Text, x20 y+5 w100 ,Start ;LABEL
	Gui, main:add, Text, x+5 w100 ,Reload ;LABEL
	Gui, main:add, Text, x+5 w100 ,Pause ;LABEL
	Gui, main:add, Edit, x20 y+5 w100 ReadOnly , Insert ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly , Home ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly , Pause ;Hotkey

	Gui, main:add, Text, x20 y+5 w100,Suspend ;LABEL
	Gui, main:add, Text, x+5 w100,Exit ;LABEL
	Gui, main:add, Text, x+5 w100,Deposit All ;LABEL
	Gui, main:add, Edit, x20 y+5 w100 ReadOnly , Delete ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly , Ctrl + Esc ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly,  ;Hotkey

	Gui, main:add, Text, x20 y+5 w100 ,Kordinat 1  ;LABEL
	Gui, main:add, Text, x+5 w100 ,Kordinat 2 ;LABEL
	Gui, main:add, Text, x+5 w100 ,Kordinat 3 ;LABEL
	Gui, main:add, Edit, x20 y+5 w100 ReadOnly,F1 + LButton ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly,F2 + LButton ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly,F3 + LButton ;Hotkey

	Gui, main:add, Text, x20 y+5 w100 ,Kordinat 4 ;LABEL
	Gui, main:add, Text, x+5 w100 ,Kordinat 5 ;LABEL
	Gui, main:add, Text, x+5 w100 ,Kordinat 6 ;LABEL
	Gui, main:add, Edit, x20 y+5 w100 ReadOnly,F4 + LButton ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly,F5 + LButton ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly,F6 + LButton ;Hotkey

	Gui, main:add, Text, x20 y+5 w100 ,Kordinat 7 ;LABEL
	Gui, main:add, Text, x+5 w100 ,Kordinat 8 ;LABEL
	Gui, main:add, Text, x+5 w100 ,Kordinat 9 ;LABEL
	Gui, main:add, Edit, x20 y+5 w100 ReadOnly,F7 + LButton ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly,F8 + LButton ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly,F9 + LButton ;Hotkey

	Gui, main:add, Text, x140 y+5 w100 ,Cek Kordinat ;LABEL
	Gui, main:add, Edit, x20 y+5 w100 ReadOnly,Ctrl + RButton ;Hotkey
	Gui, main:add, Edit, x+5 w47.5 ReadOnly vCKX,X ;Hotkey
	Gui, main:add, Edit, x+5 w47.5 ReadOnly vCKY,Y ;Hotkey
	Gui, main:add, Edit, x+5 w100 ReadOnly vCKW,Color ;Hotkey


	;Gui, main:add, Hotkey, x12 y+5 w100 , ;Hotkey
	Gui, main:Show,x0 y0, OSRS ToolKit %version%
return


