
k := 0
Kordinat(k) {
	if (k = 1) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor1, %x%, %y%
		GuiControl, , BaseColor1, %BaseColor1%
		BaseColor1X = %x%
		BaseColor1Y = %y%
		guiDebug("Update Kordinat 1")
		ToolTip, Done x:%BaseColor1X%  y:%BaseColor1Y%  color:%BaseColor1%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 2) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor2, %x%, %y%
		GuiControl, , BaseColor2, %BaseColor2%
		BaseColor2X = %x%
		BaseColor2Y = %y%
		guiDebug("Update Kordinat 2")
		ToolTip, Done x:%BaseColor2X%  y:%BaseColor2Y%  color:%BaseColor2%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 3) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor3, %x%, %y%
		GuiControl, , BaseColor3, %BaseColor3%
		BaseColor3X = %x%
		BaseColor3Y = %y%
		guiDebug("Update Kordinat 3")
		ToolTip, Done x:%BaseColor3X%  y:%BaseColor3Y%  color:%BaseColor3%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 4) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor4, %x%, %y%
		GuiControl, , BaseColor4, %BaseColor4%
		BaseColor4X = %x%
		BaseColor4Y = %y%
		guiDebug("Update Kordinat 4")
		ToolTip, Done x:%BaseColor4X%  y:%BaseColor4Y%  color:%BaseColor4%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 5) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor5, %x%, %y%
		GuiControl, , BaseColor5, %BaseColor5%
		BaseColor5X = %x%
		BaseColor5Y = %y%
		guiDebug("Update Kordinat 5")
		ToolTip, Done x:%BaseColor5X%  y:%BaseColor5Y%  color:%BaseColor5%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 6) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor6, %x%, %y%
		GuiControl, , BaseColor6, %BaseColor6%
		BaseColor6X = %x%
		BaseColor6Y = %y%
		guiDebug("Update Kordinat 6")
		ToolTip, Done x:%BaseColor6X%  y:%BaseColor6Y%  color:%BaseColor6%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 7) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor7, %x%, %y%
		GuiControl, , BaseColor7, %BaseColor7%
		BaseColor7X = %x%
		BaseColor7Y = %y%
		guiDebug("Update Kordinat 7")
		ToolTip, Done x:%BaseColor7X%  y:%BaseColor7Y%  color:%BaseColor7%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 8) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor8, %x%, %y%
		GuiControl, , BaseColor8, %BaseColor8%
		BaseColor8X = %x%
		BaseColor8Y = %y%
		guiDebug("Update Kordinat 8")
		ToolTip, Done x:%BaseColor8X%  y:%BaseColor8Y%  color:%BaseColor8%
		sleep, tikB(1)
		ToolTip
	}
	if (k = 9) {
		MouseGetPos, x, y
		PixelGetColor, BaseColor9, %x%, %y%
		GuiControl, , BaseColor9, %BaseColor9%
		BaseColor9X = %x%
		BaseColor9Y = %y%
		guiDebug("Update Kordinat 9")
		ToolTip, Done x:%BaseColor9X%  y:%BaseColor9Y%  color:%BaseColor9%
		sleep, tikB(1)
		ToolTip
	}
}