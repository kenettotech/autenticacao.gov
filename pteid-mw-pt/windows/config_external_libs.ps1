$currentLocation=Get-Location
$externalLibsFolder = "${currentLocation}/pteid-mw-pt/windows/external-libs/"

Get-ChildItem "${externalLibsFolder}" -Recurse -Directory | ForEach-Object {
  & "${externalLibsFolder}$_/setup.ps1" | Out-Default
}