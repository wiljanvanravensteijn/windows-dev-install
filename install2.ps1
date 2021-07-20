Invoke-WebRequest -uri "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi" -out "$env:TEMP\kernel.msi"
Start-Process -FilePath "$env:TEMP\kernel.msi" /qn
wsl --set-default-version 2
choco install wsl-ubuntu-2004
remove-item "$env:TEMP\kernel.msi"