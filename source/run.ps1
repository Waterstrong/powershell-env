$currentDir = ($pwd).path.ToLower()
switch -regex ($currentDir) {
    "app-demo" {
        ./gradlew xxRun "-Dorg.gradle.jvmargs=-XX:MaxPermSize=256M"
    }
    default {

    }
}