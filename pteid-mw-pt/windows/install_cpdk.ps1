$currentLocation=Get-Location
if (-Not Test-Path "${currentLocation}/pteid-mw-pt/windows/cpdk") {
	New-Item -Path "${currentLocation}/pteid-mw-pt/windows/" -Name "cpdk" -ItemType "directory"  | Out-Null
}

Invoke-WebRequest -Uri "https://download.microsoft.com/download/1/7/6/176909B0-50F2-4DF3-B29B-830A17EA7E38/CPDK_RELEASE_UPDATE/cpdksetup.exe" -OutFile "pteid-mw-pt/windows/cpdk\cpdksetup.exe" | Out-Null

Start-Process -Wait -FilePath .\pteid-mw-pt\windows\cpdk\cdpksetup.exe -Argument "/silent"