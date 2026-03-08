; --- Toggle navigation mode and math mode---
; attention a #if
; variable peut etre declarer plus tard







navMode := false
subMode := "none"
selMode := false ;inutile

; Majuscule pour activer/désactiver le mode navigation
CapsLock::  
    navMode := !navMode
    
    if (navMode)
    {
        subMode := "none"

        ; Gui fixe en bas a gauche de l'écran
        Gui, WinMode:New
        Gui, WinMode:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinMode:Color, 880D1E
        Gui, WinMode:Font, cWhite s10 Bold, Segoe UI
        Gui, WinMode:Add, Text,, NAVIGATION MODE
        Gui, WinMode:Show, x10 y1030 NoActivate

    }
    else
    {
        subMode := "none"

        ; Supprime le GUI
        Gui, WinMode:Destroy
        ; Supprime le GUI de selection si il est actif
        Gui, SelMode:Destroy

        selMode := False ; desactive le mode selection si il est actif
        winswitchMode := False ; desactive le mode changement de fenetres
    }
return








#if (navMode && subMode = "none" ) ;activer uniuqment quand navMode est actif
    ; Touches de nlavigation
    n::Send {Left}
    e::Send {Down}
    u::Send {Up}
    i::Send {Right}
#if




#if (navMode && subMode = "select")
    ; Navigation plus ctrl
    ^n::Send ^{Left}
    ^e::Send ^{Down}
    ^u::Send ^{Up}
    ^i::Send ^{Right}


    ; selection
    +n::Send +{Left}
    +e::Send +{Down}
    +u::Send +{Up}
    +i::Send +{Right}
#if




#if navMode

    s::
        ;selMode := !selMode
        if (subMode = "none" || (subMode != "none" && subMode != "select"))
        {
            subMode := "select"

            Gui, WinMode:Color, 6600CC
            Tooltip, Selection Mode ON
        }
        else
        {   
            subMode := "none"

            Tooltip, Selection Mode OFF
            Gui, WinMode:Color, 880D1E
        }
        SetTimer, RemoveToolTip, -1000
    return

#if



#if (subMode = "select")
    ; selection plus ctrl
    n::Send ^+{Left}
    e::Send ^+{Down}
    u::Send ^+{Up}
    i::Send ^+{Right}
#if selMode




#if navMode

    ; Touches de supression
    ; suprimer un charactere
    t::Send {BackSpace}

    ; suprimer un mot
    d::send ^{BackSpace}





    ; annuler
    z::send ^{z}

    ; retablir
    q::send ^+{z}




    ; copier coller
    c::send ^{c}
    v::send ^{v}



#If






#Include, winswitchMode.ahk









;scipt math mode
#Include, mathMode.ahk




;script pour eteinder+veille+verrouiller mom ordi avec turnoff+tab
#Include, turnoff.ahk





