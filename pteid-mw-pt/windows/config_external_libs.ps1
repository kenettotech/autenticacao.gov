$currentLocation=Get-Location
$externalLibsFolder = "${currentLocation}/external-libs" | Out-Null

Get-ChildItem "${externalLibsFolder}" -Recurse -Directory | ForEach-Object {
  & $_/setup.ps1 | Out-Null
}