$version = "1.6.37"

Invoke-WebRequest -Uri "https://sourceforge.net/projects/libpng/files/libpng16/${version}/lpng1637.zip/download" -OutFile "libpng${version}.zip" | Expand-Archive -Path "libpng${version}.zip"