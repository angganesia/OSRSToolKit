#include script/dropall.ahk
i := 0
loop, %scriptCicles% {
	if(break_loop = 1){
		guiDebug("Break")
		break
	}
	if (MinDelay = 0){
		guiDebug("MinDelay belum di Setting, Recommendasi 400")
		MsgBox, MinDelay belum di Setting `n Recommendasi 400
		Break
	}
	if (MaxDelay = 0){
		guiDebug("MaxDelay belum di Setting, Recommendasi 600")
		MsgBox, MaxDelay belum di Setting `n Recommendasi 600
		Break
	}
	if (BaseColor1 = "Kordinat 1"){
		guiDebug("Kordinat 1 belum di Setting")
		MsgBox, Kordinat 1 belum di Setting
		Break
	}
	if (BaseColor2 = "Kordinat 2"){
		guiDebug("Kordinat 2 belum di Setting")
		MsgBox, Kordinat 2 belum di Setting
		Break
	}

	if (i < 125 ) {
		WinActivateBottom, RuneLite
		MouseGetPos, xPos, yPos
		break_loop := 0
		guiDebug("Deposit item")
		CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1)
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Withdraw item")
		CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2)
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		CloseBank()
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Proses")
		dropall()
		guiDebug("Open bank . . .")
		Click xPos, yPos
		guiDebug("Sleep 1")
		randomsleep(MinDelay,MaxDelay)
		i++
		guiDebug("Total Proses : " i )
		GuiControl,,UpdateXP,  %i% Proses

	}
	
}