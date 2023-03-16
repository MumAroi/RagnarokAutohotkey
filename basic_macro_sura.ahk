#IfWinActive ahk_class Ragnarok

  F3::
    if GetKeyState("F3","P") {
      ControlSend,, {F3}, Ragnarok
      Sleep 300
      Click
    }
  Return

  F2::
    if GetKeyState("F2","P") {
      ControlSend,, {k}, Ragnarok
      Sleep 200
      ControlSend,, {F2}, Ragnarok
      Sleep 1000
      ControlSend,, {g}, Ragnarok
    }
  Return

  MButton::
    ControlSend,, {m}, Ragnarok
    Sleep 300
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
    ControlSend,, {g}, Ragnarok
  Return

#IfWinActive

; Raven Of Tomb  Piece of Shield
; Flutter Butterfly Fragment of Rossata Stone
; Infinity Shadow Pendant
; Champion Stone
; Sura Stone
; Royal Guard Shield
; Bradium Shield 
; /navi prt_in 56/57
; /navi payon  140/174
; /navi cmd_in 128/171
; /navi aldeba_in 97/55
; /navi morocc 162/258
