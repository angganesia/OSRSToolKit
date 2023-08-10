DetectHiddenWindows, On
SetDefaultMouseSpeed, 5
SetWorkingDir, %A_ScriptDir%


ConvertHexToDec(hexColor) {
    return "0x" . SubStr(hexColor, 5, 2) . SubStr(hexColor, 3, 2) . SubStr(hexColor, 1, 2)
}

CheckAndMoveCursor(x, y, targetColor){
	;MouseGetPos, xpos, ypos
	ControlGetPos, xpos, ypos, controlWidth, controlHeight, , ahk_id %Control%
	PixelGetColor, color, %x%, %y%

	targetColorDec := ConvertHexToDec(targetColor)
	currentColorDec := ConvertHexToDec(color)

	if (currentColorDec = targetColorDec){
        MouseMove, x, y
        Click, x, y
        return 0
    }else{
        return 1
      }
}

TrueOrFalseColor(x, y, targetColor){
	;MouseGetPos, xpos, ypos
	ControlGetPos, xpos, ypos, controlWidth, controlHeight, , ahk_id %Control%
	PixelGetColor, color, %x%, %y%

	targetColorDec := ConvertHexToDec(targetColor)
	currentColorDec := ConvertHexToDec(color)

	if (currentColorDec = targetColorDec) {
        return 0
    }else{
      return 1
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
    return (600 * jmlhtik)+1000
}

CloseBank() {
  Send, {Esc}
}

;Inventory setup
GetInventoryItemPos(row, col) {
  LEFT_X := 581
  TOP_Y := 253
  COL_DIFF := 40
  ROW_DIFF := 35

  x := LEFT_X + ((col - 1) * COL_DIFF)
  y := TOP_Y + ((row - 1) * ROW_DIFF)

  return { "x": x, "y": y }
}

GoToInventoryItem(row, col) {
  Random, randX, -3, 3
  Random, randY, -3, 3
  pos := GetInventoryItemPos(row, col)
  x := pos.x + randX
  y := pos.y + randY

  MouseMove, x, y
  return { "x": x, "y": y }
}

ClickInventoryItem(row, col) {
  pos := GoToInventoryItem(row, col)
  Click, pos.x pos.y
}
