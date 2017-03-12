$env:JAVA_HOME = $env:JAVA_8_HOME
.java-path

if ($?) {
    Write-Host "Set Java version to 1.8"
}