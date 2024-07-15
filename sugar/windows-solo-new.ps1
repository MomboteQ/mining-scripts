$algorithm = "yespowersugar"
$server = "stratum+tcp://yespowerSUGAR.mine.zergpool.com:6535"
$user = "sugar1qnw8fvx7qa67v78qwpwp6yerk67quv7k6vhm9us"
$password = "c=SUGAR,mc=SUGAR,m=solo,ID=Windows"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile('https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/xmrig.zip', 'cpuminer.zip')

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory('cpuminer.zip', 'cpuminer')

.\cpuminer\Cpuminer-opt-cpu-pool-win64\cpuminer.exe -a $algorithm -o $server -u $user -p $password
