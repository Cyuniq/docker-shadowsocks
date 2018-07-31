FROM library/debian
RUN apt-get update \
    && apt-get install python-pip -y \
    && apt-get install git -y\
    && pip install shadowsocks \
    && mkdir /root/shadowsocks \
    && cd /root/shadowsocks \
COPY ss.json /root/shadowsocks 
RUN apt-get remove git -y\
    && apt-get purge -y --auto-remove $buildDeps
