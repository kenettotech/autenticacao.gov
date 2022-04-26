$version = "2.0.2"

Invoke-WebRequest -Uri "http://archive.apache.org/dist/santuario/c-library/xml-security-c-${version}.zip" -OutFile "xml-security-c-${version}.zip" | Expand-Archive -Path "xml-security-c-${version}.zip"