$algo = "randomepic"
$pool = "stratum+tcp://51pool.online:4416"
$user = "momboteq#windows"
$pass = "x"

Invoke-WebRequest -Uri "https://github.com/doktor83/SRBMiner-Multi/releases/download/2.5.9/SRBMiner-Multi-2-5-9-win64.zip" -OutFile "srbminer.zip"
Expand-Archive srbminer.zip

.\srbminer\SRBMiner-Multi-2-5-9\SRBMiner-MULTI.exe -a $algo -o $pool -u $user -p $pass