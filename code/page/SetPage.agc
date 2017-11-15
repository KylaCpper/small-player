Type SetPage_
    soundId as Integer
    closeId as Integer
EndType
global SetPage as SetPage_
Function SetPage__()
    
    SetPage.soundId=5
    SetPage.closeId=6
    
EndFunction
Function CloseSetPage()
	SetVirtualButtonVisible(SetPage.soundId,0)
	SetVirtualButtonVisible(SetPage.closeId,0)
EndFunction
Function OpenSetPage()
	SetVirtualButtonVisible(SetPage.soundId,1)
	SetVirtualButtonVisible(SetPage.closeId,1)
EndFunction
Function Set_Init()
	screen_x=Screen.x/2
	screen_y=Screen.y/10
	//StartId=CreateSprite(ButtonImg)
	//SetSpriteSize( StartId, 20, 5 )
	//SetSpritePosition(StartId,(100-20)/2,50)
	Button_Model(SetPage.soundId,screen_x,screen_y*3,"sound")
	Button_Model(SetPage.closeId,screen_x,screen_y*4.5,"return")
	SetVirtualButtonVisible(SetPage.soundId,0)
	SetVirtualButtonVisible(SetPage.closeId,0)
EndFunction

Function SetPage_Main()
	OpenSetPage()
	do
		if(GetVirtualButtonPressed(SetPage.closeId))
			CloseSetPage()
			StartPage_Main()
		EndIf
		if(GetVirtualButtonPressed(SetPage.soundId))
			//
		EndIf
		Print( ScreenFPS() )
		Print("Set")
		sync()
	loop
EndFunction 1
