$version = "7.82.0"

Invoke-WebRequest -Uri "https://curl.se/download/curl-${version}.zip" -OutFile "curl-${version}.zip" | Expand-Archive -Path "curl-${version}.zip"