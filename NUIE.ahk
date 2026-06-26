; --- Toggle navigation mode and math mode---
; attention a #if
; variable peut etre declarer plus tard







navMode := false
subMode := "none"


;si caps est maintenu sa active capsheld
CapsLock::
    SetTimer, CapsHeld, 500
return

; Majuscule pour activer/désactiver le mode navigation
CapsLock Up:: 
    ;descative le timer car caps a ete appuie uniqument
    SetTimer, CapsHeld, Off

    navMode := !navMode
    
    if (navMode)
    {
        subMode := "none"

        ; Gui fixe en bas a gauche de l'écran
        Gui, WinMode:New
        Gui, WinMode:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinMode:Color, F44E3F
        Gui, WinMode:Font, cWhite s10 Bold, Segoe UI
        Gui, WinMode:Add, Text,, NAVIGATION MODE
        Gui, WinMode:Show, x10 y1030 NoActivate
      
    }
    else
    {
        subMode := "none"

        ; Supprime le GUI
        Gui, WinMode:Destroy

    }
return

CapsHeld:
    SetTimer, CapsHeld, Off
    Tooltip, Clear ON
    SetTimer, RemoveToolTip, -1000

    Gui, WinMode1:Destroy
    Gui, WinMode2:Destroy
    Gui, WinMode2_1:Destroy
    Gui, WinMode3:Destroy
    navMode := False
    subMode := "none"
    NumMode := "none"
    rowMode := "none"
    

return





#if (navMode && subMode = "none" ) ;activer uniuqment quand navMode est actif
    ; Touches de nlavigation
    n::Left
    e::Down
    u::Up
    i::Right
#if






#if navMode

    ; Touches de supression
    ; suprimer un charactere
    t::Send {BackSpace}
    ; suprimer un mot
    d::send ^{BackSpace}

    ; echap
    a::send {Esc}

    ; annuler
    z::send ^{z}

    ; copier couper coller
    c::send ^{c}
    v::send ^{v}
    x::send ^{x}
    
#If



;script pour home row mod
#Include, mods\homerowMode.ahk

;script pour le mode changement de fenetrea
#Include, mods\winswitchMode.ahk



;scipt math mode
#Include, mods\mathMode.ahk




;script pour eteinder+veille+verrouiller mom ordi avec turnoff+tab
#Include, mods\turnoff.ahk


;script pour transformer arstqwfpgn en chiffres
#Include, mods\numMode.ahk

