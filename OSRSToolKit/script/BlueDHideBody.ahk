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
	if (Tik = 0){
		guiDebug("Tik belum di Setting, Recommendasi 24")
		MsgBox, Tik belum di Setting `n Recommendasi 24
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
	if (BaseColor3 = "Kordinat 3"){
		guiDebug("Kordinat 3 belum di Setting")
		MsgBox, Kordinat 3 belum di Setting
		Break
	}
	if (BaseColor4 = "Kordinat 4"){
		guiDebug("Kordinat 4 belum di Setting")
		MsgBox, Kordinat 4 belum di Setting
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
		guiDebug("Withdraw")
		CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2)
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		CloseBank()
		guiDebug("Close Bank")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Proses select item 1")
		CheckAndMoveCursor(BaseColor3X, BaseColor3Y, BaseColor3)
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Making Proses select item 2")
		CheckAndMoveCursor(BaseColor4X, BaseColor4Y, BaseColor4)
		guiDebug("Sleep")
		randomsleep(TikA(2),TikA(3))
		Send, {Space}
		MouseMove xPos, yPos
		guiDebug("Waiting Proses")
		randomsleep(tikA(Tik),tikB(Tik))
		guiDebug("Open bank . . .")
		Click xPos, yPos
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		i++
		Blue_dhide_body_XP = 210
		TotalXP := i * Blue_dhide_body_XP
		guiDebug("Total Alch : " i " Total XP : " TotalXP " XP")
		GuiControl,,UpdateXP, %TotalXP% XP %i% Proses
	} ;END MAIN SCRIPT
	
} ;END LOOPING