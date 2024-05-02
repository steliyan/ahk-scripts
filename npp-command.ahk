#NoTrayIcon

if (%0% = 0)
{
    MsgBox, 0x10, File not specified!, You need to specify a valid file path...
    Exit, 1
}

command = "C:/Program Files (x86)/Notepad++/notepad++.exe" -multiInst -notabbar -nosession -noPlugin "%1%"
RunWait, %command%,, UseErrorLevel

Exit %A_LastError%
