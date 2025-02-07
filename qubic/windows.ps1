$threads = (Get-CimInstance -ClassName Win32_Processor).NumberOfLogicalProcessors

Invoke-WebRequest -Uri "https://github.com/apool-io/apoolminer/releases/download/v2.8.2/apoolminer_win_autoupdate_v2.8.2.zip" -OutFile "apool.zip"
Expand-Archive apool.zip

.\apool\apoolminer_win_autoupdate_v2.8.2\apoolminer_win_autoupdate_v2.8.2\apoolminer.exe --algo qubic --account CP_0a38x1rh9e --pool qubic1.hk.apool.io:3334 --mode 1 -t $threads
