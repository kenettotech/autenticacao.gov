$version = "1212"

Invoke-WebRequest -Uri "https://www.zlib.net/zlib${version}.zip" -OutFile "zlib${version}.zip" | Expand-Archive -Path "zlib${version}.zip"