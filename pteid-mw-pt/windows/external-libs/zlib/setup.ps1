$version = "1212"

Invoke-WebRequest -Uri "https://www.zlib.net/zlib${version}.zip" -OutFile "${PSScriptRoot}/zlib${version}.zip" | Out-Null


Expand-Archive -Path "${PSScriptRoot}/zlib${version}.zip" -DestinationPath "${PSScriptRoot}"