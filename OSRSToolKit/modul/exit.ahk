/*F5::
  ;Send, {ShiftUp}
  Reload
return
*/
^Esc::
  ;Send, {ShiftUp}
ExitApp

ExitFunc(){

	if (GetKeyState("Shift")){
		Send, {Shift up}
	}

}