My attempt to automate a lot of manual tasks that need to be performed when freshly installing Windows. Other scripts exist but this one is all about my preferences. Trying to keep it simple without functions and loops.

# How to use

1. Start an elevated powershell (run as administrator)
1. Run `Set-ExecutionPolicy Bypass -Scope Process` to enable custom scripts
1. Run install1.ps1 by running `.\install1.ps1`
1. Restart the computer
1. Run `Set-ExecutionPolicy Bypass -Scope Process` to enable custom scripts
1. Run install2.ps1 by running `.\install2.ps1`

