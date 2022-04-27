$version = "1-5-2"

Invoke-WebRequest -Uri "https://github.com/nih-at/libzip/archive/refs/tags/rel-${version}.zip" -OutFile "${PSScriptRoot}/libzip${version}.zip" | Expand-Archive -Path "${PSScriptRoot}/libzip${version}.zip"