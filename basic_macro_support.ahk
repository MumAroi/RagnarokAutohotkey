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
      ControlSend,, {F2}, Ragnarok
      Sleep 500
      ControlSend,, {Enter}, Ragnarok
    }
  Return

  F3::
    if GetKeyState("F3","P") {
      ControlSend,, {l}, Ragnarok
      Sleep 250
      ControlSend,, {F3}, Ragnarok
      WinGetPos, , , w, h, Ragnarok
      Click % w / 2 "," h / 2 ;
      Sleep 100
      ControlSend,, {k}, Ragnarok
    }
  Return

  F4::
     if GetKeyState("F4","P") {
      ControlSend,, {F4}, Ragnarok
      WinGetPos, , , w, h, Ragnarok
      Click % w / 2 "," h / 2 ;
    }
  Return

   F5::
    While GetKeyState("F5","P"){
      ControlSend,, {F5}, Ragnarok
      Sleep 250
      ControlSend,, {n}, Ragnarok
    }
   
  Return

  ; ^l::
  ;   Toggle := !Toggle
  ;   While (Toggle)
  ;   {
  ;     ControlSend,, {F9}, Ragnarok
  ;     Sleep 50
  ;   }
  ; Return

  ; F3::
  ;   if GetKeyState("F2","P") {
  ;     ControlSend,, {F2}, Ragnarok
  ;     Sleep 250
  ;     ControlSend,, {Enter}, Ragnarok
  ;   }
  ; Return

#IfWinActive

; Recovery Light 
; Rosary Necklace
; Holy white cloak