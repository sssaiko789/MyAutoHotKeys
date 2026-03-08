; mode pour changer de fenetre avec nuie (alt+tab ou ctrl+tab)

winswitchMode := False

#if navMode

    f::
        ;winswitchMode := !winswitchMode
        if (subMode = "none" || (subMode != "none" && subMode != "window") )
        {
            subMode := "window"
            Gui, WinMode:Color, 0563FA
            Tooltip, WinSwitch Mode ON
        }
        else
        {   
            subMode := "none"

            Gui, WinMode:Color, 880D1E
            Tooltip, WinSwithc Mode OFF
        }
        SetTimer, RemoveToolTip, -1000
    return

#if



#if (subMode = "window")



#if