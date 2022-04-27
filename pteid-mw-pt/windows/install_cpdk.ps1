$currentLocation=Get-Location
New-Item -Path "${currentLocation}" -Name "cpdk" -ItemType "directory"  | Out-Null

Invoke-WebRequest -Uri "https://download.microsoft.com/download/1/7/6/176909B0-50F2-4DF3-B29B-830A17EA7E38/CPDK_RELEASE_UPDATE/cpdksetup.exe" -OutFile "cpdk\cpdksetup.exe" | Out-Null

Start-Process -Wait -FilePath .\cpdk\cdpksetup.exe -Argument "/silent"