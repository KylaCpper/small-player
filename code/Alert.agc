type Alert_
	exitId as Integer
	yes as Integer
	no as Integer
EndType
global Alert as Alert_
Function Alert__()
	Alert.exitId=CreateSprite(0)
	SetSpriteSize(Alert.exitId,300,300)
	SetSpriteColor(Alert.exitId,0,100,100,255)
	SetSpriteVisible(Alert.exitId,0)
	SetSpriteDepth(Alert.exitId,0)
EndFunction
Function OpenAlert()
	SetSpriteVisible(Alert.exitId,1)
	do
		Print(GetRayCastSpriteID())
		sync()
	loop
EndFunction
Function CloseAlert()
	SetSpriteVisible(Alert.exitId,0)
EndFunction
