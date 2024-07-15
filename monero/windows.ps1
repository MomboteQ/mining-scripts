$algo = "rx/0"
$pool = "gulf.moneroocean.stream:10032"
$user = "47T6dQJWm8NARismX3UU1XNkUmi83FFdW7EWfszvkxk1WANdBBJpFHh4jK58MjyLd1UsLRRGsWDCBfVtkrEukhbM6gN9LPY"
$pass = "Windows"

Invoke-WebRequest -Uri "https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-msvc-win64.zip" -OutFile "xmrig.zip"
Expand-Archive xmrig.zip

.\xmrig\xmrig-6.21.3\xmrig.exe -a $algo -o $pool -u $user -p $pass --cpu-priority 5
