i := 0	;Wajib untuk menyimpan jumlah looping
loop, %scriptCicles% {	;Wajib untuk pengaman agar tidak terlalu banyak jumlah looping, di set 1000 
	if(break_loop = 1){	;Wajib untuk perintah dari tombol pause
		guiDebug("Break")	;Opstional untuk info di kolom debuging
		break	;Wajib untuk perintah pause
	}	;end  break_loop
	if (MinDelay < 200){
		guiDebug("MinDelay kurang dari 200, Recommendasi 200")
		MsgBox, MinDelay kurang dari 200 `n Recommendasi 200
		Break
	} ;end MinDelay
	if (MaxDelay < 400){
		guiDebug("MaxDelay kurang dari 400, Recommendasi 400")
		MsgBox, MaxDelay kurang dari 400 `n Recommendasi 400
		Break
	} ;end MaxDelay
	if (Tik < 3){
		guiDebug("Tik kurang dari 3, Recommendasi 3")
		MsgBox, Tik kurang dari 3 `n Recommendasi 3
		Break
	} ;end Tik
	if (BaseColor1 = "Kordinat 1"){
		guiDebug("Kordinat 1 belum di Setting")
		MsgBox, Kordinat 1 belum di Setting
		Break
	} ;end BaseColor1
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
	
	if (i < 600 ){
		WinActivateBottom, RuneLite
		MouseGetPos, xPos, yPos
		break_loop := 0
		
		;start script
		guiDebug("Deposit item")
		CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1)
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Withdraw")
		CheckAndMoveCursor(BaseColor2X, BaseColor2Y, BaseColor2) ;WD BUCKET OF SAND
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Withdraw")
		CheckAndMoveCursor(BaseColor3X, BaseColor3Y, BaseColor3) ;WD  GIANT SEAWEED
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Withdraw")
		CheckAndMoveCursor(BaseColor3X, BaseColor3Y, BaseColor3) ;WD  GIANT SEAWEED
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Withdraw")
		CheckAndMoveCursor(BaseColor4X, BaseColor4Y, BaseColor4) ;WD  GIANT SEAWEED IF U USE COMPOSISION  18:3
		guiDebug("Sleep")
		randomsleep(MinDelay,MaxDelay)
		guiDebug("Close Bank")
		CloseBank()
		guiDebug("Sleep")
		Sleep, tikA(1)
		guiDebug("SuperGlass Make")
		CheckAndMoveCursor(BaseColor5X, BaseColor5Y, BaseColor5) ;SuperGlass Make
		MouseMove xPos, yPos
		guiDebug("Waiting Proses")
		randomsleep(tikA(Tik),tikB(Tik))
		guiDebug("Open bank . . .")
		Click xPos, yPos
		guiDebug("Sleep")
		Sleep, tikA(2)
		
		i++
		guiDebug("Total Proses : " i )
		GuiControl,,UpdateXP, %i% Proses
	} ;END MAIN SCRIPT
	
} ;END LOOPING scriptCicles


Perintah yang tersedia :
guiDebug(" ")
randomsleep(tikA(1),tikB(1))
sleep, tikA(1)
CheckAndMoveCursor(BaseColor1X, BaseColor1Y, BaseColor1) ; 1 - 9
CloseBank()
WinActivateBottom, RuneLite
MouseGetPos, xPos, yPos
MouseMove xPos, yPos