$algorithm = "yespowersugar"
$server = "stratum+tcp://yespowerSUGAR.mine.zergpool.com:6535"
$user = "sugar1qnw8fvx7qa67v78qwpwp6yerk67quv7k6vhm9us"
$password = "c=SUGAR,mc=SUGAR,ID=Windows"

Invoke-WebRequest -Uri "https://github.com/cpu-pool/cpuminer-opt-yespowersugar-sugarchain/releases/download/1.4/cpuminer-opt-yespowersugar-sugarchain-win64.zip" -OutFile "cpuminer.zip"
Expand-Archive cpuminer.zip

.\cpuminer\Cpuminer-opt-cpu-pool-win64\cpuminer.exe -a $algorithm -o $server -u $user -p $password
