$currentDir = ($pwd).path.ToLower()
switch -regex ($currentDir) {
    "app-demo" {
        Write-Host 'Start debug mode on port 9090'
        ./gradlew xxRun "-Dorg.gradle.jvmargs=-Xdebug -Xrunjdwp:transport=dt_socket,address=9090,server=y,suspend=n -XX:MaxPermSize=256M"
    }
    default {

    }
}