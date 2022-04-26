$version = "3.2.3"

Invoke-WebRequest -Uri "https://dlcdn.apache.org//xerces/c/3/sources/xerces-c-${version}.zip" -OutFile "xerces-c-${version}.zip" | Expand-Archive -Path "xerces-c-${version}.zip"