# powershell-env
PowerShell Environment Auto Setup

## Get Started with PowerShell

- Clone or copy the project into your local, make sure you have the write access.

- Copy the file `home-template.ini` to `home.ini`

- provide your HOME values in file `home.ini`, e.g.
  ```
  [HOME]
  Project=D:\User\Projects
  Java6=C:\Program Files\Java\jdk1.6.0_35
  Java7=C:\Program Files\Java\jdk1.7.0_71
  Java8=C:\Program Files\Java\jdk1.8.0_20
  ```

- Open PowerShell with admin permission and goto the project directory, then run `install.ps1`

- (Optional) Set PowerShell in `ConsoleEmulator`. Run `ConsoleEmulator` as Admin, then goto `Settings->Startup->Specified` named task, set it as `Shells:PowerShell`.

## Usage of Commands

Make sure the Git home/bin is already in PATH

Click and open `ConEmu64.exe`, the command terminal supports automatic completion by pressing TAB. Here are the abbreviations:
```
.project # Go into the Projects directory
.xxx     # Go into the specific project

jdk6     # Switch to Java 6
jdk7     # Switch to Java 7
jdk8     # Switch to Java 8

glw      # Alias of ./gradlew
ll       # Alias of ls
grep     # Alias of findstr

gst      # git status
gcmsg    # git commit -m <message>
gau      # git add -u
gaa      # git add .
gup      # git pull -r
gups     # git stash; git pull -r; git stash pop
gba      # git branch -a
gb       # git branch [new_branch]
gco      # git checkout <branch_name>

build    # bild action based on different project
run      # run server based on different project
debug    # start server in debug mode based on different project
```
