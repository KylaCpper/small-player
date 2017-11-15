Function Init()
	OverAll_Init()
	Img_Init()
	StartPage_Init()
	Set_Init()
EndFunction

Function Button_Model(id,width,height,text as string)

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

function IsSpriteinScreen(spr)
    x1# = screenToWorldX(0)
    y1# = screenToWorldY(0)
    x2# = screenToWorldX(getVirtualWidth())
    y2# = screenToWorldY(getVirtualHeight())
    ret = getSpriteInBox(spr,x1#,y1#,x2#,y2#)
endfunction ret
