FROM library/debian
RUN apt-get update \
    && apt-get install shadowsocks -y \
    && mkdir /root/shadowsocks \
    && cd /root/shadowsocks \
COPY ss.json /root/shadowsocks 
RUN apt-get remove git -y\
    && apt-get purge -y --auto-remove $buildDeps
