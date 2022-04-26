New-Item -Path "${Get-Location}" -Name "platform_sdk" -ItemType "directory"

Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/?linkid=2173743" -OutFile "platform_sdk\setup.exe"

Start-Process -Wait -FilePath .\platform_sdk\cdpksetup.exe -Argument "/silent"