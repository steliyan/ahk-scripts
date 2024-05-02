$^return::
IfWinActive ahk_class IMWindowClass
    Return
Send ^p
Return

$+^return::
IfWinActive ahk_class IMWindowClass
    Return
Send +^p
Return
