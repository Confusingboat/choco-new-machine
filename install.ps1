# Hyper-V for Docker
enable-windowsoptionalfeature -online -featurename microsoft-hyper-v -all

# Chocolatey for everything
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
refreshenv

# Setup WSL2
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wget https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -outfile "$(get-location)\wsl_update_x64.msi"
msiexec /i wsl_update_x64.msi /quiet
wsl --set-default-version 2

choco install slack -y
choco install discord -y
choco install spotify -y
choco install microsoft-edge -y
choco install brave -y
choco install 1password -y
choco install docker-desktop -y
choco install vscode --params "/NoDesktopIcon" -y
choco install postman -y
choco install visualstudio2019community -y --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"
choco install jetbrainstoolbox -y
choco install resharper-ultimate-all --params "'/PerMachine /NoCpp /NoTeamCityAddin'" -y
