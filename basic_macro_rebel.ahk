#IfWinActive ahk_class Ragnarok

  ; F3::
  ;   if GetKeyState("F3","P") {
  ;     ControlSend,, {F3}, Ragnarok
  ;     Sleep 300
  ;     Click
  ;   }
  ; Return

  F1::
    if GetKeyState("F1","P") {
      ControlSend,, {F1}, Ragnarok
      Sleep 500
    }
  Return

  F4::
    if GetKeyState("F4","P") {
      ControlSend,, {F4}, Ragnarok
      Sleep 500
    }
  Return

  ; Telepot
  F2::
    if GetKeyState("F2","P") {
      ControlSend,, {l}, Ragnarok
      Sleep 350
      ControlSend,, {f2}, Ragnarok
      Sleep 250
      ControlSend,, {Enter}, Ragnarok
      Sleep 750
      ControlSend,, {k}, Ragnarok
    }
  Return


  F9::
    if GetKeyState("F9","P") {
      ControlSend,, {F9}, Ragnarok
      Sleep 250
      ControlSend,, {d}, Ragnarok
      Sleep 350
      ControlSend,, {m}, Ragnarok
      Sleep 450
      ControlSend,, {.}, Ragnarok
    }
  Return

  ; F9::
  ;   if GetKeyState("F9","P") {
  ;     toggle := !toggle
  ;     if (toggle)
  ;     {
  ;       ControlSend,, {F9}, Ragnarok
  ;       Sleep 250
  ;       ControlSend,, {d}, Ragnarok
  ;     }else{
  ;       ControlSend,, {m}, Ragnarok
  ;       Sleep 250
  ;       ControlSend,, {.}, Ragnarok
  ;     }
  ;   }
  ; Return

  ; MButton::
  ;   ControlSend,, {l}, Ragnarok
  ;   Sleep 350
  ;   ControlSend,, {a}, Ragnarok
  ;   Sleep 250
  ;   ControlSend,, {Enter}, Ragnarok
  ;   Sleep 500
  ;   ControlSend,, {k}, Ragnarok
  ; Return

  MButton::
   ToggleC := !ToggleC
    If ToggleC
      Click, Down
    else
      Click, Up
  Return

  ; Greed
  XButton1::
    ControlSend,, {j}, Ragnarok
    Sleep 250
    ControlSend,, {s}, Ragnarok
    Sleep 100
    ControlSend,, {h}, Ragnarok
  Return

  ; AB
  XButton2::
    ControlSend,, {o}, Ragnarok
    Sleep 250
    ControlSend,, {a}, Ragnarok
    WinGetPos, , , w, h, Ragnarok
    Click % w / 2 "," h / 2 ;
    ; Click
    Sleep 100
    ControlSend,, {k}, Ragnarok
  Return

#IfWinActive
