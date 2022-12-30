#SingleInstance, force
#MaxThreadsPerHotkey 2
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On
SetTitleMatchMode, RegEx
CoordMode, Mouse, Screen, Pixel

; GUI 
Gui, +AlwaysOnTop
Gui, Color, FFFFFF
Gui, Add, Button, x12 y19 w180 h30 gButtonSetPosition, Set Position (Ctrl+R)
Gui, Add, Text, x12 y59 w180 h20 vTextPosition, Current:
Gui, Add, Text, x12 y99 w80 h20 , Set Time (ms.)
Gui, Add, Edit, x102 y99 w90 h20 Number -VScroll vWaitingPet, 0
Gui, Add, Button, x12 y150 w90 h40 gButtonStartPet, Start (Ctrl+F)
Gui, Add, Button, x102 y150 w90 h40 gButtonStopPet, Stop (Ctrl+D)
Gui, Add, Text, x12 y129 w180 h20 vTextStatus, Status: Inactive
; Generated using SmartGUI Creator 4.0
Gui, Show, x452 y164 h200 w213, Pet
Return

ButtonSetPosition:
^R::
WinGet, WindowActiveId, ID, A
WinGetActiveStats, WindowActiveName, W, H, X, Y
WinGetClass, WindowClass, A
MouseGetPos, xpos, ypos
GuiControl,, TextPosition, Current: x: %xpos%, y: %ypos%
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
        SetControlDelay -1
        WinActivate, ahk_id %WindowActiveId%
        ControlClick, x%xpos% y%ypos%, ahk_id %WindowActiveId%,,,, NA
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