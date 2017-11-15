type LoadGamePage_
	load1Id as Integer
	load2Id as Integer
	load3Id as Integer
	load4Id as Integer
EndType
global LoadGamePage as LoadGamePage_
Function LoadGamePage__()
	LoadGamePage.load1Id =7
	LoadGamePage.load2Id =8
	LoadGamePage.load3Id =9
	LoadGamePage.load4Id =10
EndFunction

Function LoadGamePage_Main()
	do
			Print( ScreenFPS() )
			Print("LoadGame")
			Sync()
	loop
	

EndFunction 1

