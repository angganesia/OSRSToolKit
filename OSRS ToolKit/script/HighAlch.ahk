i:= 0
loop, %scriptCicles% {
	if (break_loop = 1){
		guiDebug("Break")
		return 0
	}
	if (MinDelay < 200 ){
		guiDebug("MinDelay belum di Setting, Recommendasi 2000")
		MsgBox, MinDelay belum di Setting `n Recommendasi 2000
		Break
	}
	if (MaxDelay < 250 ){
		guiDebug("MaxDelay belum di Setting, Recommendasi 2500")
		MsgBox, MaxDelay belum di Setting `n Recommendasi 2500
		Break
	}
	if (Tik < 1){
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

	loop {
		break_loop := 0
			if (CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1) = 0){
				guiDebug("Klik High Alch")
				guiDebug("Sleep")
				Sleep, tikA(Tik)
				if (TrueOrFalseColor(648,216,0x1C4978) = 0){
					guiDebug("Inventory Open . . .")
					if (CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2) = 0){
						guiDebug("KlikItem")
						guiDebug("Sleep")
						randomsleep(MinDelay,MaxDelay)
						i++
						HighAlchXP = 65
						TotalXP := i * HighAlchXP
						guiDebug("Total Alch : " i " Total XP : " TotalXP " XP")
						GuiControl,,UpdateXP, %i%/600 Proses  %TotalXP%  XP
						GuiControl,,ProBar, %i%
						if (i > 599){
							guiDebug("Script STOP!")
							return 0
						}
					}
				}
			}
		if (break_loop = 1){
			guiDebug("Break!")
			return 0
		}
	}
} ; END LOOPING