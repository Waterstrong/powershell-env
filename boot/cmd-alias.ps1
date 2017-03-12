Set-Alias glw ./gradlew
Set-Alias ll ls
Set-Alias grep findstr

Get-ChildItem "$env:SCRIPT_HOME\source\*.ps1" | Foreach-Object { Set-Alias $_.BaseName $_.FullName }