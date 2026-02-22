;Accent francais et autres


frenchmode := False

::frenchmode::
    frenchmode := !frenchmode
    if (frenchmode) {
        ToolTip, French mode ON
    } else {
        ToolTip, French mode OFF
    }
    SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
    ToolTip
return

#if frenchmode

::a1c::à
::A1c::À
::achap::â
::Achap::Â
::a2c::á
::A2c::Á

::e1c::é
::E1c::É
::e2c::è
::E2c::È
::echapo::ê
::Echapo::Ê

::c1c::ç
::C1c::Ç

#If 