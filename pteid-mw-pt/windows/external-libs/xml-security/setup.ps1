$version = "2.0.2"

Invoke-WebRequest -Uri "http://archive.apache.org/dist/santuario/c-library/xml-security-c-${version}.zip" -OutFile "${PSScriptRoot}/xml-security-c-${version}.zip" | Out-Null


Expand-Archive -Path "${PSScriptRoot}/xml-security-c-${version}.zip" -DestinationPath "${PSScriptRoot}"