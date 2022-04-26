$version = "2.3.1"

Invoke-WebRequest -Uri "https://github.com/uclouvain/openjpeg/releases/download/v2.3.1/openjpeg-v2.3.1-windows-x64.zip" -OutFile "openjpeg${version}.zip" | Expand-Archive -Path "openjpeg${version}.zip"