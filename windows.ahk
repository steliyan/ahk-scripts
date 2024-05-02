; Another implementation
; https://autohotkey.com/board/topic/66588-cyclewindow/

#SingleInstance Force
SetTitleMatchMode, Regex

#IfWinNotActive ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]
#`::
    WinGetClass, CurrentActive, A
    WinGet, Instances, Count, ahk_class %CurrentActive%
    If Instances > 1
        WinSet, Bottom,, A
    WinActivate, ahk_class %CurrentActive%
Return

#IfWinNotActive ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]
#+`::
    WinGetClass, CurrentActive, A
    WinGet, Instances, Count, ahk_class %CurrentActive%
    If Instances > 1
        WinActivateBottom, ahk_class %CurrentActive%
Return

#IfWinActive ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]
#`::
    WinGet, WindowsCount, Count, ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]
    
    If (WindowsCount > 1)
    {
        ; Move current window to the bottom of the stack
        WinSet, Bottom,, A
        
        ; Get the current window list
        WinGet, WindowsList, List, ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]

        ; Active the window on top of the stack
        topWindow := WindowsList1
        WinActivate, ahk_id %topWindow%
    }
Return

#IfWinActive ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]
#+`::
    WinGet, WindowsCount, Count, ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]
    
    If (WindowsCount > 1)
    {
        ; Get the current window list
        WinGet, WindowsList, List, ahk_class HwndWrapper\[DefaultDomain;;[\da-f\-]+]

        ; Move current window to the bottom of the stack
        WinSet, Bottom,, A
        
        ; Active the window on top of the stack
        bottomWindow := WindowsList%WindowsCount%
        WinActivate, ahk_id %WindowsList1%
    }
Return