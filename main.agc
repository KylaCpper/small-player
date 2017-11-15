
// Project: small player 
// Created: 2017-11-07
//include 

#include "code/page/StartPage.agc"
#include "code/LoadImg.agc"
#include "code/OverAll.agc"
#include "code/page/StartGamePage.agc"
#include "code/page/SetPage.agc"
#include "code/Function.agc"
#include "code/page/LoadGamePage.agc"

#include "code/Alert.agc"
// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "small player" )
SetWindowSize( 800, 600, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window
// set display properties
//SetDisplayAspect(1024/768)
SetVirtualResolution( 800, 600 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
//SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts
SetClearColor( 151,170,204 ) // light blue

//SetPrintSize(30)
//begin
Init()

//main
StartPage_Main()
/*
w=20
h=20
 CreateSprite( 101,0 )
SetSpritePosition(101,0,0)
SetSpriteColor(101,0,100,100,255)
do
	    Print( ScreenFPS() )
	w=w+1
	h=h+1
	SetSpriteSize( 101, w, h )
	sync()
loop
*/


Function Input(textin$,length)

    SetCursorBlinkTime(0.5)
    SetTextInputMaxChars(length)
    StartTextInput(textin$)

    do
        sync()
        state=GetTextInputState()
        c=GetLastChar()
        if GetTextInputCompleted()
            if GetTextInputCancelled()
                text$=textin$
                exit
            else
                text$=GetTextInput()
                exit
            endif
        endif

    loop

    StopTextInput()
    sync()

Endfunction text$

