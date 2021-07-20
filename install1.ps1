# 
# You should allow scripts in powershell by first running: Set-ExecutionPolicy Bypass -Scope Process 
#

# install windows-features
Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName:Microsoft-Hyper-V -All
Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName:Microsoft-Windows-Subsystem-Linux -all
Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName:VirtualMachinePlatform -All

# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation

# install basic software
choco install vscode git putty docker-desktop nodejs-lts dotnet dotnet-sdk 7zip vlc microsoft-windows-terminal googlechrome wsl2 python

# global node packages
npm install -g yarn eslint

# remove cruft
Get-AppxPackage Microsoft.WindowsCamera | Remove-AppxPackage
Get-AppxPackage Microsoft.Messaging | Remove-AppxPackage
Get-AppxPackage Microsoft.Microsoft3DViewer | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
Get-AppxPackage Microsoft.MixedReality.Portal | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsFeedbackHub | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsMaps | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsSoundRecorder | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage
Get-AppxPackage Microsoft.YourPhone | Remove-AppxPackage
Get-AppxPackage Microsoft.ZuneMusic | Remove-AppxPackage
Get-AppxPackage Microsoft.ZuneVideo | Remove-AppxPackage
Get-AppxPackage Microsoft.Wallet | Remove-AppxPackage
Get-AppxPackage Microsoft.BingNews | Remove-AppxPackage
Get-AppxPackage Microsoft.BingWeather | Remove-AppxPackage
Get-AppxPackage Microsoft.ToDo | Remove-AppxPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage Microsoft.OneConnect | Remove-AppxPackage
Get-AppxPackage Microsoft.GetHelp | Remove-AppxPackage
Get-AppxPackage Microsoft.GetStarted | Remove-AppxPackage
Get-AppxPackage Microsoft.MSPaint | Remove-AppxPackage
Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage
Get-AppxPackage Microsoft.Tips | Remove-AppxPackage

# vs code extensions
code --install-extension ms-dotnettools.csharp
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-python.python
code --install-extension octref.vetur
code --install-extension dbaeumer.vscode-eslint
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension eamodio.gitlens
code --install-extension mhutchie.git-graph
code --install-extension zawys.vscode-as-git-mergetool

echo ""
echo "After this, the computer should be restarted and install2.ps1 should be run to finish installation"


