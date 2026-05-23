;mode pour ecrire des chiffre facilement avec arstqwfpgn
;a=1,r=2,s=3,t=4,q=5,w=6,f=7,p=8,g=9, n=0

NumMode := "none"

<^>!Space::
!Space::
    if (NumMode = "none")
    {
        NumMode := "number"

        Gui, WinMode3:New
        Gui, WinMode3:+AlwaysOnTop -Caption +ToolWindow
        Gui, WinMode3:Color, F44E3F
        Gui, WinMode3:Font, cWhite s7 Bold, Segoe UI
        Gui, WinMode3:Add, Text,, NUM MODE
        Gui, WinMode3:Color, AF9164
        Gui, WinMode3:Show, x210 y1030 NoActivate


        

        Tooltip, Num Mode ON
    }
    else
    {
        NumMode := "none"

        
        Gui, WinMode3:Destroy
        
        Tooltip, Num Mode OFF
    }
    SetTimer, RemoveToolTip, -1000
return




#if (NumMode = "number")

    q::1
    w::2
    f::3
    p::4
    g::5
    j::6
    l::7
    u::8
    y::9
    `;::0
    n::-
    e::=

#if



