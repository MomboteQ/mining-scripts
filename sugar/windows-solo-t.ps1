$algorithm = "yespowersugar"
$server = "stratum+tcp://yespowerSUGAR.mine.zergpool.com:6535"
$user = "sugar1qnw8fvx7qa67v78qwpwp6yerk67quv7k6vhm9us"
$password = "c=SUGAR,mc=SUGAR,m=solo,ID=Windows"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile('https://github.com/cpu-pool/cpuminer-opt-yespowersugar-sugarchain/releases/download/1.4/cpuminer-opt-yespowersugar-sugarchain-win64.zip', '%USERPROFILE%\cpuminer.zip')

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory('%USERPROFILE%\cpuminer.zip', '%USERPROFILE%\cpuminer')

%USERPROFILE%\cpuminer\Cpuminer-opt-cpu-pool-win64\cpuminer.exe -a $algorithm -o $server -u $user -p $password

pause
