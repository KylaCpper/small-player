
Type Screen_
	x as Integer
	y as Integer
EndType
global Screen as Screen_
Function Screen__()
	Screen.x=GetDeviceWidth()
	Screen.y=GetDeviceHeight()
EndFunction



Function OverAll_Init()
	StartPage__()
	Screen__()
	SetPage__()
	Alert__()
EndFunction



