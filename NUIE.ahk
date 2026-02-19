; --- Toggle navigation mode pour VS Code ---

navMode := false

; Majuscule pour activer/désactiver le mode navigation partout
CapsLock::  
    navMode := !navMode
    if (navMode)
    {
        ; Gui fixe en bas a gauche de l'écran
        Gui, WinNavMode:New
        Gui, WinNavMode:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinNavMode:Color, 880D1E
        Gui, WinNavMode:Font, cWhite s10 Bold, Segoe UI
        Gui, WinNavMode:Add, Text,, NAVIGATION MODE
        Gui, WinNavMode:Show, x10 y1030 NoActivate

    }
    else
    {
        ; Supprime le GUI
        Gui, WinNavMode:Destroy
    }
return





; uniquement si navMode = true
#If navMode

; Touches de navigation
n::Send {Left}
e::Send {Down}
u::Send {Up}
i::Send {Right}


#If
