DetectHiddenWindows, On
Gui,+AlwaysOnTop
SetDefaultMouseSpeed, 5
SetWorkingDir, %A_ScriptDir%


ConvertHexToDec(hexColor) {
    return "0x" . SubStr(hexColor, 5, 2) . SubStr(hexColor, 3, 2) . SubStr(hexColor, 1, 2)
}

CheckAndMoveCursor(x, y, targetColor){
	MouseGetPos, xpos, ypos
	PixelGetColor, color, %x%, %y%
	
	targetColorDec := ConvertHexToDec(targetColor)
	currentColorDec := ConvertHexToDec(color)
	
	if (currentColorDec = targetColorDec) {
        MouseMove, %x%, %y%
		Click, x, y
    } 
}

RandomSleep(x,y) {
	Random, rand, %x%, %y%
	Sleep %rand%
}

tikA(jmlhtik){
    return 600 * jmlhtik
}
tikB(jmlhtik){
    return (600 * jmlhtik)+2000
}