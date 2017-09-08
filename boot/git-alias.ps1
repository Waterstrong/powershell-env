function Get-GitStatus { & git status }
New-Alias -Name gst -Value Get-GitStatus

function Get-GitBranch([string]$branch) { & git branch $branch}
New-Alias -Name gb -Value Get-GitBranch

function Get-GitBranchAll { & git branch --all }
New-Alias -Name gba -Value Get-GitBranchAll

function Get-GitCheckout([string]$param) { & git checkout $param }
New-Alias -Name gco -Value Get-GitCheckout

function Get-GitAddUstaged { & git add -u }
New-Alias -Name gau -Value Get-GitAddUstaged

function Get-GitAddAll { & git add . }
New-Alias -Name gaa -Value Get-GitAddAll

function Get-GitCommitMsg([string]$message) { & git commit -m $message }
New-Alias -Name gcmsg -Value Get-GitCommitMsg

function Get-GitPullRebase { & git pull --rebase }
New-Alias -Name gup -Value Get-GitPullRebase

function Get-GitPullRebaseWithStash { & git stash; git pull --rebase; git stash pop }
New-Alias -Name gups -Value Get-GitPullRebaseWithStash

function Get-GitLogGraph { & git log --oneline --decorate --color --graph }
New-Alias -Name glog -Value Get-GitLogGraph