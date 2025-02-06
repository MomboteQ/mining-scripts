#!/bin/sh
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v1.1.3/rqiner-x86-znver2
chmod +x rqiner-x86-znver2
./rqiner-x86-znver2 -i TMTKFLCERQTXMDWNEJZGBCQDJARCSKKWSJTKFBOZTBOZXRHXFQMZLQMAELSB -t $(nproc)
