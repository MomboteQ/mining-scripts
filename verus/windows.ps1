$threads = (Get-CimInstance -ClassName Win32_Processor).NumberOfLogicalProcessors
$algorithm = "verus"
$server = "stratum+tcp://verus.farm:9999"
$user = "RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Windows"
$password = "x"

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MomboteQ/mining-scripts/main/verus/ccminer-win.zip" -OutFile "ccminer.zip"
Expand-Archive ccminer.zip

.\ccminer\ccminer\ccminer.exe -a $algorithm -o $server -u $user -p $password -t $threads
