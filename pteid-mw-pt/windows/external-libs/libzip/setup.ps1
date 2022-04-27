$version = "1-5-2"

Invoke-WebRequest -Uri "https://github.com/nih-at/libzip/archive/refs/tags/rel-${version}.zip" -OutFile "${PSScriptRoot}/libzip${version}.zip" | Out-Null


Expand-Archive -Path "${PSScriptRoot}/libzip${version}.zip" -DestinationPath "${PSScriptRoot}"