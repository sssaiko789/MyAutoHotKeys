; --- Toggle navigation mode and math mode---
; attention a #if








navMode := false

; Majuscule pour activer/désactiver le mode navigation
CapsLock::  
    navMode := !navMode
    if (navMode)
    {
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
        ; Supprime le GUI
        Gui, WinMode:Destroy
        ; Supprime le GUI de selection si il est actif
        Gui, SelMode:Destroy
    }
return








#if (navMode && !selMode) ;selMode declarer plus tard ligne 68 si pas changer
    ; Touches de nlavigation
    n::Send {Left}
    e::Send {Down}
    u::Send {Up}
    i::Send {Right}
#if




#if navMode
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

    selMode := false

    s::
        selMode := !selMode
        if (selMode && navMode)
        {
            Tooltip, Selection Mode ON
        }
        else if (navMode)
        {   
            Tooltip, Selection Mode OFF
        }
        SetTimer, RemoveToolTip, -1000
    return

#if



#if (selMode && navMode)
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












; character mathematique
MathMode := false


::mathmode::
    MathMode := !MathMode
    if (MathMode)
    {
        Tooltip, Math Mode ON
    }
    else
    {
        Tooltip, Math Mode OFF
    }
    SetTimer, RemoveToolTip, -1000
return



RemoveToolTip:
    Tooltip
return


#if MathMode

    :*:eql::{=}
    :*:pls::{+}
    :*:mns::{-}
    :*:,,::{*}

#if















