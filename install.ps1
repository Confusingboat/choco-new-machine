# Hyper-V for Docker
enable-windowsoptionalfeature -online -featurename microsoft-hyper-v -all

# Chocolatey for everything
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
refreshenv

choco install slack -y
choco install discord -y
choco install spotify -y
choco install microsoft-edge -y
choco install brave -y
choco install 1password -y
choco install docker-desktop -y
choco install vscode --params "/NoDesktopIcon" -y
choco install postman -y
choco install visualstudio2019community -y
choco install jetbrainstoolbox -y
choco install resharper-ultimate-all --params "'/PerMachine /NoCpp /NoTeamCityAddin'" -y
