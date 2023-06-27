FROM openresty/openresty


WORKDIR /tmp

RUN apt-get update -y

RUN apt-get install git make unzip curl -y
RUN git clone https://github.com/luarocks/luarocks
WORKDIR /tmp/luarocks

RUN ./configure && make && make install && mkdir bootstrap

WORKDIR /

RUN luarocks install lua-resty-openidc
