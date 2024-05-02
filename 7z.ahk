; As currently 7-Zip doesn't provide the Ctrl+W shortcut for closing the window
; we are taking care of that.
#IfWinActive ahk_class FM
    ^w::WinClose ahk_class FM
Return
