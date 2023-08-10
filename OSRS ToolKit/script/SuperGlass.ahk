i := 0
loop, %scriptCicles% {
	if(break_loop = 1){
		guiDebug("Break")
		break
	}
	if (MinDelay < 200){
		guiDebug("MinDelay kurang dari 200, Recommendasi 200")
		MsgBox, MinDelay kurang dari 200 `n Recommendasi 200
		Break
	}
	if (MaxDelay < 400){
		guiDebug("MaxDelay kurang dari 400, Recommendasi 400")
		MsgBox, MaxDelay kurang dari 400 `n Recommendasi 400
		Break
	}
	if (Tik < 2){
		guiDebug("Tik kurang dari 3, Recommendasi 3")
		MsgBox, Tik kurang dari 3 `n Recommendasi 3
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
	if (BaseColor5 = "Kordinat 5"){
		guiDebug("Kordinat 5 belum di Setting")
		MsgBox, Kordinat 5 belum di Setting
		Break
	}

	Loop { ;Progress bar
		WinActivateBottom, RuneLite
		break_loop := 0
		if (TrueOrFalseColor(391, 46, 0x92061B) = 0){
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
				if (CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1) = 0){ ;Deposit
					guiDebug("Deposit item")
					guiDebug("Sleep")
					randomsleep(MinDelay,MaxDelay)
					if (CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2) = 0){ ;WD BUCKET OF SAND
						guiDebug("Withdraw")
						guiDebug("Sleep")
						randomsleep(MinDelay,MaxDelay)
						loop, 2 {
							guiDebug("Withdraw")
							CheckAndMoveCursor(BaseColor3X, BaseColor3Y, BaseColor3) ;WD  GIANT SEAWEED
							guiDebug("Sleep")
							randomsleep(MinDelay,MaxDelay)
						}
						if (CheckAndMoveCursor(BaseColor4X, BaseColor4Y, BaseColor4) = 0){ ;WD  GIANT SEAWEED IF U USE COMPOSISION  18:3
							guiDebug("Withdraw")
							guiDebug("Sleep")
							randomsleep(MinDelay,MaxDelay)
						}
						guiDebug("Close Bank")
						CloseBank()
						guiDebug("Sleep")
						Sleep, TikA(1)
					}
				}
			} ;Bank open end

			if (CheckAndMoveCursor(BaseColor5X, BaseColor5Y, BaseColor5) = 0){ ;SuperGlass Make
				guiDebug("SuperGlass Make")
				guiDebug("Progress")
				guiDebug("Sleep")
				randomsleep(MinDelay,MaxDelay)
				MouseMove xPos, yPos
				guiDebug("Waiting Proses")
				randomsleep(tikA(Tik),tikB(Tik))
				guiDebug("Open bank . . .")
				i++
				guiDebug("Proses : " i "/600" )
				GuiControl, main:,UpdateXP, %i%/600 Proses
				GuiControl,,ProBar, %i%
			}
		}
		if (i > 599){
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
} ;END LOOPING