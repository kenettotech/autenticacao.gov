$version = "1.6.37"

Invoke-WebRequest -Uri "https://sourceforge.net/projects/libpng/files/libpng16/${version}/lpng1637.zip/download" -OutFile "${PSScriptRoot}/libpng${version}.zip" | Expand-Archive -Path "${PSScriptRoot}/libpng${version}.zip"