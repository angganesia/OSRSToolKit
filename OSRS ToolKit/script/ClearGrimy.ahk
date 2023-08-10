#include script/dropall.ahk
i := 0
loop, %scriptCicles% {
	if(break_loop = 1){
		guiDebug("Break")
		break
	}
	if (MinDelay < 200){
		guiDebug("MinDelay belum di Setting, Recommendasi 200")
		MsgBox, MinDelay belum di Setting `n Recommendasi 200
		Break
	}
	if (MaxDelay < 400){
		guiDebug("MaxDelay belum di Setting, Recommendasi 400")
		MsgBox, MaxDelay belum di Setting `n Recommendasi 400
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

	Loop { ;Progress bar
		WinActivateBottom, RuneLite
		break_loop := 0
		if (TrueOrFalseColor(205, 88, 0x0000FF) = 0){
			guiDebug("Prosess. . .")
		}else{
			if (TrueOrFalseColor(648,216,0x1C4978) = 0){ ;inventory Open
				guiDebug("Inventory Open. . .")
				if (TrueOrFalseColor(70,349,0x1B1D7C) = 0){ ;Bank Open
					guiDebug("Bank Open. . .")
				}else{
					MouseGetPos, xPos, yPos
					MouseMove xPos, yPos
					guiDebug("Open bank . . .")
					Click xPos, yPos
					guiDebug("Sleep")
					Sleep, TikA(2)
				}
			}

			if (TrueOrFalseColor(70,349,0x1B1D7C) = 0){ ;Bank Open
				guiDebug("Bank Open. . .")
				if (CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1) = 0){
					guiDebug("Deposit item")
					guiDebug("Sleep")
					randomsleep(MinDelay,MaxDelay)
					if (CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2) = 0){
						guiDebug("Withdraw")
						guiDebug("Sleep")
						randomsleep(MinDelay,MaxDelay)
						guiDebug("Close Bank")
						CloseBank()
						guiDebug("Sleep")
						Sleep, TikA(1)
					}
				}
			} ;Bank open end

			if (TrueOrFalseColor(648,216,0x1C4978) = 0){ ;inventory Open
				guiDebug("Inventory Open. . .")
				if (TrueOrFalseColor(70,349,0x1B1D7C) = 0){ ;Bank Open
					guiDebug("Bank Open. . .")
				}else{
					guiDebug("Bank Close. . .")
					guiDebug("Progress")
					dropall()
					guiDebug("Open bank . . .")
					MouseMove xPos, yPos
					guiDebug("Sleep")
					Sleep, TikA(2)
					i++
					guiDebug("Proses : " i "/125" )
					GuiControl, main:,UpdateXP, %i%/125 Proses
					GuiControl,,ProBar, %i%
				}
			}
		}
		if (i > 124){
			guiDebug("Script STOP!")
			return 0
		}
		if (break_loop = 1){
			guiDebug("Break")
			break
			return 0
		}
		GuiDebug("Script Running. . .")
	} ;Progress bar end
}