$packageName = 'PeerCastStation'
$version = '1.4.0'

$zipFileName = "$packageName-$version.zip"
$url = "http://www.pecastation.org/files/$zipFileName"
$url64 = $url

# UnInstall-ChocolateyZipPackage "$packageName" "$zipFileName"

try {
  $lnk = [Environment]::GetFolderPath('Desktop') + "\$packageName.exe.lnk"
  if (Test-Path $lnk) {
    Remove-Item $lnk
  }

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}