$threads = (Get-CimInstance -ClassName Win32_Processor).NumberOfLogicalProcessors
$wallet = "TMTKFLCERQTXMDWNEJZGBCQDJARCSKKWSJTKFBOZTBOZXRHXFQMZLQMAELSB"

Invoke-WebRequest -Uri "https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v0.3.15/rqiner-x86.exe" -OutFile "rqiner.exe"

rqiner.exe -i $wallet -t $threads
