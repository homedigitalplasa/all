# For CCMiner

docker build -t verusccminer .
docker run --cpus=8 --name verusccminer verusccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RXkULFoLMv2fgHq8UduNvzHfUf7z7RBYyD.buldozer1 -p hybrid -t15

# For Hellminer

docker build -t verushellminer .
docker run --cpus=8 --name verushellminer verushellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RXkULFoLMv2fgHq8UduNvzHfUf7z7RBYyD.buldozer2 -p hybrid --cpu 15
