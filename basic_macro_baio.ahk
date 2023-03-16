#IfWinActive ahk_class Ragnarok
  F1::
    While GetKeyState("F1","P"){
      ControlSend,, {F1}, Ragnarok
      Sleep 50
      Click
    }
  Return

  F2::
    if GetKeyState("F2","P") {
      ControlSend,, {o}, Ragnarok
      Sleep 250
      ControlSend,, {F2}, Ragnarok
      Sleep 250
      ControlSend,, {Enter}, Ragnarok
      Sleep 600
      ControlSend,, {i}, Ragnarok
      Sleep 250
    }
  Return

  F3::
    if GetKeyState("F3","P") {
      ControlSend,, {k}, Ragnarok
      Sleep 250
      ControlSend,, {F3}, Ragnarok
      Sleep 250
      ControlSend,, {l}, Ragnarok
      Sleep 250
    }
  Return

  ; B::
  ;   While GetKeyState("b","P"){
  ;     ControlSend,, {b}, Ragnarok
  ;     Sleep 50
  ;   }
  ; Return

  ; F3::
  ;   if GetKeyState("F3","P") {
  ;     ControlSend,, {k}, Ragnarok
  ;     Sleep 250
  ;     ControlSend,, {F3}, Ragnarok
  ;     WinGetPos, , , w, h, Ragnarok
  ;     Click % w / 2 "," h / 2 ;
  ;     Sleep 100
  ;     ControlSend,, {k}, Ragnarok
  ;   }
  ; Return
#IfWinActive

; /exall , /inall
