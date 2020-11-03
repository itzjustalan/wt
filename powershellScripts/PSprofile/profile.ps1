#profile.ps1
#nov-02-2020
#AlanKJOhn



#PowerLine setup

#fonts supporting poerline have to be specified in the emulator

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
#####################################################################

#setting starting location

set-location g:\work\temp\work\
#####################################################################

#Setting shell window title

#$Shell.WindowTitle="SysadminGeek"
#####################################################################

#Change the window size and scrollback with the following:

#$Shell = $Host.UI.RawUI
#$size = $Shell.WindowSize
#$size.width=70
#$size.height=25
#$Shell.WindowSize = $size
#$size = $Shell.BufferSize
#$size.width=70
#$size.height=5000
#$Shell.BufferSize = $size
#$shell.BackgroundColor = "Gray"
#$shell.ForegroundColor = "Black"
#####################################################################

#Clear Screen

#Clear-Host
#####################################################################

# functions
function gitStatus () {
    git status
}
function gitAddAll () {
    git add -A
}

function gitCommit ([string]$message) {
    git commit -m "$message"
}

function mkcdir {
    [CmdletBinding()]
    param(
       [Parameter(Mandatory = $true)]
       $Path
    )
 
    New-Item -Path $Path -ItemType Directory
 
    Set-Location -Path $Path
 }
#####################################################################

#git aliases
Set-Alias s gitStatus;
Set-Alias al gitAddAll;
Set-Alias cm gitCommit;
Set-Alias mkcdir mkcdir;
#####################################################################






#tests
#Set-Alias np C:\WINDOWS\system32\notepad.exe;
#new-item alias:np -value C:WindowsSystem32notepad.exe





#####################################################################
#####################################################################
#####################################################################
#####################################################################
#####################################################################
#####################################################################
#####################################################################
#####################################################################
#####################################################################



#EXAMPLES

<#
PS function with multiple arguments
function foo($a, $b, $c) {
    "a: $a; b: $b; c: $c"
 }
 
 ps> foo 1 2 3
 a: 1; b: 2; c: 3
#>


<#
#basic examples
$foregroundColor = 'white'
$time = Get-Date
$psVersion= $host.Version.Major
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value

Write-Host "Greetings, $curUser!" -foregroundColor $foregroundColor
Write-Host "It is: $($time.ToLongDateString())"
Write-Host "You're running PowerShell version: $psVersion" -foregroundColor Green
Write-Host "Your computer name is: $curComp" -foregroundColor Green
Write-Host "Happy scripting!" `n

function Prompt {

#$curtime = Get-Date

Write-Host -NoNewLine "p" -foregroundColor $foregroundColor
Write-Host -NoNewLine "$" -foregroundColor Green
Write-Host -NoNewLine "[" -foregroundColor Yellow
Write-Host -NoNewLine ("{0}" -f (Get-Date)) -foregroundColor $foregroundColor
Write-Host -NoNewLine "]" -foregroundColor Yellow
Write-Host -NoNewLine ">" -foregroundColor Red

$host.UI.RawUI.WindowTitle = "PS >> User: $curUser >> Current DIR: $((Get-Location).Path)"

Return " "

}
#>


