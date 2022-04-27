$externalLibsFolder = "${PSScriptRoot}/external-libs"

$urls = @(
  [pscustomobject]@{url='https://curl.se/download/curl-7.82.0.zip';fileName='curl-7.82.0.zip';isInstaller=$false}
  [pscustomobject]@{url='https://sourceforge.net/projects/libpng/files/libpng16/1.6.37/lpng1637.zip/download';fileName='libpng1.6.37.zip';isInstaller=$false}
  [pscustomobject]@{url='https://www.zlib.net/zlib1212.zip';fileName='zlib1.2.12.zip';isInstaller=$false}
  [pscustomobject]@{url='http://archive.apache.org/dist/santuario/c-library/xml-security-c-2.0.2.zip';fileName='xml-security-c-2.0.2.zip';isInstaller=$false}
  [pscustomobject]@{url='https://github.com/nih-at/libzip/archive/refs/tags/rel-1-5-2.zip';fileName='libzip1.5.2.zip';isInstaller=$false}
  [pscustomobject]@{url='https://github.com/uclouvain/openjpeg/releases/download/v2.3.1/openjpeg-v2.3.1-windows-x64.zip';fileName='openjpeg2.3.1.zip';isInstaller=$false}
  [pscustomobject]@{url='https://dlcdn.apache.org//xerces/c/3/sources/xerces-c-3.2.3.zip';fileName='xerces-c-3.2.3.zip';isInstaller=$false}
  [pscustomobject]@{url='https://download.microsoft.com/download/1/7/6/176909B0-50F2-4DF3-B29B-830A17EA7E38/CPDK_RELEASE_UPDATE/cpdksetup.exe';fileName='cpdksetup.exe';isInstaller=$true}
  [pscustomobject]@{url='https://go.microsoft.com/fwlink/?linkid=2173743';fileName='platform_sdk_setup.exe';isInstaller=$true}
)

$urls | ForEach-Object {
  Invoke-WebRequest -Uri "$_.url" -OutFile "${externalLibsFolder}/$_.fileName" | Out-Null
  if ($_.isInstaller) {
    Start-Process -Wait -FilePath "${externalLibsFolder}/$_.fileName" -Argument "/silent"
  } else {
    Expand-Archive -Path "${externalLibsFolder}/$_.fileName" -DestinationPath "${externalLibsFolder}/" | Out-Null
  }
}

#Remove-Item "${externalLibsFolder}/*" -Include *.zip,*.exe


# Change the cache