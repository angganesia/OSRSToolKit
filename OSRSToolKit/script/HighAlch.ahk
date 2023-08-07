i := 0
loop, %scriptCicles% {
	if(break_loop = 1){
		guiDebug("Break")
		break
	}
	if (MinDelay = 0){
		guiDebug("MinDelay belum di Setting, Recommendasi 2000")
		MsgBox, MinDelay belum di Setting `n Recommendasi 2000
		Break
	}
	if (MaxDelay = 0){
		guiDebug("MaxDelay belum di Setting, Recommendasi 2500")
		MsgBox, MaxDelay belum di Setting `n Recommendasi 2500
		Break
	}
	if (Tik = 0){
		guiDebug("Tik belum di Setting, Recommendasi 1")
		MsgBox, Tik belum di Setting `n Recommendasi 1
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

	if (i < 600) {
		WinActivateBottom, RuneLite
		break_loop := 0
		guiDebug("Klik High Alch")
		CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1)
		guiDebug("Sleep")
		Sleep, tikA(Tik)
		guiDebug("KlikItem")
		CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2)
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		i++
		HighAlchXP = 65
		TotalXP := i * HighAlchXP
		guiDebug("Total Alch : " i " Total XP : " TotalXP " XP")
		GuiControl,,UpdateXP, %TotalXP% XP %i% Proses
	} ;END MAIN SCRIPT

} ; END LOOPING