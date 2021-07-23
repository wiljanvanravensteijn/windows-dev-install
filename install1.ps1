# 
# You should allow scripts in powershell by first running: Set-ExecutionPolicy Bypass -Scope Process 
#

# Install windows-features
Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName:Microsoft-Hyper-V -All
Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName:Microsoft-Windows-Subsystem-Linux -all
Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName:VirtualMachinePlatform -All

# Install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation

# Install basic software
choco install 7zip
choco install clamwin
choco install dbeaver
choco install docker-desktop
choco install dotnet
choco install dotnet-sdk
choco install git
choco install git-lfs
choco install googlechrome
choco install keepass
choco install microsoft-windows-terminal
choco install mRemoteNG
choco install nodejs-lts
choco install putty
choco install python
choco install vlc
choco install vscode
choco install winscp
choco install wsl2

# Global node packages
npm install -g eslint
npm install -g yarn
npm install -g "@vue/cli"

# Remove unnecessary apps
Get-AppxPackage *.AdobePhotoshopExpress | Remove-AppxPackage
Get-AppxPackage *.Duolingo-LearnLanguagesforFree | Remove-AppxPackage
Get-AppxPackage *.EclipseManager | Remove-AppxPackage
Get-AppxPackage *Autodesk* | Remove-AppxPackage
Get-AppxPackage *BubbleWitch* | Remove-AppxPackage
Get-AppxPackage *Dell* | Remove-AppxPackage
Get-AppxPackage *Facebook* | Remove-AppxPackage
Get-AppxPackage *Keeper* | Remove-AppxPackage
Get-AppxPackage *MarchofEmpires* | Remove-AppxPackage
Get-AppxPackage *Minecraft* | Remove-AppxPackage
Get-AppxPackage *Netflix* | Remove-AppxPackage
Get-AppxPackage *Plex* | Remove-AppxPackage
Get-AppxPackage *Solitaire* | Remove-AppxPackage
Get-AppxPackage *Twitter* | Remove-AppxPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage ActiproSoftwareLLC.562882FEEB491 | Remove-AppxPackage
Get-AppxPackage G5* | Remove-AppxPackage
Get-AppxPackage king.com* | Remove-AppxPackage
Get-AppxPackage Microsoft.3DBuilder | Remove-AppxPackage
Get-AppxPackage Microsoft.BingFinance | Remove-AppxPackage
Get-AppxPackage Microsoft.BingNews | Remove-AppxPackage
Get-AppxPackage Microsoft.BingSports | Remove-AppxPackage
Get-AppxPackage Microsoft.BingWeather | Remove-AppxPackage
Get-AppxPackage Microsoft.CommsPhone | Remove-AppxPackage
Get-AppxPackage Microsoft.FreshPaint | Remove-AppxPackage
Get-AppxPackage Microsoft.GetHelp | Remove-AppxPackage
Get-AppxPackage Microsoft.Getstarted | Remove-AppxPackage
Get-AppxPackage Microsoft.GetStarted | Remove-AppxPackage
Get-AppxPackage Microsoft.Messaging | Remove-AppxPackage
Get-AppxPackage Microsoft.Microsoft3DViewer | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
Get-AppxPackage Microsoft.MixedReality.Portal | Remove-AppxPackage
Get-AppxPackage Microsoft.MSPaint | Remove-AppxPackage
Get-AppxPackage Microsoft.NetworkSpeedTest | Remove-AppxPackage
Get-AppxPackage Microsoft.Office.Sway | Remove-AppxPackage
Get-AppxPackage Microsoft.OneConnect | Remove-AppxPackage
Get-AppxPackage Microsoft.Print3D | Remove-AppxPackage
Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage
Get-AppxPackage Microsoft.Tips | Remove-AppxPackage
Get-AppxPackage Microsoft.ToDo | Remove-AppxPackage
Get-AppxPackage Microsoft.Wallet | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsCamera | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsFeedbackHub | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsMaps | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsPhone | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsSoundRecorder | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxIdentityProvider | Remove-AppxPackage
Get-AppxPackage Microsoft.YourPhone | Remove-AppxPackage
Get-AppxPackage Microsoft.ZuneMusic | Remove-AppxPackage
Get-AppxPackage Microsoft.ZuneVideo | Remove-AppxPackage

# VS Code extensions
code --install-extension 2gua.rainbow-brackets
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension jianbingfang.dupchecker
code --install-extension mhutchie.git-graph
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension msjsdiag.debugger-for-edge
code --install-extension ms-dotnettools.csharp
code --install-extension ms-python.python
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension octref.vetur
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension zawys.vscode-as-git-mergetool

# Let git use ssh from putty
[Environment]::SetEnvironmentVariable("GIT_SSH","C:\ProgramData\chocolatey\lib\putty.portable\tools\plink.exe", "user")

# Set region to Dutch (my region)
Set-Culture nl-NL

# Remove shortcuts from desktop
$DesktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$DesktopPath\*.lnk"

$DesktopPath = [Environment]::GetFolderPath("CommonDesktopDirectory")
Remove-Item "$DesktopPath\*.lnk"

echo ""
echo "After this, the computer should be restarted and install2.ps1 should be run to finish installation"
