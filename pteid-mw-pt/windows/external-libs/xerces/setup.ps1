$version = "3.2.3"

Invoke-WebRequest -Uri "https://dlcdn.apache.org//xerces/c/3/sources/xerces-c-${version}.zip" -OutFile "${PSScriptRoot}/xerces-c-${version}.zip" | Expand-Archive -Path "${PSScriptRoot}/xerces-c-${version}.zip"