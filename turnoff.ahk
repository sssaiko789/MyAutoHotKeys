::turnoffpc::
Send {Tab}
ToolTip Arrêt dans 5 secondes - touche pour annuler
SetTimer CancelCheck, 10
Sleep 5000
SetTimer CancelCheck, Off
ToolTip
Shutdown, 1
return

::sleeppc::
Send {Tab}
ToolTip Mise en veille dans 5 secondes - touche pour annuler
SetTimer CancelCheck, 10
Sleep 3000
SetTimer CancelCheck, Off
ToolTip
DllCall("PowrProf\SetSuspendState","int",0,"int",0,"int",0)
return

::lockpc::
Send {Tab}
DllCall("LockWorkStation")
return

CancelCheck:
if GetKeyState("Escape","P")
|| GetKeyState("Space","P")
|| GetKeyState("Enter","P")
|| GetKeyState("LButton","P")
{
ToolTip Annulé
SetTimer CancelCheck, Off
Sleep 1000
ToolTip
Reload
}
return