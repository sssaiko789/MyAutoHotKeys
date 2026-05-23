; mode pour changer de fenetre avec nuie (alt+tab ou ctrl+tab)

winswitchMode := False

#if navMode

    f::
        ;winswitchMode := !winswitchMode
        if (subMode = "none" || (subMode != "none" && subMode != "window") )
        {
            subMode := "window"
            Gui, WinMode:Color, 30C5FF
            Tooltip, WinSwitch Mode ON
        }
        else
        {   
            subMode := "none"

            Gui, WinMode:Color, F44E3F
            Tooltip, WinSwithc Mode OFF
        }
        SetTimer, RemoveToolTip, -1000
    return

#if



#if (subMode = "window")

    ;navigation dans les fenetres
    i::Send, ^{Tab}
    n::Send, ^+{Tab}

    ;navigation dans application
    u::Send, !{Tab}
    e::Send, !+{Tab}


#if