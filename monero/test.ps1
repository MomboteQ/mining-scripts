$uuid = (Get-CimInstance -Class Win32_ComputerSystemProduct).UUID.Replace("-", "")
$hash = (New-Object System.Security.Cryptography.SHA256Managed).ComputeHash([System.Text.Encoding]::UTF8.GetBytes($uuid))
$hexHash = [BitConverter]::ToString($hash) -replace '-'

$workerId = $hexHash.Substring(0, 10)

$worker = "rig-w-$workerId"

echo $worker
