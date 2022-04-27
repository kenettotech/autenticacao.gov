$currentLocation=Get-Location
if (-Not Test-Path "${currentLocation}/pteid-mw-pt/windows/platform_sdk") {
	New-Item -Path "${currentLocation}/pteid-mw-pt/windows/" -Name "platform_sdk" -ItemType "directory" | Out-Null
}

Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/?linkid=2173743" -OutFile "pteid-mw-pt/windows/platform_sdk\setup.exe" | Out-Null

Start-Process -Wait -FilePath .\pteid-mw-pt/windows\platform_sdk\cdpksetup.exe -Argument "/silent"