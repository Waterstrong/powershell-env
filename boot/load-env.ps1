. "$env:SCRIPT_HOME\library\*.ps1"

$ini = Parse-IniFile "$env:SCRIPT_HOME\home.ini"

$env:PROJECT_HOME = $ini['HOME']['Project']
$env:JAVA_6_HOME = $ini['HOME']['Java6']
$env:JAVA_7_HOME = $ini['HOME']['Java7']
$env:JAVA_8_HOME = $ini['HOME']['Java8']
$env:JAVA_HOME = $env:JAVA_8_HOME
.java-path