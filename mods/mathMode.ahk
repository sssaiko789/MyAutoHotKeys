
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

    :*?:eql::{=}
    :*?:pls::{+}
    :*?:mns::{-}
    :*?:,,::{*}

    :*?:six::{6}

#if
