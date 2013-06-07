$packageName = 'PeerCastStation'
$version = '1.4.0'

$url = "http://www.pecastation.org/files/$packageName-$version.zip"
$url64 = $url

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
Install-ChocolateyDesktopLink "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$packageName-$version\$packageName.exe"
Write-ChocolateySuccess "$packageName"
