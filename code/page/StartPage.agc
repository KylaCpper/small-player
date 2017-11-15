Type StartPage_
	buttonImg_up as Integer
	buttonImg_down as Integer
	setId as Integer
	endId as Integer
	loadId as Integer
	startId as Integer
EndType
global StartPage as StartPage_
Function StartPage__()
	StartPage.startId=1
	StartPage.setId=2
	StartPage.endId=3
	StartPage.loadId=4
EndFunction
Function StartPage_Init()
	screen_x=Screen.x/2
	screen_y=Screen.y/10
	//StartId=CreateSprite(ButtonImg)
	//SetSpriteSize( StartId, 20, 5 )
	//SetSpritePosition(StartId,(100-20)/2,50)
	StartPage_Model(StartPage.startId,screen_x,screen_y*3,"play")
	StartPage_Model(StartPage.loadId,screen_x,screen_y*4.5,"load")
	SetVirtualButtonActive(StartPage.loadId,0)
	StartPage_Model(StartPage.setId,screen_x,screen_y*6,"set")
	StartPage_Model(StartPage.endId,screen_x,screen_y*7.5,"end")
EndFunction
Function CloseStartPage()
	SetVirtualButtonVisible(StartPage.startId,0)
	SetVirtualButtonVisible(StartPage.loadId,0)
	SetVirtualButtonVisible(StartPage.setId,0)
	SetVirtualButtonVisible(StartPage.endId,0)
EndFunction
Function OpenStartPage()
	SetVirtualButtonVisible(StartPage.startId,1)
	SetVirtualButtonVisible(StartPage.loadId,1)
	SetVirtualButtonVisible(StartPage.setId,1)
	SetVirtualButtonVisible(StartPage.endId,1)
EndFunction

Function StartPage_Model(id,width,height,text as string)

	/*
	id = CreateEditBox()
	SetEditBoxSize( id, 20, 5 )
	SetEditBoxPosition(id,width,height)
	SetEditBoxBackgroundImage(id,ButtonImg)
	SetEditBoxBorderImage(id,ButtonImg)
	SetEditBoxTextColor( id, 255,255,255)
	SetEditBoxText(id,text)
	SetEditBoxActive(id,1)
	SetEditBoxExtendedFontImage(id,ButtonImg)
	*/
	AddVirtualButton(id,width,height,Screen.x/10)
	SetVirtualButtonText( id, text )
	//SetVirtualButtonColor(id,0,155,55)
	//SetVirtualButtonImageUp(id,StartButtonImg_Up)
	//SetVirtualButtonImageDown(id,StartButtonImg_Down)
EndFunction 

Function StartPage_Main()
	OpenStartPage()
	do
		Print( ScreenFPS() )
		if(GetVirtualButtonReleased(StartPage.startId))
			CloseStartPage()
			StartGamePage_Main()
		EndIf
		if(GetVirtualButtonReleased(StartPage.loadId))
			CloseStartPage()
			LoadGamePage_Main()
		EndIf
		if(GetVirtualButtonReleased(StartPage.setId))
			CloseStartPage()
			SetPage_Main()
		EndIf
		if(GetVirtualButtonReleased(StartPage.endId))
			End
		EndIf
		Update2D(0)
		
		//agk::Render2DBack();
		//agk::ClearDepthBuffer();
	
		ClearDepthBuffer()
		
		Render2DFront()
		
		//agk::DrawSprite(1);
		Swap()
	loop
EndFunction

