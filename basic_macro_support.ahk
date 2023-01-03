#IfWinActive ahk_class Ragnarok
  F1::
    if GetKeyState("F1","P") {
      ControlSend,, {F1}, Ragnarok
      Sleep 100
      Click
    }
  Return

  F2::
    if GetKeyState("F2","P") {
      ControlSend,, {F2}, Ragnarok
      Sleep 250
      ControlSend,, {Enter}, Ragnarok
    }
  Return

  ; F3::
  ;   if GetKeyState("F2","P") {
  ;     ControlSend,, {F2}, Ragnarok
  ;     Sleep 250
  ;     ControlSend,, {Enter}, Ragnarok
  ;   }
  ; Return


#IfWinActive