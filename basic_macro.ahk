#IfWinActive ahk_class Ragnarok
  F1::
  While GetKeyState("F1","P"){
    ControlSend,, {F1}, Ragnarok
  }
  Return

  F2::
    ControlSend,, {l}, Ragnarok
    Sleep 250
    ControlSend,, {j}, Ragnarok
    Sleep 250
    ControlSend,, {Enter}, Ragnarok
    Sleep 500
    ControlSend,, {k}, Ragnarok
  Return

  LButton::
  If (toggle := !toggle) {
  Click, down, Left
  } Else {
  Click, up, Left
  }
  Return
#IfWinActive

