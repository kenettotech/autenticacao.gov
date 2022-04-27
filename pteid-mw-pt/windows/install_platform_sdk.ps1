$currentLocation=Get-Location
New-Item -Path "${currentLocation}" -Name "platform_sdk" -ItemType "directory" | Out-Null

Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/?linkid=2173743" -OutFile "platform_sdk\setup.exe" | Out-Null

Start-Process -Wait -FilePath .\platform_sdk\cdpksetup.exe -Argument "/silent"