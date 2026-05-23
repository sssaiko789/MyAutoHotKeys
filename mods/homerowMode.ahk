
rowMode := "none"

<+Space::
    
    if (rowMode = "none" || (rowMode != "none" && rowMode != "homerowL"))
    {
        rowMode := "homerowL"

        Tooltip, HomeRow Mode L ON
        
        Gui, WinMode2:New
        Gui, WinMode2:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinMode2:Color, 63C132
        Gui, WinMode2:Font, cWhite s7 Bold, Segoe UI
        Gui, WinMode2:Add, Text,, HOMEROW MODE L
        Gui, WinMode2:Show, x210 y1055 NoActivate


        Gui, WinMode2_1:New
        Gui, WinMode2_1:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinMode2_1:Color, 63C132
        Gui, WinMode2_1:Font, cWhite s7 Bold, Segoe UI
        Gui, WinMode2_1:Add, Text,, L
        Gui, WinMode2_1:Show, x400 y1055 NoActivate
    }
    else
    {   
        rowMode := "none"

        Tooltip, HomeRow Mode OFF

        Gui, WinMode2:Destroy
        Gui, WinMode2_1:Destroy
    }
    SetTimer, RemoveToolTip, -1000
return

>+Space::
    
    if (rowMode = "none" || (rowMode != "none" && rowMode != "homerowR"))
    {
        rowMode := "homerowR"

        Tooltip, HomeRow Mode R ON
        Gui, WinMode2:New
        Gui, WinMode2:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinMode2:Color, B14AED
        Gui, WinMode2:Font, cWhite s7 Bold, Segoe UI
        Gui, WinMode2:Add, Text,, HOMEROW MODE R
        Gui, WinMode2:Show, x210 y1055 NoActivate


        Gui, WinMode2_1:New
        Gui, WinMode2_1:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinMode2_1:Color, B14AED
        Gui, WinMode2_1:Font, cWhite s7 Bold, Segoe UI
        Gui, WinMode2_1:Add, Text,, R
        Gui, WinMode2_1:Show, x1450 y1055 NoActivate
    }
    else
    {   
        rowMode := "none"

        Tooltip, HomeRow Mode OFF

        Gui, WinMode2:Destroy
        Gui, WinMode2_1:Destroy
    }
    SetTimer, RemoveToolTip, -1000
return


#if (rowMode = "homerowL")
    a::Shift
    r::Ctrl
#if

#if (rowMode = "homerowR")
    o::Shift
    i::Ctrl
#if

