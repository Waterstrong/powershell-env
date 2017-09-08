$currentDir = ($pwd).path.ToLower()
switch -regex ($currentDir) {
    "app-demo" {
        ./gradlew clean build -x aT "-Dorg.gradle.jvmargs=-XX:MaxPermSize=256M"
    }
    default {
        ./gradlew clean build
    }
}