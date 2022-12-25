F1::
While GetKeyState("F1","P"){
  ControlSend,, {F1}, Ragnarok
}
Return

F3::
While GetKeyState("F3","P"){
  ControlSend,, {F1}, Ragnarok
  ControlSend,, {l}, Ragnarok
  Sleep 300
  ControlSend,, {k}, Ragnarok
}
Return

F4::
  ControlSend,, {n}, Ragnarok
  Sleep 250
  ControlSend,, {o}, Ragnarok
  Sleep 250
  ControlSend,, {Enter}, Ragnarok
  Sleep 500
  ControlSend,, {m}, Ragnarok
Return

