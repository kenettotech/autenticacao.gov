$externalLibsFolder = "${PSScriptRoot}/external-libs"

$urls = @(
  'https://curl.se/download/curl-7.82.0.zip',
  'https://downloads.sourceforge.net/project/libpng/libpng16/1.6.37/lpng1637.zip?ts=gAAAAABiaSaMKuouSDZQA6yHhRXNxrFqZpViErwVDouTTPB-tWsokgtFfJ5yRRPpG755hBjOZWWYGAXAPxAzAtDzj9T9XninzA%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Flibpng%2Ffiles%2Flibpng16%2F1.6.37%2Flpng1637.zip%2Fdownload',
  'https://www.zlib.net/zlib1212.zip',
  'http://archive.apache.org/dist/santuario/c-library/xml-security-c-2.0.2.zip',
  'https://github.com/nih-at/libzip/archive/refs/tags/rel-1-5-2.zip',
  'https://github.com/uclouvain/openjpeg/releases/download/v2.3.1/openjpeg-v2.3.1-windows-x64.zip',
  'https://dlcdn.apache.org//xerces/c/3/sources/xerces-c-3.2.3.zip',
  'https://download.microsoft.com/download/1/7/6/176909B0-50F2-4DF3-B29B-830A17EA7E38/CPDK_RELEASE_UPDATE/cpdksetup.exe',
  'https://go.microsoft.com/fwlink/?linkid=2173743'
)

$fileNames = @(
  'curl-7.82.0.zip',
  'libpng1.6.37.zip',
  'zlib1.2.12.zip',
  'xml-security-c-2.0.2.zip',
  'libzip1.5.2.zip',
  'openjpeg2.3.1.zip',
  'xerces-c-3.2.3.zip',
  'cpdksetup.exe',
  'platform_sdk_setup.exe'
)

$installers = @(
  $false,
  $false,
  $false,
  $false,
  $false,
  $false,
  $false,
  $true,
  $true
)

$i = 0
foreach ($url in $urls) {
  $fileName = $fileNames[$i]
  $isInstaller = $installers[$i]
  $i = $i + 1
  Write-Host "Processing file with name ${fileName}, will download from url ${url}"
  Invoke-WebRequest -Uri "${url}" -OutFile "${externalLibsFolder}/${fileName}" | Out-Null
  if ($isInstaller) {
    Write-Host "Is installer, will try to install executable at path ${externalLibsFolder}/${fileName}"
    Start-Process -Wait -FilePath "${externalLibsFolder}/${fileName}" -Argument "/silent"
    Write-Host "Installed executable at path ${externalLibsFolder}/${fileName}"
  } else {
    Write-Host "Is not installer, will try to expand archive at path ${externalLibsFolder}/${fileName}"
    Expand-Archive -Path "${externalLibsFolder}/${fileName}" -DestinationPath "${externalLibsFolder}/" | Out-Null
    Write-Host "Expanded archive at path ${externalLibsFolder}/${fileName}"
  }
  Write-Host "Finished processing file with name ${fileName}"
}

#Remove-Item "${externalLibsFolder}/*" -Include *.zip


# Change the cache