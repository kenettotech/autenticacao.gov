$currentLocation=Get-Location
$externalLibsFolder = "${currentLocation}/external-libs"

Get-ChildItem $externalLibsFolder -Recurse -Directory | ForEach-Object -Parallel {
  & $_/setup.ps1
} -ThrottleLimit 4