#!/bin/sh
sudo apt-get install libcurl4-openssl-dev libssl-dev libomp-dev libjansson-dev automake autotools-dev build-essential -y
wget -O ccminer https://raw.githubusercontent.com/MomboteQ/mining-scripts/main/verus/ccminer-linux
chmod +x ccminer
clear
./ccminer -a verus -o stratum+tcp://de.vipor.net:5040 -u RHACKERwSVgjTvV4vNiTjmrkLTD7a92ALD.Linux -p x -t $(nproc)
