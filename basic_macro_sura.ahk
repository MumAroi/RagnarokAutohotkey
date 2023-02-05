#IfWinActive ahk_class Ragnarok

  ; F2::
  ;   if GetKeyState("F2","P") {
  ;     ControlSend,, {F2}, Ragnarok
  ;     Sleep 500
  ;     ControlSend,, {Enter}, Ragnarok
  ;   }
  ; Return

   MButton::
    ControlSend,, {m}, Ragnarok
    Sleep 250
    ControlSend,, {Enter}, Ragnarok
  Return

   XButton1::
    ControlSend,, {j}, Ragnarok
    Sleep 250
    ControlSend,, {i}, Ragnarok
    Sleep 100
    ControlSend,, {h}, Ragnarok
  Return

  XButton2::
    ControlSend,, {l}, Ragnarok
    Sleep 250
    ControlSend,, {o}, Ragnarok
    Sleep 100
    ControlSend,, {k}, Ragnarok
  Return

#IfWinActive

; Raven Of Tomb  Piece of Shield
; Flutter Butterfly Fragment of Rossata Stone