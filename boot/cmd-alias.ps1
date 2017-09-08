Set-Alias glw ./gradlew
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias open start

function Goto-ProjectHome { & cd $env:PROJECT_HOME }
Set-Alias .project Goto-ProjectHome

function Goto-PsScriptHome { & cd $env:SCRIPT_HOME }
Set-Alias .ps-script Goto-PsScriptHome

Get-ChildItem "$env:SCRIPT_HOME\source\*.ps1" | Foreach-Object { Set-Alias $_.BaseName $_.FullName }

Get-ChildItem "$env:SCRIPT_HOME\project\*.ps1" | Foreach-Object { Set-Alias ('.'+$_.BaseName) $_.FullName }