Write-Host "Ready to copy $pwd\profile\profile.ps1 into $env:windir\System32\WindowsPowerShell\v1.0\"
Copy-Item ".\profile\profile.ps1" "$env:windir\System32\WindowsPowerShell\v1.0"

Write-Host "Ready to setup environment variable SCRIPT_HOME=$pwd"
[Environment]::SetEnvironmentVariable("SCRIPT_HOME", $pwd, "Machine")

if($?) {
    Write-Host
    Write-Host 'Installed configuration successfully! Please restart your PowerShell and fell free to use...'
    Write-Host
}