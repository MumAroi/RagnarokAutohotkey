#IfWinActive ahk_class Ragnarok
  F1::
  While GetKeyState("F1","P"){
    ControlSend,, {F1}, Ragnarok
    Sleep 50
  }
  Return

  ; F2::
  ;   ControlSend,, {l}, Ragnarok
  ;   Sleep 250
  ;   ControlSend,, {j}, Ragnarok
  ;   Sleep 250
  ;   ControlSend,, {Enter}, Ragnarok
  ;   Sleep 500
  ;   ControlSend,, {k}, Ragnarok
  ; Return

  ; LButton::
  ; If (toggle := !toggle) {
  ; Click, down, Left
  ; } Else {
  ; Click, up, Left
  ; }
  ; Return
#IfWinActive

; Ruff Officer [Infinite Orc Hero Card]
; Illusion Ar [Kick Step]
; Temporal Str Boots [Infinite Vagabond Wolf Card]
; Upgrade Part - E [Brown Rat Card]
; Tengu 