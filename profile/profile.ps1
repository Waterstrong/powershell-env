Write-Host -NoNewline 'Loading configurations...'

$basePath = "$env:SCRIPT_HOME\boot"
Get-ChildItem "$basePath\*.ps1" | %{.$_}

if ($?) {
    Write-Host 'successfully!'
} else {
    Write-Host
    Write-Host 'Fail to load PowerShell customized configurations!!!'
}