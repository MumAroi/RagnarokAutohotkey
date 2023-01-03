#SingleInstance, force
#MaxThreadsPerHotkey 2
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On
SetTitleMatchMode, RegEx
CoordMode, Mouse, Screen

; GUI 
Gui, +AlwaysOnTop
Gui, Color, FFFFFF
Gui, Add, Button, x12 y30 w180 h30 gButtonSetPosition, Set Position (Ctrl+E)
Gui, Add, Text, x12 y70 w180 h20 vTextPosition, Current:
Gui, Add, Button, x12 y90 w180 h30 gButtonSetPositionEnter, Set Position Enter (Ctrl+R)
Gui, Add, Text, x12 y130 w180 h20 vTextPositionEnter, Current:
Gui, Add, Text, x12 y160 w80 h20 , Set Time (ms.)
Gui, Add, Edit, x102 y160 w90 h20 Number -VScroll vWaitingPet, 0
Gui, Add, Text, x12 y190 w180 h20 vTextStatus, Status: Inactive
Gui, Add, Button, x12 y220 w90 h40 gButtonStartPet, Start (Ctrl+F)
Gui, Add, Button, x102 y220 w90 h40 gButtonStopPet, Stop (Ctrl+D)
; Generated using SmartGUI Creator 4.0
Gui, Show, x452 y164 h300 w213, Pet
Return

ButtonSetPosition:
^e::
WinGet, WindowActiveId, ID, A
WinGetActiveStats, WindowActiveName, W, H, X, Y
WinGetClass, WindowClass, A
MouseGetPos, xpos, ypos
GuiControl,, TextPosition, Current: x: %xpos%, y: %ypos%
return

ButtonSetPositionEnter:
^r::
MouseGetPos, expos, eypos
GuiControl,, TextPositionEnter, Current: x: %expos%, y: %eypos%
return

ButtonStartPet:
^f::
GuiControlGet, WaitingPet 
if(WaitingPet > 0){
    Toggle := true
    GuiControl,, TextStatus, Status: Avtive
    While (Toggle)
    {
        Sleep, WaitingPet
        if(!Toggle){
          Break
        }
        SetControlDelay -1
        WinActivate, ahk_id %WindowActiveId%
        Click, %xpos% %ypos%,
        sleep, 500
        Click, %xpos% %ypos%,
        sleep, 500
        Click, %xpos% %ypos%,
        sleep, 500
        Click, %xpos% %ypos%,
        sleep, 500
        Click, %expos% %eypos%,
        sleep, 500
        Click, %expos% %eypos%,
    }
}
return

ButtonStopPet:
^d::
  Toggle := false
  GuiControl,, TextStatus, Status: Inactive
return

GuiClose:
ExitApp