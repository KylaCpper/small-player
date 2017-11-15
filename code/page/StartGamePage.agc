

Function StartGamePage_Main()
	do
		if(GetRawKeyReleased(27))
			OpenAlert()
		EndIf
			Print( ScreenFPS() )
			Print("StartGame")
			Sync()
	loop
	

EndFunction 1

