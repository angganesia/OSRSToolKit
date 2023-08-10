


	if (MenuMagic = "Dropall"){
		dropall()
	}
	if (MenuMagic = "High Alch"){
		guiDebug("High Alch")
		#Include, script/HighAlch.ahk
	}
	if (MenuMagic = "Clear Grimy"){
		#Include, script/ClearGrimy.ahk
	}
	if (MenuMagic = "SuperGlass"){
		#Include, script/SuperGlass.ahk
	}
	if (MenuMagic = "Skilling 1"){
		#Include, script/Skilling1.ahk
	}

	/*
	if (MenuMagic = "CustomMenu") {
		#Include, script/CustomMenu.ahk
	*/