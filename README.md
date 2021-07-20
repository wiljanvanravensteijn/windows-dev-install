My attempt to automate a lot of manual tasks that need to be performed when freshly installing windows. Mainly oriented to developers.

# How to use:

1. Start an elevated powershell (run as administrator)
1. Run `Set-ExecutionPolicy Bypass -Scope Process` to enable custom scripts
1. Run install1.ps1
1. Restart the computer
1. Run `Set-ExecutionPolicy Bypass -Scope Process` to enable custom scripts
1. Run install2.ps1
