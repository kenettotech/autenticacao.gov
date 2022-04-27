$version = "7.82.0"

Invoke-WebRequest -Uri "https://curl.se/download/curl-${version}.zip" -OutFile "${PSScriptRoot}/curl-${version}.zip" | Expand-Archive -Path "${PSScriptRoot}/curl-${version}.zip"